<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/Newporpagar.Master" AutoEventWireup="true" CodeBehind="ComprasInternas_resumen.aspx.cs" Inherits="biotech.porpagar.ComprasInternas_resumen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container-fluid">
          <div class="row">
               <div class="col-md-12">
          <h2><span class="glyphicon glyphicon-check"></span> RESUMEN COMPRAS INTERNAS<asp:Label ID="lblusuario" runat="server" Text="ACHAC" Visible="False"></asp:Label>
            <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lblop" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lbldato" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lblperido2" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lblano2" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lblidcategoria" runat="server" Visible="False"></asp:Label>
         </h2>
                   </div>
</div>
        
        
 <div class="row">
     <div class="col-md-12">
        <asp:Panel ID="PanelGeneral"  runat="server">
          
               <asp:Label ID="lblmesDescrip" runat="server"></asp:Label>
               &nbsp; <small>
               <asp:Label ID="lblResumenAno" runat="server"></asp:Label>
               <asp:Label ID="lbltpcambio" runat="server" Text="3.25" Visible="False"></asp:Label>
               <asp:Label ID="lblidempresa" runat="server" Text="1" Visible="False"></asp:Label>
               </small>

            <asp:GridView ID="gvanual" runat="server" Class="table table-striped table-bordered table-hover table-sm" AutoGenerateColumns="False" DataKeyNames="IDMES,MES" DataSourceID="SqlDataSourceAnoGeneral" OnSelectedIndexChanged="gvanual_SelectedIndexChanged" Width="700px">
                <Columns>
                    <asp:TemplateField HeaderText="MES" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("MES") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="IDMES" HeaderText="IDMES" ReadOnly="True" SortExpression="IDMES" Visible="False" />
                    <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" Visible="False" />
                    <asp:BoundField DataField="DOLARES" HeaderText="DOLARES" ReadOnly="True" SortExpression="DOLARES" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SOLES" HeaderText="SOLES" ReadOnly="True" SortExpression="SOLES" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTALSOLES" HeaderText="TOTAL SOLES" ReadOnly="True" SortExpression="TOTALSOLES" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTALDOLARES" HeaderText="TOTAL DOLARES" ReadOnly="True" SortExpression="TOTALDOLARES" DataFormatString="{0:0,0.00}" Visible="False" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>

                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSourceAnoGeneral" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Compras_ResumAno" SelectCommandType="StoredProcedure">
                <SelectParameters>
                     <asp:ControlParameter ControlID="lblperido2" Name="mes" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidempresa" Name="idempresa" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lbltpcambio" Name="tpcambio" PropertyName="Text" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>

        </asp:Panel>
      </div>
     </div>

      <div class="row">
     <div class="col-md-12">
         <asp:Panel ID="Panel3" runat="server">
             
             <asp:GridView ID="gvGastosCategoizados" Class="table table-striped table-bordered table-hover table-sm " runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcerESdET" OnRowDataBound="gvGastosCategoizados_RowDataBound" ShowFooter="True" Width="700px">
                 <Columns>
                     <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                     <asp:BoundField DataField="CATEGORIA" HeaderText="RESUMEN CATEGORIZADO" SortExpression="CATEGORIA" />
                     <asp:BoundField DataField="DOLARES" HeaderText="DOLARES" ReadOnly="True" SortExpression="DOLARES" DataFormatString="{0:0,0.00}" Visible="False" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="SOLES" HeaderText="SOLES" ReadOnly="True" SortExpression="SOLES" DataFormatString="{0:0,0.00}" Visible="False" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="TOTALSOLES" HeaderText="TOTAL SOLES" ReadOnly="True" SortExpression="TOTALSOLES" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSourcerESdET" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Compras_ResumDetTipo" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblperido2" Name="mes" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblidempresa" Name="idempresa" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lbltpcambio" Name="tpcambio" PropertyName="Text" Type="Decimal" />
                 </SelectParameters>
             </asp:SqlDataSource>
             &nbsp;</asp:Panel>


            <asp:Panel ID="Panel4" runat="server">
               
                
                 <p>
                     <asp:GridView ID="gvDevolver" Class="table table-striped table-bordered table-hover table-sm table-warning" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceDevol" Width="700px">
                         <Columns>
                             <asp:BoundField DataField="DESCRIPCION" HeaderText="DETALLE DE PRESTAMOS" ReadOnly="True" SortExpression="DESCRIPCION" />
                             <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="IDMONEDA" HeaderText="IDMONEDA" SortExpression="IDMONEDA" Visible="False" />
                             <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA">
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="CANT.COMPRAS" HeaderText="CANTIDAD DE COMPRAS" ReadOnly="True" SortExpression="CANT.COMPRAS">
                             <HeaderStyle Font-Size="Small" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                         </Columns>
                         <HeaderStyle BackColor="#FFFFCC" />
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSourceDevol" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Compras_Internasxdevol" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                             <asp:ControlParameter ControlID="lblperido2" Name="mes" PropertyName="Text" Type="Int32" />
                             <asp:Parameter DefaultValue="1" Name="idempresa" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                 </p>
               
                
          </asp:Panel>
         </div></div>
          <br />

          <div class="row">
              <div class="col-md-12">
             <div class="form-group">
                 
                 <div class="col-sm-2">
                            <asp:DropDownList ID="ddlrdTipo2" runat="server" Class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource2Tipo" DataTextField="Descripcion" DataValueField="idrdTipo" Width="100%" OnSelectedIndexChanged="ddlrdTipo2_SelectedIndexChanged"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2Tipo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_rdTipo]"></asp:SqlDataSource>
                        </div>

                    <div class="col-sm-2">
                         <div class="input-group">
       <asp:DropDownList ID="ddlTipoGasto2" class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcecategoria" DataTextField="categoriard" DataValueField="idcat" OnSelectedIndexChanged="ddlTipoGasto2_SelectedIndexChanged"></asp:DropDownList>
                             <asp:SqlDataSource ID="SqlDataSourcecategoria" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_rdcategoria] WHERE ([IdTipo] = @IdTipo) ORDER BY [orden]">
                                 <SelectParameters>
                                     <asp:ControlParameter ControlID="ddlrdTipo2" Name="IdTipo" PropertyName="SelectedValue" Type="Int32" />
                                 </SelectParameters>
                             </asp:SqlDataSource>

      <span class="input-group-btn">
         <asp:LinkButton ID="lbtnBuscar2" class="btn btn-success"  runat="server" OnClick="lbtnBuscar2_Click">Buscar</asp:LinkButton>
        
      </span>
    </div>


                            

                    </div>   
                    

                    <div class="col-sm-2">
                        <asp:TextBox ID="txtproveedor" CssClass="form-control" runat="server" AutoPostBack="True" OnTextChanged="txtproveedor_TextChanged"></asp:TextBox>
                    </div>
                         <div class="col-sm-2">
                             <asp:RadioButtonList ID="rbAno" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="100%" OnSelectedIndexChanged="rbAno_SelectedIndexChanged">
                             </asp:RadioButtonList>
                             <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_ano"></asp:SqlDataSource>
                        </div>
                    <div class="col-sm-3">

                         <div class="input-group">
                        <asp:DropDownList ID="ddlMes" class="form-control" runat="server" DataSourceID="SqlDataSourceMes" DataTextField="mes" DataValueField="idmes" AutoPostBack="True" OnSelectedIndexChanged="ddlMes_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_mes"></asp:SqlDataSource>
                  

      <span class="input-group-btn">
        <asp:LinkButton ID="lbFiltro" CssClass="btn btn-success" runat="server" OnClick="lbFiltro_Click">GENERAR</asp:LinkButton>
      </span>
    </div>

                         </div>
                        

                  </div>
                  </div>
             </div>
           <div class="row">
     <div class="col-md-12">
               <asp:Panel ID="Panel1" runat="server">
            

                 
            

                 <asp:LinkButton ID="LinkButton1" CssClass="btn btn-default" runat="server" OnClick="LinkButton1_Click">EXPORTAR</asp:LinkButton>
                 <asp:LinkButton ID="lbExporcontable" runat="server"  OnClick="lbExporcontable_Click">CONTABLE CINT.</asp:LinkButton>
                   <div class="table-responsive">
                 <asp:GridView ID="gvCompInt" runat="server" AutoGenerateColumns="False" class="table table-striped table-bordered table-hover" DataKeyNames="idRGdetalle" DataSourceID="SqlDataSource1" Font-Size="X-Small" GridLines="None" OnSelectedIndexChanged="gvCompInt_SelectedIndexChanged" AllowSorting="True" OnRowDataBound="gvCompInt_RowDataBound">
                     <Columns>
                         <%-- <asp:TemplateField HeaderText="M" SortExpression="M">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("M") %>'>
                            <asp:ListItem Value="S">SOLES</asp:ListItem>
                            <asp:ListItem Value="D">DOLARES</asp:ListItem>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("M") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:TemplateField>--%>
                         <asp:BoundField DataField="idRGdetalle" HeaderText="COD" ReadOnly="True" SortExpression="idRGdetalle" />
                         <asp:BoundField DataField="idRG" HeaderText="idRG" SortExpression="idRG" Visible="False" />
                         <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                         <asp:BoundField DataField="idcategoria" HeaderText="COD. CATEGORIA" SortExpression="idcategoria" >
                         <HeaderStyle Font-Size="XX-Small" />
                         </asp:BoundField>
                         <asp:TemplateField HeaderText="F.EMISION" SortExpression="FEMISION">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("FEMISION") %>' Width="75px"></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label7" runat="server" Text='<%# Bind("FEMISION", "{0:dd/MM/yyyy}") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="RUC" SortExpression="RUC">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("RUC") %>' Width="100px"></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label6" runat="server" Text='<%# Bind("RUC") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" ReadOnly="True" SortExpression="RAZONSOCIAL" />
                         <asp:TemplateField HeaderText="N°COMP." SortExpression="NCOMPROBANTE">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("NCOMPROBANTE") %>' Width="100px"></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label5" runat="server" Text='<%# Bind("NCOMPROBANTE") %>'></asp:Label>
                             </ItemTemplate>
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="MONEDA" SortExpression="M">
                             <EditItemTemplate>
                                 <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("M") %>'>
                                     <asp:ListItem Value="D">US$</asp:ListItem>
                                     <asp:ListItem Value="S">S/.</asp:ListItem>
                                 </asp:DropDownList>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label1" runat="server" Text='<%# Bind("M1") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="IMPORTE" SortExpression="IMPORTE">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("IMPORTE") %>' Width="80px"></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label3" runat="server" Text='<%# Bind("IMPORTE", "{0:0,0.00}") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                         </asp:TemplateField>
                         <asp:TemplateField HeaderText="DETRAC." SortExpression="DETRACCION">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("DETRACCION") %>' Width="60px"></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label4" runat="server" Text='<%# Bind("DETRACCION", "{0:0,0.00}") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                         </asp:TemplateField>
                         <asp:BoundField DataField="autor" HeaderText="autor" SortExpression="autor" Visible="False" />
                         <asp:TemplateField HeaderText="COD. TIPO DOCUMENTO" SortExpression="TPDOC">
                             <EditItemTemplate>
                                 <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("TPDOC") %>' Width="40px"></asp:TextBox>
                             </EditItemTemplate>
                             <ItemTemplate>
                                 <asp:Label ID="Label2" runat="server" Text='<%# Bind("TPDOC") %>'></asp:Label>
                             </ItemTemplate>
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:TemplateField>
                         <asp:CheckBoxField DataField="EST" HeaderText="EST" SortExpression="EST" Visible="False" />
                         <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                         <ItemStyle Font-Size="XX-Small" />
                         </asp:BoundField>
                          <asp:BoundField DataField="USUPRESTAMO" HeaderText="PRESTAMO" SortExpression="USUPRESTAMO"  />
                               <asp:ImageField DataImageUrlField="ESTADOPRESTAMO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO COMPRA">
                            <ControlStyle Height="12px" Width="12px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
             </asp:ImageField>
                     </Columns>
                 </asp:GridView></div>
                   (<asp:Label ID="lblnumregistros" runat="server"></asp:Label>
                   ) registros encontrados.<br />
                 <small>
                    <strong>ESTADO COMPRA: </strong>COMPRAS BIOTECH
                    <asp:Image ID="Image3" runat="server" Height="15px" ImageUrl="~/images/Z1.png" Width="15px" />
                 &nbsp;|&nbsp; PRESTAMO POR DEVOLVER
                    <asp:Image ID="Image2" runat="server" Height="15px" ImageUrl="~/images/Z3.png" Width="15px" />
&nbsp;</small>
                   <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ComprasInt" SelectCommandType="StoredProcedure"
                        UpdateCommand="UPDATE tb_rddetalle SET idcategoria =@idcategoria,fecharegistro=@FEMISION, descripcion=@DESCRIPCION,Ncomprobante=@NCOMPROBANTE,importe=@IMPORTE,IdrucProveedor=@RUC,TipoDocumento=@TPDOC,impDetraccion=@DETRACCION,moneda=@M WHERE idRGdetalle =@idRGdetalle">
                       
                       <SelectParameters>
                           <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                           <asp:ControlParameter ControlID="lbldato" Name="dato" PropertyName="Text" Type="String" />
                           <asp:ControlParameter ControlID="lblperido2" Name="periodo" PropertyName="Text" Type="Int32" />
                           <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                       </SelectParameters>
                       <UpdateParameters>
                           <asp:Parameter Name="idcategoria" Type="Int32" />
                           <asp:Parameter DbType="Date" Name="FEMISION"  />
                           <asp:Parameter Name="DESCRIPCION" Type="String" />
                           <asp:Parameter Name="NCOMPROBANTE" Type="String" />
                           <asp:Parameter Name="IMPORTE" Type="Decimal" />
                           <asp:Parameter Name="RUC" Type="String"/>
                           <asp:Parameter Name="TPDOC" Type="String" />
                           <asp:Parameter Name="DETRACCION" Type="Decimal"  />
                           <asp:Parameter Name="M" Type="String"/>
                           <asp:Parameter Name="idRGdetalle" Type="Int32" />
                       </UpdateParameters>
                   </asp:SqlDataSource>

                 </asp:Panel>
         </div>
               </div>
         



             <asp:Panel ID="Panel2" CssClass="row" runat="server">
             <asp:LinkButton ID="LinkButton2" CssClass="btn btn-default"  runat="server" OnClick="LinkButton2_Click">EXPORTAR</asp:LinkButton>

                 <asp:LinkButton ID="lbExportar" runat="server" CssClass="" OnClick="lbExportar_Click">RESUMEN CINT.</asp:LinkButton>

             <br />
         <div class="table-responsive">
                 <asp:GridView ID="gvExportCINT" CLASS="table table-striped table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceCOMINT" Font-Size="XX-Small">
                 <Columns>
                     <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" ReadOnly="True" SortExpression="FEMISION" />
                     <asp:BoundField DataField="FVENCIMIENTO" HeaderText="FVENCIMIENTO" ReadOnly="True" SortExpression="FVENCIMIENTO" />
                     <asp:BoundField DataField="TIPODOC" HeaderText="TIPODOC" SortExpression="TIPODOC" />
                     <asp:BoundField DataField="NºSERIE" HeaderText="NºSERIE" ReadOnly="True" SortExpression="NºSERIE" />
                     <asp:BoundField DataField="AÑO EMISION DUA O DSI" HeaderText="AÑO EMISION DUA O DSI" ReadOnly="True" SortExpression="AÑO EMISION DUA O DSI" />
                     <asp:BoundField DataField="N°COMPROBANTE PAGO" HeaderText="N°COMPROBANTE PAGO" ReadOnly="True" SortExpression="N°COMPROBANTE PAGO" />
                     <asp:BoundField DataField="TIPO" HeaderText="TIPO" ReadOnly="True" SortExpression="TIPO" />
                     <asp:BoundField DataField="NUMERO" HeaderText="NUMERO" SortExpression="NUMERO" />
                     <asp:BoundField DataField="DENOMINACION O RAZON_SOCIAL" HeaderText="DENOMINACION O RAZON_SOCIAL" SortExpression="DENOMINACION O RAZON_SOCIAL" />
                     <asp:BoundField DataField="BASE_IMPONIBLE" HeaderText="BASE_IMPONIBLE" ReadOnly="True" SortExpression="BASE_IMPONIBLE" />
                     <asp:BoundField DataField="IGV" HeaderText="IGV" ReadOnly="True" SortExpression="IGV" />
                     <asp:BoundField DataField="BASE IMPONIBLE2" HeaderText="BASE IMPONIBLE2" ReadOnly="True" SortExpression="BASE IMPONIBLE2" />
                     <asp:BoundField DataField="IGV2" HeaderText="IGV2" ReadOnly="True" SortExpression="IGV2" />
                     <asp:BoundField DataField="BASE IMPONIBLE3" HeaderText="BASE IMPONIBLE3" ReadOnly="True" SortExpression="BASE IMPONIBLE3" />
                     <asp:BoundField DataField="IGV3" HeaderText="IGV3" ReadOnly="True" SortExpression="IGV3" />
                     <asp:BoundField DataField="VAL ADQUICICION NO_GRAVADAS" HeaderText="VAL ADQUICICION NO_GRAVADAS" SortExpression="VAL ADQUICICION NO_GRAVADAS" />
                     <asp:BoundField DataField="ISC" HeaderText="ISC" ReadOnly="True" SortExpression="ISC" />
                     <asp:BoundField DataField="OTROS_TRIB_CARGOS" HeaderText="OTROS_TRIB_CARGOS" ReadOnly="True" SortExpression="OTROS_TRIB_CARGOS" />
                     <asp:BoundField DataField="IMPORTE TOTAL" HeaderText="IMPORTE TOTAL" SortExpression="IMPORTE TOTAL" />
                     <asp:BoundField DataField="N° COMPROB DE PAGO SUJETO NO DOMICILIADO" HeaderText="N° COMPROB DE PAGO SUJETO NO DOMICILIADO" ReadOnly="True" SortExpression="N° COMPROB DE PAGO SUJETO NO DOMICILIADO" />
                     <asp:BoundField DataField="CONST NUMERO" HeaderText="CONST NUMERO" ReadOnly="True" SortExpression="CONST NUMERO" />
                     <asp:BoundField DataField="CONST FECHA EMISION" HeaderText="CONST FECHA EMISION" ReadOnly="True" SortExpression="CONST FECHA EMISION" />
                     <asp:BoundField DataField="TIPO DE CAMBIO" HeaderText="TIPO DE CAMBIO" ReadOnly="True" SortExpression="TIPO DE CAMBIO" />
                     <asp:BoundField DataField="REF_COMPROB_FECHA" HeaderText="REF_COMPROB_FECHA" ReadOnly="True" SortExpression="REF_COMPROB_FECHA" />
                     <asp:BoundField DataField="TIPO1" HeaderText="TIPO1" ReadOnly="True" SortExpression="TIPO1" />
                     <asp:BoundField DataField="SERIE" HeaderText="SERIE" ReadOnly="True" SortExpression="SERIE" />
                     <asp:BoundField DataField="N° COMPROB PAGO" HeaderText="N° COMPROB PAGO" ReadOnly="True" SortExpression="N° COMPROB PAGO" />
                     <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                     <asp:BoundField DataField="EQUIVALENTE DOLARES AMERICANOS" HeaderText="EQUIVALENTE DOLARES AMERICANOS" ReadOnly="True" SortExpression="EQUIVALENTE DOLARES AMERICANOS" />
                     <asp:BoundField DataField="FECHA VENCTO" HeaderText="FECHA VENCTO" ReadOnly="True" SortExpression="FECHA VENCTO" />
                     <asp:BoundField DataField="CONDICION CONT CRED" HeaderText="CONDICION CONT CRED" ReadOnly="True" SortExpression="CONDICION CONT CRED" />
                     <asp:BoundField DataField="CTA CONTABLE BASE IMPONIBLE" HeaderText="CTA CONTABLE BASE IMPONIBLE" ReadOnly="True" SortExpression="CTA CONTABLE BASE IMPONIBLE" />
                     <asp:BoundField DataField="CTA_CONTABLE OTROS TRIB_CARGOS" HeaderText="CTA_CONTABLE OTROS TRIB_CARGOS" ReadOnly="True" SortExpression="CTA_CONTABLE OTROS TRIB_CARGOS" />
                     <asp:BoundField DataField="CUENTA_CONTABLE" HeaderText="CUENTA_CONTABLE" ReadOnly="True" SortExpression="CUENTA_CONTABLE" />
                     <asp:BoundField DataField="COD_CENTRO COSTOS" HeaderText="COD_CENTRO COSTOS" ReadOnly="True" SortExpression="COD_CENTRO COSTOS" />
                     <asp:BoundField DataField="COD_CENTRO COSTOS2" HeaderText="COD_CENTRO COSTOS2" ReadOnly="True" SortExpression="COD_CENTRO COSTOS2" />
                     <asp:BoundField DataField="REGIMEN_ESPECIAL" HeaderText="REGIMEN_ESPECIAL" ReadOnly="True" SortExpression="REGIMEN_ESPECIAL" />
                     <asp:BoundField DataField="%_REGIMEN ESPECIAL" HeaderText="%_REGIMEN ESPECIAL" ReadOnly="True" SortExpression="%_REGIMEN ESPECIAL" />
                     <asp:BoundField DataField="IMP_REGIMEN ESPECIAL" HeaderText="IMP_REGIMEN ESPECIAL" ReadOnly="True" SortExpression="IMP_REGIMEN ESPECIAL" />
                     <asp:BoundField DataField="SERIE_DOC REG_ESPECIAL" HeaderText="SERIE_DOC REG_ESPECIAL" ReadOnly="True" SortExpression="SERIE_DOC REG_ESPECIAL" />
                     <asp:BoundField DataField="NUM_DOC REGIMEN_ESPECIAL" HeaderText="NUM_DOC REGIMEN_ESPECIAL" ReadOnly="True" SortExpression="NUM_DOC REGIMEN_ESPECIAL" />
                     <asp:BoundField DataField="FECHA_DOC REGIMEN_ESPECIAL" HeaderText="FECHA_DOC REGIMEN_ESPECIAL" ReadOnly="True" SortExpression="FECHA_DOC REGIMEN_ESPECIAL" />
                     <asp:BoundField DataField="CODIGO_PROPUESTO" HeaderText="CODIGO_PROPUESTO" ReadOnly="True" SortExpression="CODIGO_PROPUESTO" />
                     <asp:BoundField DataField="PORCENTAJE_IGV" HeaderText="PORCENTAJE_IGV" ReadOnly="True" SortExpression="PORCENTAJE_IGV" />
                     <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                     <asp:BoundField DataField="CONDICION_PERCEPCION" HeaderText="CONDICION_PERCEPCION" ReadOnly="True" SortExpression="CONDICION_PERCEPCION" />
                     <asp:BoundField DataField="IMP_REG_ESPECIAL" HeaderText="IMP_REG_ESPECIAL" ReadOnly="True" SortExpression="IMP_REG_ESPECIAL" />
                     <asp:BoundField DataField="EMPLEADO" HeaderText="EMPLEADO" SortExpression="EMPLEADO" />
                 </Columns>
             </asp:GridView>
         
             <asp:SqlDataSource ID="SqlDataSourceCOMINT" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="I_CONTASIS_CINT" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblperido2" Name="periodo" PropertyName="Text" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </div>



                 </asp:Panel>

           

    </div>

</asp:Content>
