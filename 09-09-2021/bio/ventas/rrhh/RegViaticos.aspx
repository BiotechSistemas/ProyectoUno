<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="RegViaticos.aspx.cs" Inherits="biotech.bio.ventas.rrhh.RegViaticos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    

    <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><i class="fa fa-stack-overflow"></i> REND. DE GASTOS <small><asp:Label ID="lblcodusu10" runat="server"></asp:Label>
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>

                    <asp:Label ID="lblperidodescrip" runat="server"></asp:Label>
                        </small>
                    </h1>
                </div>
                <!-- /.col-lg-12 -->
    </div>
            <!-- /.row -->
     <div class="row">
        <ol class="breadcrumb">
            <li ><asp:LinkButton ID="lbViatPrincipal" runat="server" PostBackUrl="~/bio/ventas/rrhh/RegViaticosRegistrados.aspx">viáticos registrados</asp:LinkButton></li>
  <li ><asp:LinkButton ID="lbViatRegistrar" runat="server" PostBackUrl="~/bio/ventas/rrhh/RegViaticos.aspx">Registrar viáticos</asp:LinkButton></li>
            <li ><asp:LinkButton ID="lbViatProveedores" runat="server" PostBackUrl="~/bio/ventas/rrhh/RegViaticosProveedores.aspx">Proveedores Viáticos</asp:LinkButton></li>
  
</ol>
        </div>
        <asp:Panel ID="Panel1" runat="server" Wrap="True" Visible="False">

  <asp:Label ID="lblidregdetalle" runat="server"></asp:Label>
                    <asp:Label ID="lblidreg" runat="server"></asp:Label>
                    <asp:Label ID="lblcodVendedor" runat="server"></asp:Label>
                    <asp:Label ID="lblmaxid" runat="server" Visible="False"></asp:Label>

                    <asp:LinkButton ID="LinkButtonUsuario" runat="server"></asp:LinkButton>
                    <br />
                    <asp:Label ID="lblmensaje" runat="server"></asp:Label>
                    &nbsp;ica cargo :<asp:Label ID="lblidCargoCC" runat="server"></asp:Label>
            <small>&nbsp; id unidad:<asp:Label ID="lblidUnidadEquipo" runat="server"></asp:Label>
            </small>
            <br />

        </asp:Panel>
                  

    </div>


    <asp:Panel ID="Panelprincipa1" runat="server">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="PERSONAL" DataValueField="CODTRAB" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatColumns="4" RepeatDirection="Horizontal" CellPadding="10" CellSpacing="10" Width="900px">
        </asp:RadioButtonList>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_trabEspecificos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblcodVendedor" Name="usu" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>



    <div class="row">

        <h3>

        <asp:Label ID="Label1" runat="server" CssClass="auto-style3"></asp:Label>

        </h3>

        <asp:GridView ID="gvResumen" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" OnRowDataBound="gvResumen_RowDataBound" ShowFooter="True" Width="500px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Dotted" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" Visible="False" />
                <asp:BoundField DataField="DESCAT" HeaderText="Para cubrir gastos de:" ReadOnly="True" SortExpression="DESCAT">
                <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <FooterStyle ForeColor="Black" BackColor="#F3F3F3" />
            <HeaderStyle Font-Bold="True" ForeColor="Black" BackColor="#CCCCCC" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
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
        Base Viatico:
        <asp:Label ID="lblbaseviatico" runat="server"></asp:Label>
        &nbsp;,&nbsp; Gasto Actual:
        <asp:Label ID="lblgastototal" runat="server"></asp:Label>
        &nbsp;,&nbsp;&nbsp; Diferencia:
        <asp:Label ID="lblviaticodisponible" runat="server"></asp:Label>
        <br />
    </div>



    <div class="row">
       <h4 class="text-success"> A. Movilidad: <small>(peaje,estacionamientos)</small></h4>
      
            <div class="row">
    <div class="col-md-2">
     <%-- <label for="inputEmail4">Email</label>--%>
     <asp:TextBox ID="txtfecha1" runat="server" CssClass="form-control" placeholder="Fecha Reg." TextMode="Date"></asp:TextBox>

    </div>
    <div class="col-md-2">
      
     <asp:TextBox ID="txtruc1" runat="server" class="form-control" MaxLength="15" placeholder="RUC PROVEEDOR" ToolTip="RUC de la empresa" type="number" ></asp:TextBox>
    </div>
            <div class="col-md-3">
                <asp:DropDownList ID="ddlMotivoGMovilidad" CssClass="form-control" runat="server" DataSourceID="SqlDataSourcecat1" DataTextField="titulo" DataValueField="idccdet" >
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourcecat1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="33" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                </div>
             <div class="col-md-2">
                  <asp:TextBox ID="txtdescripcion1" runat="server" class="form-control" placeholder="Origen - Destino" ></asp:TextBox>
                </div>
  </div>
      
         <div class="row">
             <div class="col-md-4">
                  <asp:DropDownList ID="ddltpcomprobante1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource12" DataTextField="DESCRIPCION" DataValueField="ID">
        </asp:DropDownList>
                 </div>
             <div class="col-md-3">
                 <asp:TextBox ID="txtcomprobante1" runat="server" class="form-control" placeholder="Nro. comprobante"></asp:TextBox>
                 </div>
             <div class="col-md-2">
                 <asp:TextBox ID="txtimporte1" runat="server" CssClass="form-control" placeholder="Importe" step="0.0001" type="number"></asp:TextBox>
                 </div>
               <div class="col-md-1">
                    <asp:Button ID="btmovilidad" CssClass="btn btn-success" runat="server"   Text="Registrar" OnClick="btmovilidad_Click" />
                 </div>
             </div>
       
        <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
          
            <asp:Label ID="lblmensajeMovilidad" CssClass="auto-style3" runat="server" ForeColor="#990000"></asp:Label>
           <small>
            
            Detalle de gastos de peaje:</small>
   <div class="control-group">
                <asp:GridView ID="gvMovilidad" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource8" OnRowDataBound="gvMovilidad_RowDataBound" OnSelectedIndexChanged="gvMovilidad_SelectedIndexChanged" ShowFooter="True" Width="100%" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Font-Size="X-Small">
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
                    <EmptyDataTemplate>
                        no registra de movilidad...
                    </EmptyDataTemplate>
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
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                        <asp:Parameter DefaultValue="1" Name="idcategoria" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
            <!-- / .control-group -->
     
   
        <h4 class="text-success">B. Combustible:<asp:Label ID="lblkilometrajeRecorrido" runat="server" Visible="False"></asp:Label>
        &nbsp;<span class="title_section_offer" __designer:mapid="1f2f"><asp:Label ID="lblnumplaca1" runat="server"></asp:Label>&nbsp;/
        <asp:Label ID="lblkmanterior" runat="server"></asp:Label>
        &nbsp;km</span></h4>

     

        <div class="row">
             <div class="col-md-2">
                 <asp:TextBox ID="txtfecha2" runat="server" placeholder="Fecha Reg." TextMode="Date" CssClass="form-control" ></asp:TextBox>
                 </div>
              <div class="col-md-2">
                  <asp:TextBox ID="txtruc2" runat="server" class="form-control" MaxLength="15" placeholder="RUC PROVEEDOR" ToolTip="RUC de la empresa" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:DropDownList ID="ddlcombustible2" CssClass="form-control" runat="server" DataSourceID="SqlDataSourcetpgasolina" DataTextField="combustible" DataValueField="id">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourcetpgasolina" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_tpgasolianaviaticos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
       
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtkilometrosfact2" CssClass="form-control" runat="server" placeholder="Kms Fact." step="0.001" type="number" ></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtgalonesfact2" CssClass="form-control" runat="server" placeholder="Galones Fact" step="0.01" type="number" ></asp:TextBox>
                 </div>
             <div class="col-md-2">
                  <asp:DropDownList ID="ddlbtppago" runat="server" class="form-control" >
            <asp:ListItem Selected="True" Value="CRED">Credito</asp:ListItem>
            <asp:ListItem Value="CONT">Contado</asp:ListItem>
        </asp:DropDownList>
                 </div>
         </div>
         <div class="row">
             <div class="col-md-4">
                   <asp:DropDownList ID="ddltpcomprobante2" runat="server" DataSourceID="SqlDataSource12" DataTextField="DESCRIPCION" DataValueField="ID" class="form-control">
                </asp:DropDownList>
                 </div>
              <div class="col-md-2">
                  <asp:TextBox ID="txtcomprobante2" runat="server" placeholder="N° comprob." class="form-control"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtimporte2" runat="server" class="form-control" placeholder="Importe" step="0.0001" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                  <asp:Button ID="btCombustible" CssClass="btn btn-success" runat="server"  OnClick="btCombustible_Click" Text="Registrar" />
                 </div>
         </div>

              
        
                   <asp:Label ID="lblmensajeCombustible" CssClass="auto-style3" runat="server" ForeColor="#990000"></asp:Label>
                  <small>
                   <br />
                   Detalle de gastos de combustible:</small><!-- / .control-group -->
        <div class="control-group">
            <asp:GridView ID="gvCombustible" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" Width="100%" ShowFooter="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvCombustible_RowDataBound" OnSelectedIndexChanged="gvCombustible_SelectedIndexChanged" Font-Size="X-Small">
                <Columns>
                     <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
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
                <EmptyDataTemplate>
                    no registra gasto de combustible...
                </EmptyDataTemplate>
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                    <asp:Parameter DefaultValue="2" Name="idcategoria" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>

    <div class="row">
        <h4 class="text-success">C. Alimentación:</h4>
                   <div class="row">
             <div class="col-md-2">
                 <asp:TextBox ID="txtfecha4" runat="server" placeholder="Fecha Reg." TextMode="Date" CssClass="form-control"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtruc4" runat="server" MaxLength="15" placeholder="RUC PROVEEDOR" ToolTip="RUC de la empresa" type="number" class="form-control"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:DropDownList ID="ddlMotivoAlimento" runat="server" DataSourceID="SqlDataSourceAlimento" DataTextField="titulo" DataValueField="idccdet" class="form-control">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceAlimento" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="32" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtdescripcion4" runat="server" class="form-control" placeholder="Descripción" ></asp:TextBox>
                 </div>
             
         </div>
         <div class="row">
             <div class="col-md-4">
                  <asp:DropDownList ID="ddltpcomprobante4" runat="server" DataSourceID="SqlDataSource12" DataTextField="DESCRIPCION" DataValueField="ID" CssClass="form-control">
                </asp:DropDownList>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtcomprobante4" runat="server" class="form-control" placeholder="Nro. comprobante"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                  <asp:TextBox ID="txtimporte4" runat="server" class="form-control" placeholder="Importe" step="0.0001" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                  <asp:Button ID="btAlimentacion" runat="server" CssClass="btn btn-success"  OnClick="btAlimentacion_Click" Text="Registrar" />
                 </div>
         </div>

                   

                    <asp:Label ID="lblmensajealimentacion" runat="server" CssClass="auto-style3" ForeColor="#990000"></asp:Label>
                    <small>
                    <br />
                    Detalle de gastos de alimento:</small><div class="control-group">
                        <asp:GridView ID="gvAlimentacion" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Horizontal" ShowFooter="True" Width="100%" OnRowDataBound="gvAlimentacion_RowDataBound" OnSelectedIndexChanged="gvAlimentacion_SelectedIndexChanged" Font-Size="X-Small">
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
                            <EmptyDataTemplate>
                                No registra gasto de alimentación....
                            </EmptyDataTemplate>
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
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                                <asp:Parameter DefaultValue="4" Name="idcategoria" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <!-- / .control-group -->
        </div>

    <div class="row">
                    <h4 class="text-success">D. Representación:</h4>

               <div class="row">
             <div class="col-md-2">
                  <asp:TextBox ID="txtfecha6" runat="server" placeholder="Fecha Reg." TextMode="Date" CssClass="form-control"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                  <asp:TextBox ID="txtruc6" runat="server" class="form-control" MaxLength="15" placeholder="RUC PROVEEDOR" ToolTip="RUC de la empresa" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:DropDownList ID="ddlMotivogRepresentacion" runat="server" DataSourceID="SqlDataSourceGastosRepresentacion" DataTextField="titulo" DataValueField="idccdet" class="form-control">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceGastosRepresentacion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="15" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtdescripcion6" runat="server" class="form-control" placeholder="Motivo y descripción"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                  <asp:TextBox ID="txtrucCliente6" runat="server" class="form-control" placeholder="Cliente RUC" TextMode="Number" ></asp:TextBox>
                 </div>
           
         </div>
         <div class="row">
             <div class="col-md-4">
                   <asp:DropDownList ID="ddltpcomprobante6" CssClass="form-control" runat="server" DataSourceID="SqlDataSource12" DataTextField="DESCRIPCION" DataValueField="ID" >
             </asp:DropDownList>
                 </div>
              <div class="col-md-2">
                  <asp:TextBox ID="txtcomprobante6" runat="server" class="form-control" placeholder="Nro. comprobante"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtimporte6" runat="server" class="form-control" placeholder="Importe" step="0.0001" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                  <asp:Button ID="btRepresentacion" CssClass="btn btn-success" runat="server"  Text="Registrar" OnClick="btRepresentacion_Click" />
                 </div>
         </div>      
                      
       
                    
                   
                    <asp:Label ID="lblmensajeRepresentacion" runat="server" CssClass="auto-style3" ForeColor="#990000"></asp:Label>
                    <small>
                    <br />
                    Detalle de gastos de alojamiento:</small>
                    <div class="control-group">
                        <asp:GridView ID="gvRepresentacion" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource9" ForeColor="Black" GridLines="Horizontal" ShowFooter="True" Width="100%" OnRowDataBound="gvRepresentacion_RowDataBound" OnSelectedIndexChanged="gvRepresentacion_SelectedIndexChanged" Font-Size="X-Small">
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
                            <EmptyDataTemplate>
                                no registra gasto de representación...
                            </EmptyDataTemplate>
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
                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                                <asp:Parameter DefaultValue="6" Name="idcategoria" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
        </div>


    <div class="row">
            <h4 class="text-success">E. Gastos por viajes: <small>(boleto,alojamiento,alimentación,otros)</small></h4>
               
              <div class="row">
             <div class="col-md-2">
                  <asp:TextBox ID="txtfecha8" runat="server" CssClass="form-control" placeholder="Fecha Reg." TextMode="Date"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtruc8" runat="server" class="form-control" MaxLength="15" placeholder="RUC PROVEEDOR" ToolTip="RUC de la empresa" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:DropDownList ID="ddlMotivoViaje" runat="server" DataSourceID="SqlDataSourceGastosViajes" DataTextField="titulo" DataValueField="idccdet" class="form-control">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceGastosViajes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="34" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtdescripcion8" runat="server"  placeholder="Detalle" CssClass="form-control"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtorigenDestino12" runat="server" class="form-control" placeholder="Destino"></asp:TextBox>
                 </div>
           <asp:TextBox ID="txtorigenDestinolugar" runat="server" class="span4" placeholder="Lugar" Width="200px" Visible="False"></asp:TextBox>
        <asp:TextBox ID="txtorigenDestinoCliente" runat="server" class="span4" placeholder="Cliente" Width="200px" Visible="False"></asp:TextBox>
         </div>
         <div class="row">
             <div class="col-md-4">
                  <asp:DropDownList ID="ddltpcomprobante8" runat="server" DataSourceID="SqlDataSource12" DataTextField="DESCRIPCION" DataValueField="ID" CssClass="form-control">
        </asp:DropDownList>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtcomprobante8" runat="server" class="form-control" placeholder="Nro. comprobante"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                    <asp:TextBox ID="txtimporte8" runat="server" class="form-control" placeholder="Importe" step="0.0001" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:Button ID="btRegViajes" runat="server" CssClass="btn btn-success" Text="Registrar" OnClick="btRegViajes_Click" />
                 </div>
         </div>       

                    <mall><asp:Label ID="lblmensajeViajes" runat="server" ForeColor="#990000"></asp:Label></mall>
                    <small>
                    <br />
                    Detalle de gastos por viajes:</small>
                    <div class="control-group">

                         <asp:GridView ID="gvViajes" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" ShowFooter="True" Width="100%" OnRowDataBound="gvViajes_RowDataBound" OnSelectedIndexChanged="gvViajes_SelectedIndexChanged" Font-Size="X-Small">
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
            <HeaderStyle Width="200px" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="DESCRIPCION" SortExpression="DESCRIPCION" >
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
                             <EmptyDataTemplate>
                                 no registra gasto por viaje...
                             </EmptyDataTemplate>
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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                                <asp:Parameter DefaultValue="19" Name="idcategoria" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </div>
        </div>
   
       <div class="row">
            <h4 class="text-success">F. Gastos unidad vehicular:<small>(Lavado, reparación, compra,...)</small></h4>
               
                   <div class="row">
             <div class="col-md-2">
                  <asp:TextBox ID="txtfecha9" runat="server" placeholder="Fecha Reg." TextMode="Date" class="form-control"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtruc9" runat="server" class="form-control" MaxLength="15" placeholder="RUC PROVEEDOR" ToolTip="RUC de la empresa" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:DropDownList ID="ddlMotivounidadVehicular" runat="server" DataSourceID="SqlDataSourceGastosUnidadVehicular" DataTextField="titulo" DataValueField="idccdet" class="form-control">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceGastosUnidadVehicular" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="10" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                 </div>
              <div class="col-md-2">
                    <asp:TextBox ID="txtdescripcion9" runat="server" class="form-control" placeholder="Descripción" Visible="False" ></asp:TextBox>
                 </div>
         </div>
         <div class="row">
             <div class="col-md-4">
                  <asp:DropDownList ID="ddltpcomprobante9" runat="server" DataSourceID="SqlDataSource12" DataTextField="DESCRIPCION" DataValueField="ID" class="form-control">
        </asp:DropDownList>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtcomprobante9" runat="server" class="form-control" placeholder="Nro. comprobante"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                  <asp:TextBox ID="txtimporte9" runat="server" class="form-control" placeholder="Importe" step="0.0001" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:Button ID="btnRegGastosUnidadVehi" CssClass="btn btn-success" runat="server" Text="Registrar" OnClick="btnRegGastosUnidadVehi_Click" />
                 </div>
         </div>  

                   
                    <mall><asp:Label ID="lblmensajeunidadVehicular" runat="server" ForeColor="#990000"></asp:Label>
      
            </mall>
                    <small>
                    <br />
                    Detalle de gastos por unidad vehicular:</small>

                    <div class="control-group">

                         <asp:GridView ID="gvGastosundVehicular" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource11" ForeColor="Black" GridLines="Horizontal" ShowFooter="True" Width="100%" OnRowDataBound="gvGastosundVehicular_RowDataBound" OnSelectedIndexChanged="gvGastosundVehicular_SelectedIndexChanged" Font-Size="X-Small">
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
            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" >
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Top" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
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
                             <EmptyDataTemplate>
                                 No registra gasto unidad vehicular.
                             </EmptyDataTemplate>
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
                        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                                <asp:Parameter DefaultValue="20" Name="idcategoria" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>

                    </div>

          </div>
           
    <div class="row">
            <h4 class="text-success">G. Otros gastos:</h4>

           <div class="row">
             <div class="col-md-2">
                 <asp:TextBox ID="txtfecha5" runat="server" placeholder="Fecha Reg." TextMode="Date" CssClass="form-control" ></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtruc5" runat="server" class="form-control" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                    <asp:DropDownList ID="ddlOtrosGastos" runat="server" DataSourceID="SqlDataSourceOtrosGastos" DataTextField="titulo" DataValueField="idccdet" CssClass="form-control">
        </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSourceOtrosGastos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="36" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtdescripcion5" runat="server" placeholder="Descripción" CssClass="form-control"></asp:TextBox>
                 </div>
            
         </div>
         <div class="row">
             <div class="col-md-4">
                  <asp:DropDownList ID="ddltpcomprobante5" runat="server" DataSourceID="SqlDataSource12" DataTextField="DESCRIPCION" DataValueField="ID" CssClass="form-control">
        </asp:DropDownList>
                 </div>
              <div class="col-md-2">
                  <asp:TextBox ID="txtcomprobante5" runat="server" class="form-control" placeholder="Nro. comprobante"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="txtimporte5" runat="server" class="form-control" placeholder="Importe" step="0.0001" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:Button ID="btOtrosGastos" runat="server" CssClass="btn btn-success"  Text="Registrar" OnClick="btOtrosGastos_Click" />
                 </div>
         </div>
                    
                    <asp:Label ID="lblmensajeOtrosGastos" runat="server" CssClass="auto-style3" ForeColor="#990000"></asp:Label>
                    
                    <small> 
            <br />
            Detalle de otros gastos:</small><div class="control-group">
                        <asp:GridView ID="gvOtrosGastos" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Horizontal" ShowFooter="True" Width="100%" OnRowDataBound="gvOtrosGastos_RowDataBound" OnSelectedIndexChanged="gvOtrosGastos_SelectedIndexChanged" Font-Size="X-Small">
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
                            <EmptyDataTemplate>
                                No registra otros gastos.
                            </EmptyDataTemplate>
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
                    </div>
                    <!-- / .control-group -->
                </div>


    <asp:Panel ID="pgastosAdministrativos" runat="server" Visible="False">
         <div class="row">
            <h4 class="text-success">H. Otros gastos administrativos:</h4>

           <div class="row">
             <div class="col-md-2">
                 <asp:TextBox ID="TextBox1" runat="server" placeholder="Fecha Reg." TextMode="Date" CssClass="form-control" ></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="TextBox2" runat="server" class="form-control" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceOtrosGastos" DataTextField="titulo" DataValueField="idccdet" CssClass="form-control">
        </asp:DropDownList>
         <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_descripcionViaticos" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="36" Name="idcategoria" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="TextBox3" runat="server" placeholder="Descripción" CssClass="form-control"></asp:TextBox>
                 </div>
            
         </div>
         <div class="row">
             <div class="col-md-4">
                  <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource12" DataTextField="DESCRIPCION" DataValueField="ID" CssClass="form-control">
        </asp:DropDownList>
                 </div>
              <div class="col-md-2">
                  <asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Nro. comprobante"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Importe" step="0.0001" type="number"></asp:TextBox>
                 </div>
              <div class="col-md-2">
                   <asp:Button ID="Button1" runat="server" CssClass="btn btn-success"  Text="Registrar" OnClick="btOtrosGastos_Click" />
                 </div>
         </div>
                    
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style3" ForeColor="#990000"></asp:Label>
                    
                    <small> 
            <br />
            Detalle de otros gastos:</small><div class="control-group">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Horizontal" ShowFooter="True" Width="100%" OnRowDataBound="gvOtrosGastos_RowDataBound" OnSelectedIndexChanged="gvOtrosGastos_SelectedIndexChanged" Font-Size="X-Small">
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
                            <EmptyDataTemplate>
                                No registra otros gastos.
                            </EmptyDataTemplate>
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
                        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                                <asp:Parameter DefaultValue="5" Name="idcategoria" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                    <!-- / .control-group -->
                </div>
    </asp:Panel>


</asp:Content>
