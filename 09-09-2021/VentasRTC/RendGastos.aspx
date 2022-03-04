<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="RendGastos.aspx.cs" Inherits="biotech.VentasRTC.RendGastos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>


    <link rel="stylesheet" href="http://localhost:3095/code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    Rendición de Gastos:

<asp:Label ID="lblperidodescrip" runat="server"></asp:Label>

    &nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table class="auto-style1">
         <tr>
             <td>&nbsp;&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">RENDICIONES REALIZADAS</asp:LinkButton></td>
             <td>&nbsp;</td>
             <td>
                 Base Viatico:
                 <asp:Label ID="lblbaseviatico" runat="server"></asp:Label>
&nbsp;,&nbsp; Gasto Actual:
                 <asp:Label ID="lblgastototal" runat="server"></asp:Label>
&nbsp;,&nbsp;&nbsp; Diferencia:
                 <asp:Label ID="lblviaticodisponible" runat="server"></asp:Label>
             </td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td>&nbsp;</td>
             <td>
                 <asp:Panel ID="Panel2" runat="server" Visible="False">
                     idunidad:
                     <asp:Label ID="lblidUnidadEquipo" runat="server"></asp:Label>
                     &nbsp; idcargo
                     <asp:Label ID="lblidCargoCC" runat="server"></asp:Label>
                 </asp:Panel>
             </td>
         </tr>
     </table>
     
     <asp:Label ID="lblcodVendedor" runat="server" Visible="False"></asp:Label>
    <br />

    <asp:Panel ID="Panelnuevo" runat="server">
<span class="title_section_offer">Registrar periodo:</span>
&nbsp;&nbsp;
   

    &nbsp;   <asp:Label ID="lblidreg" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblmaxid" runat="server" Visible="False"></asp:Label>
    &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">


        <div class="control-group">
    <label class="control-label" for="AreaTrabajo" >Indicar periodo:</label>
    <div class="controls">
        <asp:DropDownList ID="ddlbperiodo" runat="server" DataSourceID="SqlDataSource6" DataTextField="mes" DataValueField="idmes" OnSelectedIndexChanged="ddlbperiodo_SelectedIndexChanged">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_mes]"></asp:SqlDataSource>
    

        <asp:Button ID="Button6" runat="server" class="btn" Text="Registrar" OnClick="Button6_Click" ></asp:Button>
    

            </div>
</div><!-- / .control-group -->

        <!-- / .control-group -->
        </div>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel1" runat="server">
  <span class="title_section_offer">Liquidación de gastos</span>
&nbsp;&nbsp;
   

    &nbsp;   
        
        <asp:Label ID="lblmensaje" runat="server"></asp:Label>
     <asp:Label ID="lblidregdetalle" runat="server" Visible="False"></asp:Label>
    &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset1">
            <center>                  
<div class="control-group" >
    


    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" OnRowDataBound="GridView6_RowDataBound" ShowFooter="True" Width="500px" GridLines="Horizontal">
        <Columns>
            <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" Visible="False" />
            <asp:BoundField DataField="DESCAT" HeaderText="Para cubrir gastos de:" ReadOnly="True" SortExpression="DESCAT">
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rgSumRendGastos" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblidreg" Name="idrendicion" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    


</div></center>  
</div><!-- / .control-group -->

 





        </div>
        </div>

    <span class="title_section_offer">A. GASTOS MOVILIDAD (peaje, estacionamientos):</span>
&nbsp;&nbsp;
        
        <div class="title_section_offer_fake">
        </div>
        &nbsp;
        <asp:TextBox ID="txtfecha1" runat="server"  placeholder="Fecha Reg." TextMode="Date" Width="125px" ></asp:TextBox>
        <asp:TextBox ID="txtruc1" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="120px" ></asp:TextBox>
        <asp:DropDownList ID="ddlMotivoGMovilidad" runat="server" DataSourceID="SqlDataSourcecat1" DataTextField="titulo" DataValueField="idccdet" Width="300px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourcecat1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="33" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:TextBox ID="txtdescripcion1" runat="server" class="span2" placeholder="Origen - Destino"></asp:TextBox>
        <br />
         <asp:DropDownList ID="ddltpcomprobante1" runat="server" DataSourceID="SqlDataSource10" DataTextField="DESCRIPCION" DataValueField="ID" Width="250px">
        </asp:DropDownList>
        <asp:TextBox ID="txtcomprobante1" runat="server" class="span2" placeholder="Nro. comprobante"></asp:TextBox>
        <asp:TextBox ID="txtimporte1" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="80px"></asp:TextBox>
       
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        &nbsp;
        <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="Registrar" />
        <br />
        &nbsp; <span class="required">
        <asp:Label ID="lblmensaje1" runat="server"></asp:Label>
        </span>
         Detalle de gastos de peaje:
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" ShowFooter="True" Width="100%">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                <HeaderStyle Width="20px" />
                </asp:CommandField>
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
                <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA">
                <HeaderStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="DESCRIPCION" HeaderText="ORIGEN/DESTINO" SortExpression="DESCRIPCION">
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MOTIVO" HeaderText="DESCRIPCION" SortExpression="MOTIVO">
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                 <asp:BoundField DataField="COMPB" HeaderText="" SortExpression="COMPB" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB" SortExpression="COMPROBANTE">
                <HeaderStyle Width="100px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
               
                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                
                <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO">
                <HeaderStyle Width="10px" />
                </asp:CheckBoxField>
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" />
        </asp:GridView>

    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
            <asp:Parameter DefaultValue="1" Name="idcategoria" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
    <br />
    

       


    <span class="title_section_offer">B. GASTOS COMBUSTIBLE:  <asp:Label ID="lblnumplaca1" runat="server"></asp:Label>&nbsp;/
        <asp:Label ID="lblkmanterior" runat="server"></asp:Label>
        Km</span>&nbsp;<span class="required"><asp:Label ID="lblmensaje2" runat="server"></asp:Label>
        </span>
        &nbsp;<div class="title_section_offer_fake">   </div>
            <asp:TextBox ID="txtfecha2" runat="server" placeholder="Fecha Reg." TextMode="Date" Width="125px"></asp:TextBox>
     
       
                <asp:TextBox ID="txtruc2" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>
                <asp:DropDownList ID="ddlcombustible2" runat="server" DataSourceID="SqlDataSourcetpgasolina" DataTextField="combustible" DataValueField="id" Width="200px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourcetpgasolina" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_tpgasolianaviaticos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                <asp:TextBox ID="txtkilometrosfact2" runat="server" placeholder="Kms Fact." step="0.001" type="number" Width="90px"></asp:TextBox>
                <asp:TextBox ID="txtgalonesfact2" runat="server" placeholder="Galones Fact" step="0.01" type="number" Width="90px"></asp:TextBox>
                <asp:DropDownList ID="ddlbtppago" runat="server" Width="100px">
                    <asp:ListItem Selected="True" Value="CRED">Credito</asp:ListItem>
                    <asp:ListItem Value="CONT">Contado</asp:ListItem>
                </asp:DropDownList>
        <br />
                <asp:DropDownList ID="ddltpcomprobante2" runat="server" DataSourceID="SqlDataSource10" DataTextField="DESCRIPCION" DataValueField="ID" Width="250px">
                </asp:DropDownList>
                <asp:TextBox ID="txtcomprobante2" runat="server" placeholder="Nro. comprobante" Width="120px"></asp:TextBox>
        <asp:TextBox ID="txtimporte2" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="80px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button2" runat="server"  OnClick="Button2_Click" Text="Registrar" Height="30px" />


        <br />
        <br />
                Detalle de gastos de combustible:<br />
        <!-- / .control-group -->
        
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" Width="100%" ShowFooter="True" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" GridLines="Horizontal">
                <Columns>
                   <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                <HeaderStyle Width="20px" />
                </asp:CommandField>
                   <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
                    <asp:BoundField DataField="MOTIVO" HeaderText="COND." SortExpression="MOTIVO" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="60px" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    
                    <asp:BoundField DataField="KMFACT" HeaderText="Kms FACT" SortExpression="KMFACT" />
                    <asp:BoundField DataField="GALONESFACT" HeaderText="GALONES FACT" SortExpression="GALONESFACT" />
                     <asp:BoundField DataField="COMPB" HeaderText="" SortExpression="COMPB" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB" SortExpression="COMPROBANTE">
                <HeaderStyle Width="100px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
               
                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                    <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                    <HeaderStyle Width="20px" />
                    </asp:CheckBoxField>
                </Columns>
                <HeaderStyle BackColor="#CCCCCC" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                    <asp:Parameter DefaultValue="2" Name="idcategoria" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
     

         <span class="title_section_offer">C. GASTOS ALIMENTACIÓN:</span>
         <span class="required">
        <asp:Label ID="lblmensaje4" runat="server"></asp:Label>
        </span>&nbsp;<div class="title_section_offer_fake">
        </div>
        <%--<div class="row">
            <div class="offset1">--%>
                <asp:TextBox ID="txtfecha4" runat="server" Width="125px" placeholder="Fecha Reg." TextMode="Date"></asp:TextBox>
                <asp:TextBox ID="txtruc4" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>


          <asp:DropDownList ID="ddlMotivoAlimento" runat="server" DataSourceID="SqlDataSourceAlimento" DataTextField="titulo" DataValueField="idccdet" Width="300px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceAlimento" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="32" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:TextBox ID="txtdescripcion4" runat="server" class="span4" placeholder="Detalle"></asp:TextBox>
        <br />       
         <asp:DropDownList ID="ddltpcomprobante4" runat="server" DataSourceID="SqlDataSource10" DataTextField="DESCRIPCION" DataValueField="ID" Width="250px">
                </asp:DropDownList>
                <asp:TextBox ID="txtcomprobante4" runat="server" class="span2" placeholder="Nro. comprobante"></asp:TextBox>
        <asp:TextBox ID="txtimporte4" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="80px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button4" runat="server"  OnClick="Button4_Click" Text="Registrar" Height="30px" />

                <br />
                <br />
                Detalle de gastos de alimento:<br />
                <div class="control-group">
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource4" Width="100%" ShowFooter="True" OnRowDataBound="GridView4_RowDataBound" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" GridLines="Horizontal">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="20px" />
                            </asp:CommandField>
                           <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="MOTIVO" SortExpression="DESCRIPCION" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                             <asp:BoundField DataField="COMPB" HeaderText="" SortExpression="COMPB" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB" SortExpression="COMPROBANTE">
                <HeaderStyle Width="100px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
               
                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                            <HeaderStyle Width="20px" />
                            </asp:CheckBoxField>
                        </Columns>
                        <HeaderStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                            <asp:Parameter DefaultValue="4" Name="idcategoria" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </div>
                <!-- / .control-group -->
           <%-- </div>
        </div>--%>
         <br />
         <span class="title_section_offer">D. GASTOS REPRESENTACIÓN:</span>
         <span class="required">
        <asp:Label ID="lblmensaje6" runat="server"></asp:Label>
        </span>&nbsp;<div class="title_section_offer_fake">
        </div>
       <%-- <div class="row">
         <div class="offset1">--%>
                                
             &nbsp;<asp:TextBox ID="txtfecha6" runat="server" Width="125px" placeholder="Fecha Reg." TextMode="Date"></asp:TextBox>
             <asp:TextBox ID="txtruc6" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>
        <asp:DropDownList ID="ddlMotivogRepresentacion" runat="server" DataSourceID="SqlDataSourceGastosRepresentacion" DataTextField="titulo" DataValueField="idccdet" Width="300px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceGastosRepresentacion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="15" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:TextBox ID="txtdescripcion6" runat="server" class="span4" placeholder="Detalle"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtBuscar" placeholder="Cliente a buscar..." CssClass="form-control" runat="server" Width="550px"></asp:TextBox>
        
             <asp:TextBox ID="txtrucCliente6" runat="server" class="span4" placeholder="Cliente RUC" Width="200px" ></asp:TextBox>
        <br />   
          <asp:DropDownList ID="ddltpcomprobante6" runat="server" DataSourceID="SqlDataSource10" DataTextField="DESCRIPCION" DataValueField="ID" Width="300px">
             </asp:DropDownList>
        <asp:TextBox ID="txtcomprobante6" runat="server" class="span2" placeholder="Nro. comprobante" Width="250px"></asp:TextBox>
        <asp:TextBox ID="txtimporte6" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="80px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button8" runat="server" Text="Registrar" OnClick="Button8_Click" Height="30px"></asp:Button>
        <br />
                <br />
                Detalle de gastos de alimento:<br />

                <div class="control-group">
                    <asp:GridView ID="GridView66" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource66" OnRowDataBound="GridView66_RowDataBound" OnSelectedIndexChanged="GridView66_SelectedIndexChanged" ShowFooter="True" Width="100%" GridLines="Horizontal">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="20px" />
                            </asp:CommandField>
                          <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="MOTIVO/DESCRIPCION" SortExpression="DESCRIPCION">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" Font-Size="X-Small" />
                            </asp:BoundField>
                             <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                             <asp:BoundField DataField="COMPB" HeaderText="" SortExpression="COMPB" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB" SortExpression="COMPROBANTE">
                <HeaderStyle Width="100px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
               
                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                            <HeaderStyle Width="20px" />
                            </asp:CheckBoxField>
                        </Columns>
                        <HeaderStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource66" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                            <asp:Parameter DefaultValue="6" Name="idcategoria" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            <%-- </div>
        </div>--%>
        <asp:Panel ID="ppasajes" runat="server" Visible="False">
         <br />
         <span class="title_section_offer">5. GASTOS PASAJES:</span>
         <span class="required">
        <asp:Label ID="lblmensaje7" runat="server"></asp:Label>
        </span>&nbsp;<div class="title_section_offer_fake">
        </div>
       <%-- <div class="row">
           <div class="offset1">--%>
                <asp:TextBox ID="txtfecha7" runat="server"  placeholder="Fecha Reg." TextMode="Date" Width="125px" ></asp:TextBox>
                <asp:TextBox ID="txtruc7" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>
                <asp:TextBox ID="txtdescripcion7" runat="server" class="span2" placeholder="Destino" ></asp:TextBox>
                <asp:TextBox ID="txtmotivo7" runat="server" class="span2" placeholder="Motivo" Width="180px" Visible="False" ></asp:TextBox>
                <asp:DropDownList ID="ddltpcomprobante7" runat="server" DataSourceID="SqlDataSource10" DataTextField="DESCRIPCION" DataValueField="ID" Width="250px">
                </asp:DropDownList>
                <asp:TextBox ID="txtcomprobante7" runat="server" class="span2" placeholder="Nro. comprobante"></asp:TextBox>
        <asp:TextBox ID="txtimporte7" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="80px"></asp:TextBox>
                &nbsp;
                    <asp:Button ID="Button7" runat="server"  Text="Registrar" OnClick="Button7_Click" Height="30px"></asp:Button>



                <br />
                <br />
                Detalle de gastos de peaje:<br />


                <div class="control-group">

                    <asp:GridView ID="GridView77" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource77" OnRowDataBound="GridView77_RowDataBound" OnSelectedIndexChanged="GridView77_SelectedIndexChanged" ShowFooter="True" Width="100%" GridLines="Horizontal">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="20px" />
                            </asp:CommandField>
                           <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                             <asp:BoundField DataField="COMPB" HeaderText="" SortExpression="COMPB" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB" SortExpression="COMPROBANTE">
                <HeaderStyle Width="100px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
               
                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                            <HeaderStyle Width="20px" />
                            </asp:CheckBoxField>
                        </Columns>
                        <HeaderStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource77" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                            <asp:Parameter DefaultValue="7" Name="idcategoria" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                 </div></asp:Panel>
       <%-- </div>
        </div>--%>
        <asp:Panel ID="palojamiento" runat="server" Visible="False">

               <br />
         <span class="title_section_offer">6. GASTOS ALOJAMIENTO:</span>
         <span class="required">
        <asp:Label ID="lblmensaje3" runat="server"></asp:Label>
        </span>&nbsp;<div class="title_section_offer_fake">
        </div>
        <%--<div class="row">
            <div class="offset1">--%>
                &nbsp;<asp:TextBox ID="txtfecha3" runat="server" Width="125px" placeholder="Fecha Reg." TextMode="Date"></asp:TextBox>
                <asp:TextBox ID="txtruc3" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>
                <asp:TextBox ID="txtdescripcion3" runat="server" class="span4" placeholder="Motivo y descripción"></asp:TextBox>
                <asp:DropDownList ID="ddltpcomprobante3" runat="server" DataSourceID="SqlDataSource10" DataTextField="DESCRIPCION" DataValueField="ID">
                </asp:DropDownList>
                <asp:TextBox ID="txtcomprobante3" runat="server" class="span2" placeholder="Nro. comprobante"></asp:TextBox>
        <asp:TextBox ID="txtimporte3" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="80px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button3" runat="server"  OnClick="Button3_Click" Text="Registrar" Height="30px" />
                <br />
                <br />
                Detalle de gastos de alojamiento:<br />
                <div class="control-group">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="100%" ShowFooter="True" OnRowDataBound="GridView3_RowDataBound" GridLines="Horizontal">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="20px" />
                            </asp:CommandField>
                             <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="MOTIVO/DESCRIPCION" SortExpression="DESCRIPCION" />
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                              <asp:BoundField DataField="COMPB" HeaderText="" SortExpression="COMPB" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB" SortExpression="COMPROBANTE">
                <HeaderStyle Width="100px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
               
                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                            <HeaderStyle Width="20px" />
                            </asp:CheckBoxField>
                        </Columns>
                        <HeaderStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                            <asp:Parameter DefaultValue="3" Name="idcategoria" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                </div>
                <!-- / .control-group -->
         <%--   </div>
        </div>--%>
        </asp:Panel>
      

             
       
      




        <br />
               
        <span class="title_section_offer">E. GASTOS POR VIAJES :(Pasajes,alojamiento,alimentación)</span> &nbsp;&nbsp; &nbsp;   <span class="required">
        <asp:Label ID="lblmensaje8" runat="server"></asp:Label>
        </span>&nbsp;<div class="title_section_offer_fake"></div>


   <%-- <div class="row">
    <div class="offset1">--%>
                                
        &nbsp;<asp:TextBox ID="txtfecha8" runat="server" Width="125px" placeholder="Fecha Reg." TextMode="Date"></asp:TextBox>
        <asp:TextBox ID="txtruc8" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>
        <asp:DropDownList ID="ddlMotivoViaje" runat="server" DataSourceID="SqlDataSourceGastosViajes" DataTextField="titulo" DataValueField="idccdet" Width="300px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceGastosViajes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="34" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:TextBox ID="txtdescripcion8" runat="server" class="span4" placeholder="Detalle" Width="400px"></asp:TextBox>
        <asp:TextBox ID="txtorigenDestino12" runat="server" class="span4" placeholder="Destino" Width="200px"></asp:TextBox>
        <asp:TextBox ID="txtorigenDestinolugar" runat="server" class="span4" placeholder="Lugar" Width="200px" Visible="False"></asp:TextBox>
        <asp:TextBox ID="txtorigenDestinoCliente" runat="server" class="span4" placeholder="Cliente" Width="200px" Visible="False"></asp:TextBox>
       <br />
         <asp:DropDownList ID="ddltpcomprobante8" runat="server" DataSourceID="SqlDataSource10" DataTextField="DESCRIPCION" DataValueField="ID" Width="250px">
        </asp:DropDownList>
        <asp:TextBox ID="txtcomprobante8" runat="server" class="span2" placeholder="Nro. comprobante"></asp:TextBox>
        <asp:TextBox ID="txtimporte8" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="80px"></asp:TextBox>
&nbsp;
        <asp:Button ID="btviajes" runat="server" Text="Registrar" OnClick="btviajes_Click" Height="30px"></asp:Button>
        <br />
                <br />
                Detalle de gastos por viaje:<br />

<div class="control-group">
    
    <asp:GridView ID="GridView19" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource8" DataKeyNames="COD" ShowFooter="True" Width="100%" OnRowDataBound="GridView19_RowDataBound" OnSelectedIndexChanged="GridView19_SelectedIndexChanged" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
            <ControlStyle Height="20px" Width="20px" />
            <HeaderStyle Width="20px" />
            </asp:CommandField>
              <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="MOTIVO" HeaderText="DETALLE" SortExpression="MOTIVO" >
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="DESCRIPCION" SortExpression="DESCRIPCION" >
            <HeaderStyle Width="200px" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            
            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
             <asp:BoundField DataField="COMPB" HeaderText="" SortExpression="COMPB" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB" SortExpression="COMPROBANTE">
                <HeaderStyle Width="100px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
               
                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
            <HeaderStyle Width="20px" />
            <ItemStyle Width="20px" />
            </asp:CheckBoxField>
        </Columns>
        <HeaderStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
            <asp:Parameter DefaultValue="19" Name="idcategoria" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</div><!-- / .control-group -->
       <%-- </div>
        </div>--%>

          <span class="title_section_offer">F. GASTOS UNIDAD VEHICULAR: <asp:Label ID="lblnumplaca2" runat="server"></asp:Label> (Lavado,compra y otros)</span> &nbsp;&nbsp; &nbsp;&nbsp;<span class="required"><asp:Label ID="lblmensaje9" runat="server"></asp:Label>
        </span>
        <asp:Label ID="lblIdCCcatunidad" runat="server" Text="10" Visible="False"></asp:Label>
        &nbsp;<div class="title_section_offer_fake"></div>


    <%--<div class="row">
    <div class="offset1">--%>
                                
        &nbsp;<asp:TextBox ID="txtfecha9" runat="server" Width="125px" placeholder="Fecha Reg." TextMode="Date"></asp:TextBox>
        <asp:TextBox ID="txtruc9" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>
        <asp:DropDownList ID="ddlMotivounidadVehicular" runat="server" DataSourceID="SqlDataSourceGastosUnidadVehicular" DataTextField="titulo" DataValueField="idccdet" Width="300px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceGastosUnidadVehicular" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="10" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:TextBox ID="txtdescripcion9" runat="server" class="span3" placeholder="Detalle" Width="400px" Visible="False"></asp:TextBox>
       <br />
         <asp:DropDownList ID="ddltpcomprobante9" runat="server" DataSourceID="SqlDataSource10" DataTextField="DESCRIPCION" DataValueField="ID" Width="250px">
        </asp:DropDownList>
        <asp:TextBox ID="txtcomprobante9" runat="server" class="span2" placeholder="Nro. comprobante"></asp:TextBox>
        <asp:TextBox ID="txtimporte9" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="80px"></asp:TextBox>
&nbsp;
        <asp:Button ID="btUnidadVehicular" runat="server" Text="Registrar" OnClick="btUnidadVehicular_Click" Height="30px"></asp:Button>
        <br />
                <br />
                Detalle de gastos unidad vehicular:<br />

<div class="control-group">
    
    <asp:GridView ID="GridView20" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource9" DataKeyNames="COD" ShowFooter="True" Width="100%" OnRowDataBound="GridView20_RowDataBound" OnSelectedIndexChanged="GridView20_SelectedIndexChanged" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
            <ControlStyle Height="20px" Width="20px" />
            <HeaderStyle Width="20px" />
            </asp:CommandField>
             <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" >
            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Top" Width="150px" />
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
              <asp:BoundField DataField="COMPB" HeaderText="" SortExpression="COMPB" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB" SortExpression="COMPROBANTE">
                <HeaderStyle Width="100px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
               
                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
            <HeaderStyle Width="20px" />
            <ItemStyle Width="20px" />
            </asp:CheckBoxField>
        </Columns>
        <HeaderStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
            <asp:Parameter DefaultValue="20" Name="idcategoria" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</div><!-- / .control-group -->
       <%-- </div>
        </div>--%>

        <br />
          <span class="title_section_offer">G. OTROS GASTOS:</span> &nbsp;&nbsp; &nbsp;   <span class="required">
        <asp:Label ID="lblmensaje5" runat="server"></asp:Label>
        </span>&nbsp;<div class="title_section_offer_fake"></div>


  <%--  <div class="row">
    <div class="offset1">--%>
                                
        &nbsp;<asp:TextBox ID="txtfecha5" runat="server" Width="125px" placeholder="Fecha Reg." TextMode="Date"></asp:TextBox>
        <asp:TextBox ID="txtruc5" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>


         <asp:DropDownList ID="ddlOtrosGastos" runat="server" DataSourceID="SqlDataSourceOtrosGastos" DataTextField="titulo" DataValueField="idccdet" Width="500px">
        </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSourceOtrosGastos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="36" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        

     
      
        <asp:TextBox ID="txtdescripcion5" runat="server" class="span4" placeholder="Detalle" Width="400px" Visible="False"></asp:TextBox>
       <br />
        
         <asp:DropDownList ID="ddltpcomprobante5" runat="server" DataSourceID="SqlDataSource10" DataTextField="DESCRIPCION" DataValueField="ID" Width="250px">
        </asp:DropDownList>
        <asp:TextBox ID="txtcomprobante5" runat="server" class="span2" placeholder="Nro. comprobante"></asp:TextBox>
        <asp:TextBox ID="txtimporte5" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="80px"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Registrar" OnClick="Button5_Click" Height="30px"></asp:Button>
        <br />
                <br />
                Detalle de gastos de alimento:<br />

<div class="control-group">
    
    <asp:GridView ID="GridView5" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource5" DataKeyNames="COD" ShowFooter="True" Width="100%" OnRowDataBound="GridView5_RowDataBound" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
            <ControlStyle Height="20px" Width="20px" />
            <HeaderStyle Width="20px" />
            </asp:CommandField>
             <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" >
                <HeaderStyle Width="60px" />
                <ItemStyle ForeColor="#666666" />
                </asp:BoundField>
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="DESCRIPCION" HeaderText="DETALLE" SortExpression="DESCRIPCION" >
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
              <asp:BoundField DataField="COMPB" HeaderText="" SortExpression="COMPB" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB" SortExpression="COMPROBANTE">
                <HeaderStyle Width="100px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
               
                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
            <HeaderStyle Width="20px" />
            <ItemStyle Width="20px" />
            </asp:CheckBoxField>
        </Columns>
        <HeaderStyle BackColor="#CCCCCC" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
            <asp:Parameter DefaultValue="5" Name="idcategoria" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</div><!-- / .control-group -->
      <%--  </div>
        </div>--%>




    </asp:Panel>


    
    <script type="text/javascript">
        $("#<%=txtBuscar.ClientID%>").autocomplete({
            source: function (request, response) {
                /*Aquí se configura el origen de datos*/
                $.ajax({
                    type: 'POST',
                    url: "../VentasRTC/RendGastos.aspx/BuscarLugar",
                    data: "{textoBuscar: '" + request.term + "'}",
                    dataType: "json",
                    contentType: 'application/json',
                    async: false,
                    success: function (result) {
                        response($.parseJSON(result.d));
                    }
                });
            },
            search: function () {
                /*Este evento sucede mientras se escribe algo en el TextBox*/
                // Condicionar a menos 3 
                // caracteres en la búsqueda
                var term = this.value;
                if (term.length < 3) {
                    return false;
                }
            },
            focus: function () {
                /*Este evento sucede cuando el TextBox obtiene el foco*/
                // Evitar que el valor se inserte cuando 
                // el TextBox obtenga el foco
                return false;
            },
            select: function (event, ui) {
                /*Este evento sucede cuando se selecciona uno de los resultados*/
                // Asignar el valor al TextBox
                this.value = ui.item.value;
                // Mostrar el ID
                $("#<%=txtrucCliente6.ClientID%>").val(ui.item.id);
                return false;
            }
        });
    </script>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        Usuario,

    <asp:LinkButton ID="LinkButtonusuario" runat="server" OnClick="LinkButtonusuario_Click"></asp:LinkButton>
</p>
</asp:Content>
