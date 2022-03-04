<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/Newporpagar.Master" AutoEventWireup="true" CodeBehind="ComprasInternas.aspx.cs" Inherits="biotech.porpagar.ComprasInternas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="../bio/js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../bio/css/sweetalert.css" rel="stylesheet" type="text/css" />


         <div class="container">

          <h2><span class="glyphicon glyphicon-check"></span> COMPRAS INTERNAS<asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
              <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Visible="False">LinkButton</asp:LinkButton>
         </h2>


         <div class="form-horizontal"">

             <div class="form-group">
                                  <div class="col-sm-4">
                     <asp:DropDownList ID="DDLEMPRESA" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceeMPRESA" DataTextField="empresa" DataValueField="id"></asp:DropDownList>


                     <asp:SqlDataSource ID="SqlDataSourceeMPRESA" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id,empresa,empresa1 from tb_empresas where estadoComprasInternas = 1"></asp:SqlDataSource>
                     <p class="help-block">Empresa Rend. gastos</p>

                 </div>
      

                 <div class="col-sm-4">
                     <asp:TextBox ID="txtfecha" runat="server" required class="form-control" TextMode="Date"></asp:TextBox>
                     
                     <p class="help-block">Fecha de emisión    <asp:Label ID="lblperiodo" runat="server"></asp:Label>
                     <asp:Label ID="lblano" runat="server"></asp:Label>
                         <asp:Label ID="lblidrendicion" runat="server"></asp:Label>
                     </p>
                     </div>
                  <div class="col-sm-4">
                     <asp:CheckBox ID="CheckBox1" runat="server" Text="PRESTAMO" />
                     
                    
                     </div>
                 

                 
   </div>

                <div class="form-group">
                
                <div class="col-sm-4">
                    <asp:DropDownList ID="ddl10CC" runat="server" CssClass="form-control" DataSourceID="SqlDataSourcecca" DataTextField="Descripcion" DataValueField="idCentroCosto" AutoPostBack="True" OnSelectedIndexChanged="ddl10CCA_SelectedIndexChanged">
                                    </asp:DropDownList>
                                   
                     <p class="help-block">Centro de costo:</p>
                </div>
                     <div class="col-sm-4">
                   <asp:DropDownList ID="ddl10CCaux" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2ccauxi" DataTextField="CATEGORIA" DataValueField="idCategoria" AutoPostBack="True" OnSelectedIndexChanged="ddl10CCaux_SelectedIndexChanged">
                                    </asp:DropDownList>
                                

                     <p class="help-block">Centro de costo auxiliar:<asp:Label ID="lblidconunidad" runat="server" Visible="False"></asp:Label>
                         </p>
                         </div>
                <div class="col-sm-4">
                     <asp:DropDownList ID="dd10tipocompras"  CssClass="form-control" runat="server" DataSourceID="SqlDataSourcecctipo" DataTextField="titulo" DataValueField="idccdet">
                     </asp:DropDownList>
                                

                     <p class="help-block">Tipo de gasto:</p>
                </div>
                </div>

            
                     <asp:Panel ID="psubunidad10" runat="server">
                          <div class ="form-group">
                 <div class="col-sm-4">
                        
                                       <asp:SqlDataSource ID="SqlDataSourceUnidadesd" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_listar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                        <asp:DropDownList ID="ddlIdUnidad" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceUnidadesd" DataTextField="EQUIPOPERSONAL" DataValueField="IdEquipo">
                                        </asp:DropDownList>
                         <p class="help-block"> Unidad Vehicular:</p>
                       </div>
             </div>
                                    </asp:Panel>
               



                                <asp:SqlDataSource ID="SqlDataSourcecctipo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_cctipo" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddl10CCaux" Name="idcat" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                                <asp:SqlDataSource ID="SqlDataSource2ccauxi" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gasto_distribucionxcc" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="ddl10CC" Name="idcc" PropertyName="SelectedValue" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSourcecca" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos.CCostoAdministrativo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                      

       

    <div class="form-group">
      <label class="control-label col-sm-2" for="txtruc">PROVEEDOR:</label><asp:Label ID="lbltt1" runat="server" Visible="False">0</asp:Label>
                 
<asp:Label ID="estadoproveedor" runat="server" Text="1" Visible="False"></asp:Label>
            <div class="col-sm-3">
            <asp:TextBox ID="txtidruc" class="form-control" placeholder="RUC" AutoPostBack="True" runat="server" OnTextChanged="txtidruc_TextChanged"></asp:TextBox>
            
      </div>
      <div class="col-sm-7">
          <asp:TextBox ID="txtrazonsocial" required tyle="text-transform: uppercase" class="form-control" placeholder="Razón Social" runat="server"></asp:TextBox>
          
      </div>
    </div>

             

    <div class="form-group">
      <label class="control-label col-sm-2" for="ddlTipoCompro">TP.COMPROBANTE:</label>
      <div class="col-sm-3">          
          <asp:DropDownList ID="ddlTipoCompro" CssClass="form-control" runat="server" DataSourceID="SqlDataSourcecDONpAGO" DataTextField="descripcion" DataValueField="id">
          </asp:DropDownList>
          <asp:SqlDataSource ID="SqlDataSourcecDONpAGO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [Condicion_Pago]"></asp:SqlDataSource>
      </div>
        <div class="col-sm-3">          
            <asp:TextBox ID="txtncomprobante" class="form-control" required placeholder="Serie-Numeración" runat="server"></asp:TextBox>
      </div>
        <div class="col-sm-4">          
            <asp:RadioButtonList ID="rbmoneda"  runat="server" RepeatDirection="Horizontal" Width="100%">
                          <asp:ListItem Value="S" Selected="True">SOLES</asp:ListItem>
                          <asp:ListItem Value="D">DOLARES</asp:ListItem>
                      </asp:RadioButtonList>
      </div>
    </div>
             <div class="form-group">
                <label class="control-label col-sm-2" for="txtruc">CONCEPTO:</label>
                <div class="col-sm-10">
                    <asp:TextBox ID="txtconcepto" class="form-control" placeholder="Concepto de.." runat="server"></asp:TextBox>
                   
                </div>
                 
            </div>


             

             <div class="form-group"> 
                 <label class="control-label col-sm-2" for="ddlTipoCompro">IMPORTE:</label>  
                 <div class="col-sm-2">          
                    <asp:TextBox ID="txtbase" class="form-control" placeholder="0.00" runat="server" ReadOnly="True"></asp:TextBox>
                     
                     <p class="help-block">Imp. base</p>
                </div>
                 <div class="col-sm-2">          
                    <asp:TextBox ID="txtigv" class="form-control" placeholder="0.00" runat="server" ReadOnly="True"></asp:TextBox>
                     <p class="help-block">IGV (18%)</p>
                    
                </div>
             
                 <div class="col-sm-2">          
                    <asp:TextBox ID="txttotal" class="form-control" required type="number" step="0.001"  placeholder="0.00" runat="server" OnTextChanged="txttotal_TextChanged" AutoPostBack="True"></asp:TextBox>
                     <p class="help-block">Imp. Total</p>
                </div>
                 <div class="col-sm-2">          
                    <asp:TextBox ID="txtdetraccion" class="form-control"  placeholder="0.00" step="0.001" runat="server"></asp:TextBox>
                     <p class="help-block">Detracción</p>
                </div>
                 <div class="col-sm-2">    
                 <asp:Button ID="btRegistrarGasto" CssClass="btn btn-success" runat="server" Text="REGISTRAR" Width="100%" OnClick="btRegistrarGasto_Click" />
                     </div>
              </div>

              <div class="form-group">
                  <asp:Label ID="lblmensaje" runat="server" style="color: #990000"></asp:Label>
                  <asp:Label ID="Label1" runat="server"></asp:Label>
                  </div>

             </div></div>
              <div class="container-fluid">
             <hr />
             <h2 ><span class="glyphicon glyphicon-check"></span> COMPRAS REGISTRADAS:<asp:Label ID="Label2" runat="server" Text="ACHAC" Visible="False"></asp:Label>
            <asp:Label ID="lblop" runat="server" Visible="False"></asp:Label>
                 <asp:Label ID="lbldato" runat="server" Visible="False"></asp:Label>
                 <asp:Label ID="lblperido2" runat="server" Visible="False"></asp:Label>
                 <asp:Label ID="lblano2" runat="server" Visible="False"></asp:Label>
                 <asp:Label ID="lblidcategoria" runat="server" Visible="False"></asp:Label>
         </h2>

               <div class="row">
                    <%--<div class="form-group">
                 
<%--                        <div class="col-sm-2">
                            <asp:DropDownList ID="ddlrdTipo2" runat="server" Class="form-control" AutoPostBack="True" DataSourceID="" DataTextField="Descripcion" DataValueField="idrdTipo" Width="100%" OnSelectedIndexChanged="ddlrdTipo2_SelectedIndexChanged"></asp:DropDownList>
                        </div>
 --%>                         <div class="col-sm-3">

                            <div class="input-group">
         <asp:DropDownList ID="ddlcc"  runat="server" Class="form-control" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Descripcion" DataValueField="idCentroCosto" OnSelectedIndexChanged="ddlTipoGasto2_SelectedIndexChanged"></asp:DropDownList>
                           

                           <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idCentroCosto,Descripcion from gastos.CentroCosto">
                                  
                              </asp:SqlDataSource>

      <span class="input-group-btn">

          <asp:LinkButton ID="lbtnBuscar2" class="btn btn-default"  runat="server" OnClick="lbtnBuscar2_Click">Buscar</asp:LinkButton>
        
     
      </span>
    </div> 

                          
        </div>&nbsp;<div class="col-sm-2 ">
                        <asp:TextBox ID="txtproveedor" CssClass="form-control" placeholder="Razón Social" runat="server" AutoPostBack="True" OnTextChanged="txtproveedor_TextChanged"></asp:TextBox>
                    </div>
                         <div class="col-sm-2">
                             <asp:RadioButtonList ID="rbAno"   runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="100%" OnSelectedIndexChanged="rbAno_SelectedIndexChanged">
                             </asp:RadioButtonList>
                             <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_ano"></asp:SqlDataSource>
                        </div>
                    <div class="col-sm-2">

                        <div class="input-group">
       <asp:DropDownList ID="ddlMes" class="form-control" runat="server" DataSourceID="SqlDataSourceMes" DataTextField="mes" DataValueField="idmes" AutoPostBack="True" OnSelectedIndexChanged="ddlMes_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_mes"></asp:SqlDataSource>
                  
      <span class="input-group-btn">
          <asp:LinkButton ID="lbFiltro" class="btn btn-default" runat="server" OnClick="lbFiltro_Click">GENERAR</asp:LinkButton>
  
      </span>
    </div>

                         </div>
                        
</div>
                   
               

                  

                   <asp:GridView ID="gvCompras" runat="server" class="table table-striped table-bordered table-hover" AutoGenerateColumns="False" DataKeyNames="idRGdetalle,NCOMPROBANTE" DataSourceID="SqlDataSourceComInt" GridLines="None" Font-Size="X-Small" OnSelectedIndexChanged="gvCompras_SelectedIndexChanged" OnRowDataBound="gvCompras_RowDataBound">
                       <Columns>
                           <asp:CommandField ShowEditButton="True" ShowSelectButton="True" />
                            <asp:BoundField DataField="idRGdetalle" HeaderText="COD" ReadOnly="True" SortExpression="idRGdetalle" />
                           <asp:BoundField DataField="idRG" HeaderText="idRG" SortExpression="idRG" Visible="False" />
                           <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                           <asp:BoundField DataField="CC" HeaderText="CENTRO COSTO" ReadOnly="True" SortExpression="CC" />
                           <asp:BoundField DataField="CCAUX" HeaderText="CC AUXILIAR" ReadOnly="True" SortExpression="CCAUX" />
                           <asp:BoundField DataField="idcategoria" HeaderText="COD. CATEGORIA" SortExpression="idcategoria" >
                           <HeaderStyle Font-Size="X-Small" />
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="FEMISION" HeaderText="F.EMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                           <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" ReadOnly="True" SortExpression="RAZONSOCIAL" />
                           <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N°COMP." SortExpression="NCOMPROBANTE" />
                             <asp:BoundField DataField="IMPBASE" HeaderText="IMP. BASE"  ReadOnly="True" SortExpression="IMPBASE" DataFormatString="{0:0,0.00}" >
                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                           </asp:BoundField>
                            <asp:BoundField DataField="IGV" HeaderText="IGV" SortExpression="IGV" DataFormatString="{0:0,0.00}" >
                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:BoundField DataField="IMPORTE" HeaderText="IMP. TOTAL" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                           </asp:BoundField>
                           <asp:BoundField DataField="DETRACCION" HeaderText="DETRACCION" SortExpression="DETRACCION" DataFormatString="{0:0,0.00}" >
                           <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                           </asp:BoundField>


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
                           </asp:TemplateField>
                          
                  
                         
                          <asp:BoundField DataField="ESTADOPRESTAMO" HeaderText="ESTADOPRESTAMO" SortExpression="ESTADOPRESTAMO" Visible="False" />
                           <asp:BoundField DataField="autor" HeaderText="autor" SortExpression="autor" Visible="False" />
                           <asp:BoundField DataField="TPDOC" HeaderText="COD. TIPO DOCUMENTO" SortExpression="TPDOC" >
                           <HeaderStyle Font-Size="XX-Small" />
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:BoundField>
                           <asp:CheckBoxField DataField="EST" HeaderText="EST" SortExpression="EST" Visible="False" />
                           <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
                           <ItemStyle Font-Size="XX-Small" />
                           </asp:BoundField>
                           
                           <asp:BoundField DataField="USUPRESTAMO" HeaderText="PRESTAMO" SortExpression="USUPRESTAMO" >
                           <HeaderStyle Font-Size="XX-Small" />
                           <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                           </asp:BoundField>

                            <asp:BoundField DataField="ESTADOPRESTAMO" HeaderText="COD.ESTADO PRESTAMO" SortExpression="PRESTAMO" >
                           <ItemStyle Font-Size="XX-Small" />
                           </asp:BoundField>
                             
                        
                       </Columns>
                       <EmptyDataTemplate>
                           No se encontraron registros...
                       </EmptyDataTemplate>
                   </asp:GridView>
               
                    (<asp:Label ID="lblnumregistros" runat="server"></asp:Label>
                    )&nbsp;registros encontrados.<br />
                    <asp:Panel ID="Panel1" runat="server">
                        Eliminar registro COD.:
                        <asp:Label ID="lblcodCint" runat="server"></asp:Label>
                        &nbsp; numero de comprobante:
                        <asp:Label ID="lblncomprobante" runat="server"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="lb_ElimRegistro" runat="server" OnClick="lb_ElimRegistro_Click">Eliminar registro</asp:LinkButton>
                    </asp:Panel>
                    DOC.
                    ESTADO COMPRA: COMPRAS BIOTECH
                    (1)&nbsp;|&nbsp; PRESTAMO POR DEVOLVER 
                    (3)&nbsp;<br />
               
                    <asp:SqlDataSource ID="SqlDataSourceComInt" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ComprasInt" SelectCommandType="StoredProcedure"
                        UpdateCommand="UPDATE tb_rddetalle SET idcategoria =@idcategoria,fecharegistro=@FEMISION, descripcion=@DESCRIPCION,Ncomprobante=@NCOMPROBANTE,igv=@IGV,importe=@IMPORTE,IdrucProveedor=@RUC,TipoDocumento=@TPDOC,impDetraccion=@DETRACCION,moneda=@M,idUsuarioPrestamo=@USUPRESTAMO,EstadoPrestamo=@EstadoPrestamo WHERE idRGdetalle =@idRGdetalle" DeleteCommand="DELETE tb_rddetalle where  idRGdetalle =@idRGdetalle
">
                       
                        <DeleteParameters>
                            <asp:Parameter Name="idRGdetalle" />
                        </DeleteParameters>
                       
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
                            <asp:Parameter Name="IGV" Type="Decimal" />
                           <asp:Parameter Name="IMPORTE" Type="Decimal" />
                           <asp:Parameter Name="RUC" Type="String"/>
                           <asp:Parameter Name="TPDOC" Type="String" />
                           <asp:Parameter Name="DETRACCION" Type="Decimal"  />
                           <asp:Parameter Name="M" Type="String"/>
                              <asp:Parameter Name="USUPRESTAMO" Type="String" />
                              <asp:Parameter Name="EstadoPrestamo" Type="Int32" />
                           <asp:Parameter Name="idRGdetalle" Type="Int32" />
                       </UpdateParameters>
                   </asp:SqlDataSource>
               
                    <br />
               
               </div>
             <div class="row">

             </div>
</div>


  
  








</asp:Content>
