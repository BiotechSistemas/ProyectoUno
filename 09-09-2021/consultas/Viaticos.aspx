<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Viaticos.aspx.cs" Inherits="biotech.consultas.Viaticos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Rend. Gastos</title>
    
     <!-- Bootstrap Core CSS -->
    <link href="../bio/vendorF/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../bio/vendorF/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../bio/dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../bio/vendorF/morrisjs/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="../bio/vendorF/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style1 {
            width: 400px;
        }
        .auto-style2 {
            width: 62px;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
       <div class="container-fluid">

            <div class="panel panel-default">
            
 


           <div class="panel-body"> 
               
                 <div class="row">
 <div class="col-md-7">
     <div class="panel panel-default">
      <div class="panel-heading"><i class="fa fa-external-link"></i> RESUMEN GENERAL:
                <asp:Label ID="lblmes" runat="server"></asp:Label>
                -<asp:Label ID="lblano" runat="server"></asp:Label>
&nbsp;<small><asp:Label ID="lblcodpersonal" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>

                        <asp:Label ID="lblidrendiciongastos" runat="server" Visible="False"></asp:Label></small>
                            <asp:Label ID="lblperiodo" runat="server" Visible="False"></asp:Label>
                <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
               </div>

        <asp:GridView ID="GridViewDetalle" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Dotted" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Horizontal" ShowHeader="False" Width="100%" OnRowDataBound="GridViewDetalle_RowDataBound" ShowFooter="True">
                <Columns>
                    <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" Visible="False" />
                    <asp:BoundField DataField="DESCAT" HeaderText="DESCAT" ReadOnly="True" SortExpression="DESCAT" />
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <FooterStyle ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rgSumRendGastos" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidrendiciongastos" Name="idrendicion" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>





            <small><asp:Label ID="Label3" runat="server" Text="*  Total por abonar no incluye gasto PETROTHOR" ForeColor="#990000"></asp:Label>
            <asp:Label ID="lblmensaje" runat="server" Visible="False" ForeColor="#990000"></asp:Label>
                </small>


     </div>
     </div>
                      <div class="col-md-5">

                          <small> <div class="panel panel-default">
                          <table class="auto-style1">
                              <tr>
                                  <td class="auto-style2"><strong>USUARIO</strong></td>
                                  <td>:</td>
                                  <td colspan="3">


                                      <asp:Label ID="lblpersonal" runat="server"></asp:Label>
                                      
                                  </td>
                                  <td>


                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td class="auto-style2"><strong>CARGO</strong></td>
                                  <td>:</td>
                                  <td colspan="3">


                <strong class="auto-style17">
                            <asp:Label ID="lblcargo" runat="server"></asp:Label>
                            <asp:Label ID="lblidd" runat="server" Visible="False"></asp:Label>
                                      </strong>
                                  </td>
                                  <td>


                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td class="auto-style2"><strong>VIÁTICO</strong></td>
                                  <td>&nbsp;</td>
                                  <td><strong>ASIGNADO</strong></td>
                                  <td><strong>ACTUAL</strong></td>
                                  <td><strong>POR NIVELAR</strong></td>
                                  <td>&nbsp;</td>
                              </tr>
                              <tr>
                                  <td class="auto-style2"><strong>IMPORTE</strong></td>
                                  <td>:</td>
                                  <td>
                            <asp:Label ID="lblviaticoxNivelar" runat="server" CssClass="auto-style16"></asp:Label>
                                  </td>
                                  <td>
                            <asp:Label ID="lblttgastado" runat="server"></asp:Label>
                                  </td>
                                  <td>
                            <asp:Label ID="lblttnivelar" runat="server" Font-Bold="True"></asp:Label>


                                  </td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td class="auto-style2">&nbsp;</td>
                                  <td>&nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td class="auto-style2">PETROTHOR</td>
                                  <td>:</td>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      <asp:Label ID="lblttpetrothor" runat="server" ForeColor="#006600"></asp:Label>
                                  </td>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                              <tr>
                                  <td class="auto-style2"><strong>TT.GASTO</strong></td>
                                  <td>:</td>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      <asp:Label ID="lblgastototal" runat="server" style="font-weight: 700"></asp:Label>
                                  </td>
                                  <td>
                                      &nbsp;</td>
                                  <td>
                                      &nbsp;</td>
                              </tr>
                          </table></div>
                              </small>

                          </div>

                 </div>



            

            </div>
            </div>
      
                
            <div class="panel panel-default">
  <div class="panel-heading"><i class="fa fa-list-alt"></i> DETALLE DE GASTOS REALIZADOS</div>
  1.- GASTOS DE MOVILIDAD (peaje, estacionamiento):<asp:Panel ID="Panel2" runat="server" Width="100%">
       
      <div class="table-responsive">
        <asp:GridView ID="GridView2" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource2"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView2_RowCommand" OnRowDataBound="GridView2_RowDataBound" style="font-size: x-small" Width="100%" Font-Size="X-Small">
            <Columns>
                 <asp:CommandField ShowEditButton="True"  ButtonType="Button" >
                 <HeaderStyle Width="40px" />
                 <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                 </asp:CommandField>
                 <asp:ButtonField ButtonType="Image" CommandName="aprobar" HeaderText="" ImageUrl="~/images/aprobar.png" ShowHeader="True" Text="Aprobar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:ButtonField ButtonType="Image" CommandName="observar" HeaderText="" ImageUrl="~/images/observar.png" ShowHeader="True" Text="Observar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" >
                 <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                 <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}"  ReadOnly="True" HeaderText="FECHA" SortExpression="FECHAREG" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="DESCRIPCION" HeaderText="ORIGEN/DESTINO"  ReadOnly="True"  SortExpression="DESCRIPCION" />
                 <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO"  ReadOnly="True" SortExpression="MOTIVO" >
                 <ItemStyle Font-Size="X-Small" />
                 </asp:BoundField>
                 <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" ReadOnly="True" SortExpression="KMFACT" Visible="False" />
                 <asp:BoundField DataField="GALFACT" HeaderText="GALFACT"  ReadOnly="True" SortExpression="GALFACT" Visible="False" />
                 <asp:TemplateField HeaderText="TIPO DOC." SortExpression="TIPODOC">
                     <EditItemTemplate>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" DataValueField="id" SelectedValue='<%# Bind("TIPODOC") %>'>
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("TIPODOC") %>'></asp:Label>
                         .
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:TemplateField>
                 <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB." SortExpression="NCOMPROBANTE" />
             <%--     <asp:TemplateField HeaderText="COD CC" SortExpression="idCCD">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSourceDET" DataTextField="DETALLE" DataValueField="idCentroDetalle" SelectedValue='<%# Bind("idCCD") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSourceDET" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos.CentroCostosconcar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("DETCCD") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>--%>
                 <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}"  ReadOnly="True"  HeaderText="IMP. BASE" SortExpression="IMPORTE">
                 <HeaderStyle Width="80px" />
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}"   HeaderText="IGV" SortExpression="IGV">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}"    HeaderText="IMP. TT." SortExpression="SUBTT">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
              
               <asp:BoundField DataField="IDCONCARDCCD" HeaderText="IDCONCARDCCD" Visible="False"  SortExpression="IDCONCARDCCD" />
              

                 <asp:CheckBoxField DataField="ESTADO"  ReadOnly="True" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                 <ItemStyle HorizontalAlign="Center"  VerticalAlign="Middle" />
                 </asp:CheckBoxField>
                 <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" ReadOnly="True">
                     <ControlStyle Height="20px" Width="20px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:ImageField>
            </Columns>
            <EmptyDataTemplate>
                <strong>Sin registro...</strong>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE tb_rddetalle SET importe=@SUBTT , Ncomprobante= @NCOMPROBANTE, IdrucProveedor=@RUC,TipoDocumento=@TIPODOC,igv=@igv WHERE idRGdetalle=@CODDET">
            <SelectParameters>
               
                 <asp:ControlParameter ControlID="lblidrendiciongastos" Name="idRG" PropertyName="Text" Type="Int32" />
                <asp:Parameter DefaultValue="1" Name="idcategoria" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="SUBTT" />
                <asp:Parameter Name="NCOMPROBANTE" />
                 <asp:Parameter Name="igv" />
                <asp:Parameter Name="RUC" />
                <asp:Parameter Name="CODDET" />
                <asp:Parameter Name="TIPODOC" />
                
            </UpdateParameters>
        </asp:SqlDataSource>
          </div>
        <div class="auto-style24">
            Total <span>Observados:</span>
            <asp:Label ID="lblobserg1" runat="server" ForeColor="#990000"></asp:Label>
            , Aprobados:
            <asp:Label ID="lblaprog1" runat="server"></asp:Label>
        </div>
    </asp:Panel>

      <asp:Panel ID="Panel3" runat="server" Width="100%">
        
       
        <br />

          2.- GASTOS DE COMBUSTIBLE:<div class="table-responsive">
        <asp:GridView ID="GridView3" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODDET" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView3_RowCommand" OnRowDataBound="GridView3_RowDataBound" style="font-size: x-small" Width="100%" Font-Size="X-Small">
             <Columns>
                 <asp:CommandField ShowEditButton="True"  ButtonType="Button" >
                 <HeaderStyle Width="40px" />
                 <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                 </asp:CommandField>
                 <asp:ButtonField ButtonType="Image" CommandName="aprobar" HeaderText="" ImageUrl="~/images/aprobar.png" ShowHeader="True" Text="Aprobar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:ButtonField ButtonType="Image" CommandName="observar" HeaderText="" ImageUrl="~/images/observar.png" ShowHeader="True" Text="Observar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" >
                 <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                 <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}"  ReadOnly="True" HeaderText="FECHA" SortExpression="FECHAREG" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="DESCRIPCION" HeaderText="ORIGEN/DESTINO"  ReadOnly="True"  SortExpression="DESCRIPCION" />
                 <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO"  ReadOnly="True" SortExpression="MOTIVO" >
                 <ItemStyle Font-Size="X-Small" />
                 </asp:BoundField>
                 <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" ReadOnly="True" SortExpression="KMFACT" Visible="False" />
                 <asp:BoundField DataField="GALFACT" HeaderText="GALFACT"  ReadOnly="True" SortExpression="GALFACT" Visible="False" />
                 <asp:TemplateField HeaderText="TIPO DOC." SortExpression="TIPODOC">
                     <EditItemTemplate>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" DataValueField="id" SelectedValue='<%# Bind("TIPODOC") %>'>
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("TIPODOC") %>'></asp:Label>
                         .
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:TemplateField>
                 <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB." SortExpression="NCOMPROBANTE" />
                
                 <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" ReadOnly="True"  HeaderText="IMP. BASE" SortExpression="IMPORTE">
                 <HeaderStyle Width="80px" />
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}"   HeaderText="IGV" SortExpression="IGV">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}"   HeaderText="IMP. TT." SortExpression="SUBTT">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
              
               <asp:BoundField DataField="IDCONCARDCCD" HeaderText="IDCONCARDCCD" Visible="False"  SortExpression="IDCONCARDCCD" />
              

                 <asp:CheckBoxField DataField="ESTADO"  ReadOnly="True" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                 <ItemStyle HorizontalAlign="Center"  VerticalAlign="Middle" />
                 </asp:CheckBoxField>
                 <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" ReadOnly="True">
                     <ControlStyle Height="20px" Width="20px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:ImageField>
            </Columns>
            <EmptyDataTemplate>
                <strong>Sin registro...</strong>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE tb_rddetalle SET importe=@SUBTT , Ncomprobante= @NCOMPROBANTE, IdrucProveedor=@RUC,TipoDocumento=@TIPODOC,igv=@igv WHERE idRGdetalle=@CODDET">
            <SelectParameters>
               
                 <asp:ControlParameter ControlID="lblidrendiciongastos" Name="idRG" PropertyName="Text" Type="Int32" />
                <asp:Parameter DefaultValue="2" Name="idcategoria" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
               <asp:Parameter Name="SUBTT" />
                <asp:Parameter Name="NCOMPROBANTE" />
                 <asp:Parameter Name="igv" />
                <asp:Parameter Name="RUC" />
                <asp:Parameter Name="CODDET" />
                <asp:Parameter Name="TIPODOC" />
                
            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
        <div class="auto-style26">
            Total <span class="auto-style25">Observados: </span>
            <asp:Label ID="lblobserg2" runat="server" ForeColor="#990000"></asp:Label>
            , Aprobados:
            <asp:Label ID="lblaprog2" runat="server"></asp:Label>
        </div>
    </asp:Panel>





      <asp:Panel ID="Panel4" runat="server" Width="100%">
       
        <br />
        3. GASTOS DE ALIMENTACIÓN:<div class="table-responsive">
        <asp:GridView ID="GridView4" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource4" style="font-size: x-small"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" OnRowCommand="GridView4_RowCommand" OnRowDataBound="GridView4_RowDataBound" Font-Size="X-Small">
             <Columns>
                 <asp:CommandField ShowEditButton="True"  ButtonType="Button" >
                 <HeaderStyle Width="40px" />
                 <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                 </asp:CommandField>
                 <asp:ButtonField ButtonType="Image" CommandName="aprobar" HeaderText="" ImageUrl="~/images/aprobar.png" ShowHeader="True" Text="Aprobar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:ButtonField ButtonType="Image" CommandName="observar" HeaderText="" ImageUrl="~/images/observar.png" ShowHeader="True" Text="Observar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" >
                 <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                 <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}"  ReadOnly="True" HeaderText="FECHA" SortExpression="FECHAREG" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="DESCRIPCION" HeaderText="ORIGEN/DESTINO"  ReadOnly="True"  SortExpression="DESCRIPCION" />
                 <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO"  ReadOnly="True" SortExpression="MOTIVO" >
                 <ItemStyle Font-Size="X-Small" />
                 </asp:BoundField>
                 <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" ReadOnly="True" SortExpression="KMFACT" Visible="False" />
                 <asp:BoundField DataField="GALFACT" HeaderText="GALFACT"  ReadOnly="True" SortExpression="GALFACT" Visible="False" />
                 <asp:TemplateField HeaderText="TIPO DOC." SortExpression="TIPODOC">
                     <EditItemTemplate>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" DataValueField="id" SelectedValue='<%# Bind("TIPODOC") %>'>
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("TIPODOC") %>'></asp:Label>
                         .
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:TemplateField>
                 <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB." SortExpression="NCOMPROBANTE" />
                
                 <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" ReadOnly="True"  HeaderText="IMP. BASE" SortExpression="IMPORTE">
                 <HeaderStyle Width="80px" />
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}"   HeaderText="IGV" SortExpression="IGV">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}"  HeaderText="IMP. TT." SortExpression="SUBTT">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
              
               <asp:BoundField DataField="IDCONCARDCCD" HeaderText="IDCONCARDCCD" Visible="False"  SortExpression="IDCONCARDCCD" />
              

                 <asp:CheckBoxField DataField="ESTADO"  ReadOnly="True" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                 <ItemStyle HorizontalAlign="Center"  VerticalAlign="Middle" />
                 </asp:CheckBoxField>
                 <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" ReadOnly="True">
                     <ControlStyle Height="20px" Width="20px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:ImageField>
            </Columns>
            <EmptyDataTemplate>
                <strong>Sin registro...</strong>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE tb_rddetalle SET importe=@SUBTT , Ncomprobante= @NCOMPROBANTE, IdrucProveedor=@RUC,TipoDocumento=@TIPODOC,igv=@igv WHERE idRGdetalle=@CODDET">
            <SelectParameters>
               
                 <asp:ControlParameter ControlID="lblidrendiciongastos" Name="idRG" PropertyName="Text" Type="Int32" />
                <asp:Parameter DefaultValue="4" Name="idcategoria" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
               <asp:Parameter Name="SUBTT" />
                <asp:Parameter Name="NCOMPROBANTE" />
                 <asp:Parameter Name="igv" />
                <asp:Parameter Name="RUC" />
                <asp:Parameter Name="CODDET" />
                <asp:Parameter Name="TIPODOC" />
              
            </UpdateParameters>
        </asp:SqlDataSource>
               </div>
        <div class="auto-style27">
            Total <span class="auto-style25">Observados: </span>
            <asp:Label ID="lblobserg3" runat="server" ForeColor="#990000"></asp:Label>
            , Aprobados :
            <asp:Label ID="lblaprog3" runat="server"></asp:Label>
        </div>
    </asp:Panel>

      <asp:Panel ID="Panel5" runat="server" Width="100%">
        
        <br />
        4. GASTOS DE REPRESENTACIÓN:<span style="color: rgb(0, 0, 0); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: x-small; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">626101</span> 
           <div class="table-responsive">
        <asp:GridView ID="GridView5" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="CODDET" DataSourceID="SqlDataSource5" style="font-size: x-small; margin-right: 1px;"  BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" OnRowCommand="GridView5_RowCommand" OnRowDataBound="GridView5_RowDataBound">
             <Columns>
                 <asp:CommandField ShowEditButton="True"  ButtonType="Button" >
                 <HeaderStyle Width="40px" />
                 <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                 </asp:CommandField>
                 <asp:ButtonField ButtonType="Image" CommandName="aprobar" HeaderText="" ImageUrl="~/images/aprobar.png" ShowHeader="True" Text="Aprobar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:ButtonField ButtonType="Image" CommandName="observar" HeaderText="" ImageUrl="~/images/observar.png" ShowHeader="True" Text="Observar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" >
                 <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                 <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}"  ReadOnly="True" HeaderText="FECHA" SortExpression="FECHAREG" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="DESCRIPCION" HeaderText="ORIGEN/DESTINO"  ReadOnly="True"  SortExpression="DESCRIPCION" />
                 <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO"  ReadOnly="True" SortExpression="MOTIVO" >
                 <ItemStyle Font-Size="X-Small" />
                 </asp:BoundField>
                 <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" ReadOnly="True" SortExpression="KMFACT" Visible="False" />
                 <asp:BoundField DataField="GALFACT" HeaderText="GALFACT"  ReadOnly="True" SortExpression="GALFACT" Visible="False" />
                 <asp:TemplateField HeaderText="TIPO DOC." SortExpression="TIPODOC">
                     <EditItemTemplate>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" DataValueField="id" SelectedValue='<%# Bind("TIPODOC") %>'>
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("TIPODOC") %>'></asp:Label>
                         .
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:TemplateField>
                 <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB." SortExpression="NCOMPROBANTE" />
                
                 <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" ReadOnly="True"  HeaderText="IMP. BASE" SortExpression="IMPORTE">
                 <HeaderStyle Width="80px" />
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}"   HeaderText="IGV" SortExpression="IGV">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}"    HeaderText="IMP. TT." SortExpression="SUBTT">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
              
               <asp:BoundField DataField="IDCONCARDCCD" HeaderText="IDCONCARDCCD" Visible="False"  SortExpression="IDCONCARDCCD" />
              

                 <asp:CheckBoxField DataField="ESTADO"  ReadOnly="True" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                 <ItemStyle HorizontalAlign="Center"  VerticalAlign="Middle" />
                 </asp:CheckBoxField>
                 <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" ReadOnly="True">
                     <ControlStyle Height="20px" Width="20px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:ImageField>
            </Columns>
            <EmptyDataTemplate>
                <strong>Sin registro...</strong>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE tb_rddetalle SET importe=@SUBTT , Ncomprobante= @NCOMPROBANTE, IdrucProveedor=@RUC,TipoDocumento=@TIPODOC,igv=@igv WHERE idRGdetalle=@CODDET">
            <SelectParameters>
               
                 <asp:ControlParameter ControlID="lblidrendiciongastos" Name="idRG" PropertyName="Text" Type="Int32" />
                <asp:Parameter DefaultValue="6" Name="idcategoria" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
              <asp:Parameter Name="SUBTT" />
                <asp:Parameter Name="NCOMPROBANTE" />
                 <asp:Parameter Name="igv" />
                <asp:Parameter Name="RUC" />
                <asp:Parameter Name="CODDET" />
                <asp:Parameter Name="TIPODOC" />
               
            </UpdateParameters>
        </asp:SqlDataSource>
               </div>
        <div class="auto-style28">
            Total <span class="auto-style25">Observados: </span>
            <asp:Label ID="lblobserg4" runat="server" ForeColor="#990000"></asp:Label>
            , Aprobados:
            <asp:Label ID="lblaprog4" runat="server"></asp:Label>
        </div>
    </asp:Panel>
    <asp:Panel ID="Panel6" runat="server" Width="100%">
        
       
        <br />
        5.- GASTOS DE PASAJES: 
         <div class="table-responsive">
        <asp:GridView ID="GridView6" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODDET" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView6_RowCommand" OnRowDataBound="GridView6_RowDataBound" style="font-size: x-small" Width="100%" Font-Size="X-Small">
            <Columns>
                 <asp:CommandField ShowEditButton="True"  ButtonType="Button" >
                 <HeaderStyle Width="40px" />
                 <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                 </asp:CommandField>
                 <asp:ButtonField ButtonType="Image" CommandName="aprobar" HeaderText="" ImageUrl="~/images/aprobar.png" ShowHeader="True" Text="Aprobar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:ButtonField ButtonType="Image" CommandName="observar" HeaderText="" ImageUrl="~/images/observar.png" ShowHeader="True" Text="Observar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" >
                 <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                 <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}"  ReadOnly="True" HeaderText="FECHA" SortExpression="FECHAREG" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="DESCRIPCION" HeaderText="ORIGEN/DESTINO"  ReadOnly="True"  SortExpression="DESCRIPCION" />
                 <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO"  ReadOnly="True" SortExpression="MOTIVO" >
                 <ItemStyle Font-Size="X-Small" />
                 </asp:BoundField>
                 <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" ReadOnly="True" SortExpression="KMFACT" Visible="False" />
                 <asp:BoundField DataField="GALFACT" HeaderText="GALFACT"  ReadOnly="True" SortExpression="GALFACT" Visible="False" />
                 <asp:TemplateField HeaderText="TIPO DOC." SortExpression="TIPODOC">
                     <EditItemTemplate>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" DataValueField="id" SelectedValue='<%# Bind("TIPODOC") %>'>
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("TIPODOC") %>'></asp:Label>
                         .
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:TemplateField>
                 <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB." SortExpression="NCOMPROBANTE" />
                 
                 <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" ReadOnly="True"  HeaderText="IMP. BASE" SortExpression="IMPORTE">
                 <HeaderStyle Width="80px" />
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}"   HeaderText="IGV" SortExpression="IGV">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}"   HeaderText="IMP. TT." SortExpression="SUBTT">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
              
               <asp:BoundField DataField="IDCONCARDCCD" HeaderText="IDCONCARDCCD" Visible="False"  SortExpression="IDCONCARDCCD" />
              

                 <asp:CheckBoxField DataField="ESTADO"  ReadOnly="True" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                 <ItemStyle HorizontalAlign="Center"  VerticalAlign="Middle" />
                 </asp:CheckBoxField>
                 <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" ReadOnly="True">
                     <ControlStyle Height="20px" Width="20px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:ImageField>
            </Columns>
            <EmptyDataTemplate>
                <strong>Sin registro...</strong>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE tb_rddetalle SET importe=@SUBTT , Ncomprobante= @NCOMPROBANTE, IdrucProveedor=@RUC,TipoDocumento=@TIPODOC,igv=@igv WHERE idRGdetalle=@CODDET">
            <SelectParameters>
               
                 <asp:ControlParameter ControlID="lblidrendiciongastos" Name="idRG" PropertyName="Text" Type="Int32" />
                <asp:Parameter DefaultValue="7" Name="idcategoria" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
               <asp:Parameter Name="SUBTT" />
                <asp:Parameter Name="NCOMPROBANTE" />
                 <asp:Parameter Name="igv" />
                <asp:Parameter Name="RUC" />
                <asp:Parameter Name="CODDET" />
                <asp:Parameter Name="TIPODOC" />
               
            </UpdateParameters>
        </asp:SqlDataSource>
             </div>
        <div class="auto-style29">
            Total <span class="auto-style25">Observados: </span>
            <asp:Label ID="lblobserg5" runat="server" ForeColor="#990000"></asp:Label>
            , Aprobados:
            <asp:Label ID="lblaprog5" runat="server"></asp:Label>
        </div>
    </asp:Panel>
            <asp:Panel ID="Panel7" runat="server" Width="100%">
               
                <br />
                6.- GASTOS DE ALOJAMIENTO: 
                 <div class="table-responsive">
                <asp:GridView ID="GridView7" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODDET" DataSourceID="SqlDataSource9" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView7_RowCommand" OnRowDataBound="GridView7_RowDataBound" style="font-size: x-small" Width="100%" Font-Size="X-Small">
                    <Columns>
                 <asp:CommandField ShowEditButton="True"  ButtonType="Button" >
                 <HeaderStyle Width="40px" />
                 <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                 </asp:CommandField>
                 <asp:ButtonField ButtonType="Image" CommandName="aprobar" HeaderText="" ImageUrl="~/images/aprobar.png" ShowHeader="True" Text="Aprobar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:ButtonField ButtonType="Image" CommandName="observar" HeaderText="" ImageUrl="~/images/observar.png" ShowHeader="True" Text="Observar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" >
                 <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                 <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}"  ReadOnly="True" HeaderText="FECHA" SortExpression="FECHAREG" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="DESCRIPCION" HeaderText="ORIGEN/DESTINO"  ReadOnly="True"  SortExpression="DESCRIPCION" />
                 <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO"  ReadOnly="True" SortExpression="MOTIVO" >
                 <ItemStyle Font-Size="X-Small" />
                 </asp:BoundField>
                 <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" ReadOnly="True" SortExpression="KMFACT" Visible="False" />
                 <asp:BoundField DataField="GALFACT" HeaderText="GALFACT"  ReadOnly="True" SortExpression="GALFACT" Visible="False" />
                 <asp:TemplateField HeaderText="TIPO DOC." SortExpression="TIPODOC">
                     <EditItemTemplate>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" DataValueField="id" SelectedValue='<%# Bind("TIPODOC") %>'>
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("TIPODOC") %>'></asp:Label>
                         .
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:TemplateField>
                 <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB." SortExpression="NCOMPROBANTE" />
                 
                 <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" ReadOnly="True"  HeaderText="IMP. BASE" SortExpression="IMPORTE">
                 <HeaderStyle Width="80px" />
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}"   HeaderText="IGV" SortExpression="IGV">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}"  HeaderText="IMP. TT." SortExpression="SUBTT">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
              
               <asp:BoundField DataField="IDCONCARDCCD" HeaderText="IDCONCARDCCD" Visible="False"  SortExpression="IDCONCARDCCD" />
              

                 <asp:CheckBoxField DataField="ESTADO"  ReadOnly="True" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                 <ItemStyle HorizontalAlign="Center"  VerticalAlign="Middle" />
                 </asp:CheckBoxField>
                 <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" ReadOnly="True">
                     <ControlStyle Height="20px" Width="20px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:ImageField>
            </Columns>
            <EmptyDataTemplate>
                <strong>Sin registro...</strong>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE tb_rddetalle SET importe=@SUBTT , Ncomprobante= @NCOMPROBANTE, IdrucProveedor=@RUC,TipoDocumento=@TIPODOC,igv=@igv WHERE idRGdetalle=@CODDET">
            <SelectParameters>
               
                 <asp:ControlParameter ControlID="lblidrendiciongastos" Name="idRG" PropertyName="Text" Type="Int32" />
                        <asp:Parameter DefaultValue="3" Name="idcategoria" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                       <asp:Parameter Name="SUBTT" />
                <asp:Parameter Name="NCOMPROBANTE" />
                 <asp:Parameter Name="igv" />
                <asp:Parameter Name="RUC" />
                <asp:Parameter Name="CODDET" />
                <asp:Parameter Name="TIPODOC" />
                
                    </UpdateParameters>
                </asp:SqlDataSource>
                     </div>
                <div class="auto-style29">
                    Total <span class="auto-style25">Observados: </span>
                    <asp:Label ID="lblobserg6" runat="server" ForeColor="#990000"></asp:Label>
                    , Aprobados:
                    <asp:Label ID="lblaprog6" runat="server"></asp:Label>
                </div>
            </asp:Panel>
            
                <asp:Panel ID="Panel19" runat="server" Width="100%">
                
                <br />
                    7.- GASTOS POR VIAJES: <small>(Pasajes,alojamiento,alimentación,otros)</small>
                 <div class="table-responsive">
                <asp:GridView ID="GridView19" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODDET" DataSourceID="SqlDataSource11" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView8_RowCommand" OnRowDataBound="GridView8_RowDataBound" style="font-size: x-small" Width="100%" Font-Size="X-Small">
                    <Columns>
                 <asp:CommandField ShowEditButton="True"  ButtonType="Button" >
                 <HeaderStyle Width="40px" />
                 <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                 </asp:CommandField>
                 <asp:ButtonField ButtonType="Image" CommandName="aprobar" HeaderText="" ImageUrl="~/images/aprobar.png" ShowHeader="True" Text="Aprobar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:ButtonField ButtonType="Image" CommandName="observar" HeaderText="" ImageUrl="~/images/observar.png" ShowHeader="True" Text="Observar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" >
                 <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                 <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}"  ReadOnly="True" HeaderText="FECHA" SortExpression="FECHAREG" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="DESCRIPCION" HeaderText="ORIGEN/DESTINO"  ReadOnly="True"  SortExpression="DESCRIPCION" />
                 <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO"  ReadOnly="True" SortExpression="MOTIVO" >
                 <ItemStyle Font-Size="X-Small" />
                 </asp:BoundField>
                 <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" ReadOnly="True" SortExpression="KMFACT" Visible="False" />
                 <asp:BoundField DataField="GALFACT" HeaderText="GALFACT"  ReadOnly="True" SortExpression="GALFACT" Visible="False" />
                 <asp:TemplateField HeaderText="TIPO DOC." SortExpression="TIPODOC">
                     <EditItemTemplate>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" DataValueField="id" SelectedValue='<%# Bind("TIPODOC") %>'>
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("TIPODOC") %>'></asp:Label>
                         .
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:TemplateField>
                 <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB." SortExpression="NCOMPROBANTE" />
                 
                 <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" ReadOnly="True"  HeaderText="IMP. BASE" SortExpression="IMPORTE">
                 <HeaderStyle Width="80px" />
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}"   HeaderText="IGV" SortExpression="IGV">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}" HeaderText="IMP. TT." SortExpression="SUBTT">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
              
               <asp:BoundField DataField="IDCONCARDCCD" HeaderText="IDCONCARDCCD" Visible="False"  SortExpression="IDCONCARDCCD" />
              

                 <asp:CheckBoxField DataField="ESTADO"  ReadOnly="True" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                 <ItemStyle HorizontalAlign="Center"  VerticalAlign="Middle" />
                 </asp:CheckBoxField>
                 <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" ReadOnly="True">
                     <ControlStyle Height="20px" Width="20px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:ImageField>
            </Columns>
            <EmptyDataTemplate>
                <strong>Sin registro...</strong>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource11" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE tb_rddetalle SET importe=@SUBTT , Ncomprobante= @NCOMPROBANTE, IdrucProveedor=@RUC,TipoDocumento=@TIPODOC,igv=@igv WHERE idRGdetalle=@CODDET">
            <SelectParameters>
               
                 <asp:ControlParameter ControlID="lblidrendiciongastos" Name="idRG" PropertyName="Text" Type="Int32" />
                        <asp:Parameter DefaultValue="19" Name="idcategoria" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="SUBTT" />
                <asp:Parameter Name="NCOMPROBANTE" />
                 <asp:Parameter Name="igv" />
                <asp:Parameter Name="RUC" />
                <asp:Parameter Name="CODDET" />
                <asp:Parameter Name="TIPODOC" />
             
                        
                    </UpdateParameters>
                </asp:SqlDataSource>
                     </div>
                <div class="auto-style29">
                    Total <span class="auto-style25">Observados: </span>
                    <asp:Label ID="lblobserg8" runat="server" ForeColor="#990000">0</asp:Label>
                    , Aprobados:
                    <asp:Label ID="lblaprog8" runat="server">0</asp:Label>
                </div>
            </asp:Panel>

                <asp:Panel ID="Panel1" runat="server" Width="100%">
                
                <br />
                    8.- GASTOS UNIDAD VEHICULAR: <small>(Lavado de unidad, compras y otros)</small>
                 <div class="table-responsive">
                <asp:GridView ID="gvGastosUnidad" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODDET" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Horizontal" OnRowCommand="gvGastosUnidad_RowCommand" OnRowDataBound="gvGastosUnidad_RowDataBound" style="font-size: x-small" Width="100%" Font-Size="X-Small">
                     <Columns>
                 <asp:CommandField ShowEditButton="True"  ButtonType="Button" >
                 <HeaderStyle Width="40px" />
                 <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                 </asp:CommandField>
                 <asp:ButtonField ButtonType="Image" CommandName="aprobar" HeaderText="" ImageUrl="~/images/aprobar.png" ShowHeader="True" Text="Aprobar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:ButtonField ButtonType="Image" CommandName="observar" HeaderText="" ImageUrl="~/images/observar.png" ShowHeader="True" Text="Observar">
                 <ControlStyle Height="20px" Width="20px" />
                 <HeaderStyle Width="22px" />
                 </asp:ButtonField>
                 <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET" >
                 <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                 <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}"  ReadOnly="True" HeaderText="FECHA" SortExpression="FECHAREG" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                 <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="DESCRIPCION" HeaderText="ORIGEN/DESTINO"  ReadOnly="True"  SortExpression="DESCRIPCION" />
                 <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO"  ReadOnly="True" SortExpression="MOTIVO" >
                 <ItemStyle Font-Size="X-Small" />
                 </asp:BoundField>
                 <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" ReadOnly="True" SortExpression="KMFACT" Visible="False" />
                 <asp:BoundField DataField="GALFACT" HeaderText="GALFACT"  ReadOnly="True" SortExpression="GALFACT" Visible="False" />
                 <asp:TemplateField HeaderText="TIPO DOC." SortExpression="TIPODOC">
                     <EditItemTemplate>
                         <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" DataValueField="id" SelectedValue='<%# Bind("TIPODOC") %>'>
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label1" runat="server" Text='<%# Bind("TIPODOC") %>'></asp:Label>
                         .
                     </ItemTemplate>
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:TemplateField>
                 <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB." SortExpression="NCOMPROBANTE" />
                
                 <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" ReadOnly="True"  HeaderText="IMP. BASE" SortExpression="IMPORTE">
                 <HeaderStyle Width="80px" />
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}"   HeaderText="IGV" SortExpression="IGV">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}"  HeaderText="IMP. TT." SortExpression="SUBTT">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
              
               <asp:BoundField DataField="IDCONCARDCCD" HeaderText="IDCONCARDCCD" Visible="False"  SortExpression="IDCONCARDCCD" />
              

                 <asp:CheckBoxField DataField="ESTADO"  ReadOnly="True" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                 <ItemStyle HorizontalAlign="Center"  VerticalAlign="Middle" />
                 </asp:CheckBoxField>
                 <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" ReadOnly="True">
                     <ControlStyle Height="20px" Width="20px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:ImageField>
            </Columns>
            <EmptyDataTemplate>
                <strong>Sin registro...</strong>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE tb_rddetalle SET importe=@SUBTT , Ncomprobante= @NCOMPROBANTE, IdrucProveedor=@RUC,TipoDocumento=@TIPODOC,igv=@igv WHERE idRGdetalle=@CODDET">
            <SelectParameters>
               
                 <asp:ControlParameter ControlID="lblidrendiciongastos" Name="idRG" PropertyName="Text" Type="Int32" />
                        <asp:Parameter DefaultValue="20" Name="idcategoria" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                       <asp:Parameter Name="SUBTT" />
                <asp:Parameter Name="NCOMPROBANTE" />
                 <asp:Parameter Name="igv" />
                <asp:Parameter Name="RUC" />
                <asp:Parameter Name="CODDET" />
                <asp:Parameter Name="TIPODOC" />
               
                        
                    </UpdateParameters>
                </asp:SqlDataSource>
                     </div>
                <div class="auto-style29">
                    Total <span class="auto-style25">Observados: </span>
                    <asp:Label ID="lblobservagosGastosunidad" runat="server" ForeColor="#990000">0</asp:Label>
                    , Aprobados:
                    <asp:Label ID="lblAprobadoGastosunidad" runat="server">0</asp:Label>
                </div>
            </asp:Panel>

<asp:Panel ID="Panel8" runat="server" Width="100%">
                
                <br />
                9.- OTROS GASTOS: 
                 <div class="table-responsive">
                <asp:GridView ID="GridView8" runat="server" class="table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="CODDET" DataSourceID="SqlDataSource10" ForeColor="Black" GridLines="Horizontal" OnRowCommand="GridView8_RowCommand" OnRowDataBound="GridView8_RowDataBound" style="font-size: x-small" Width="100%" Font-Size="X-Small">
                    <Columns>
                  <%-- <asp:TemplateField HeaderText="NºCUENTA" SortExpression="idCCD">
                     <EditItemTemplate>
                         <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource20" DataTextField="descripcion" DataValueField="IDCENTRODETALLE" SelectedValue='<%# Bind("idCCD") %>'>
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="SqlDataSource20" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT IDCENTRODETALLE,concar,descripcion FROM gastos.CentroCostoDetalle WHERE estado = 1"></asp:SqlDataSource>
                     </EditItemTemplate>
                     <ItemTemplate>
                         <asp:Label ID="Label2" runat="server" Text='<%# Bind("IDCONCARDCCD") %>'></asp:Label>
                     </ItemTemplate>
                 </asp:TemplateField>--%>
                        <asp:CommandField ButtonType="Button" ShowEditButton="True">
                        <HeaderStyle Width="40px" />
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:CommandField>
                        <asp:ButtonField ButtonType="Image" CommandName="aprobar" HeaderText="" ImageUrl="~/images/aprobar.png" ShowHeader="True" Text="Aprobar">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="22px" />
                        </asp:ButtonField>
                        <asp:ButtonField ButtonType="Image" CommandName="observar" HeaderText="" ImageUrl="~/images/observar.png" ShowHeader="True" Text="Observar">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="22px" />
                        </asp:ButtonField>
                        <asp:BoundField DataField="CODDET" HeaderText="COD" ReadOnly="True" SortExpression="CODDET">
                        <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" Width="60px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CAT" HeaderText="CAT" SortExpression="CAT" Visible="False" />
                        <asp:BoundField DataField="FECHAREG" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" ReadOnly="True" SortExpression="FECHAREG">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="DESCRIPCION" HeaderText="ORIGEN/DESTINO" ReadOnly="True" SortExpression="DESCRIPCION" />
                        <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" ReadOnly="True" SortExpression="MOTIVO">
                        <ItemStyle Font-Size="X-Small" />
                        </asp:BoundField>
                        <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" ReadOnly="True" SortExpression="KMFACT" Visible="False" />
                        <asp:BoundField DataField="GALFACT" HeaderText="GALFACT" ReadOnly="True" SortExpression="GALFACT" Visible="False" />
                        <asp:TemplateField HeaderText="TIPO DOC." SortExpression="TIPODOC">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="DESCRIPCION" DataValueField="id" SelectedValue='<%# Bind("TIPODOC") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_CONCAR_tpdoc" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("COMPB") %>'></asp:Label>
                                .
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N° COMPROB." SortExpression="NCOMPROBANTE" />
                      
                 <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" ReadOnly="True"  HeaderText="IMP. BASE" SortExpression="IMPORTE">
                 <HeaderStyle Width="80px" />
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="IGV" DataFormatString="{0:0,0.00}"   HeaderText="IGV" SortExpression="IGV">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="SUBTT" DataFormatString="{0:0,0.00}"     HeaderText="IMP. TT." SortExpression="SUBTT">
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
              
               <asp:BoundField DataField="IDCONCARDCCD" HeaderText="IDCONCARDCCD" Visible="False"  SortExpression="IDCONCARDCCD" />
             <%-- <asp:BoundField DataField="DETCCD" HeaderText="C.COSTO"   SortExpression="DETCCD" />--%>

                 <asp:CheckBoxField DataField="ESTADO"  ReadOnly="True" HeaderText="EST" SortExpression="ESTADO" Visible="False">
                 <ItemStyle HorizontalAlign="Center"  VerticalAlign="Middle" />
                 </asp:CheckBoxField>
                 <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/nova{0}.png" ReadOnly="True">
                     <ControlStyle Height="20px" Width="20px" />
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:ImageField>
            </Columns>
            <EmptyDataTemplate>
                <strong>Sin registro...</strong>
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupoDetalle" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE tb_rddetalle SET importe=@SUBTT , Ncomprobante= @NCOMPROBANTE, IdrucProveedor=@RUC,TipoDocumento=@TIPODOC,igv=@igv WHERE idRGdetalle=@CODDET">
            <SelectParameters>
               
                 <asp:ControlParameter ControlID="lblidrendiciongastos" Name="idRG" PropertyName="Text" Type="Int32" />
                        <asp:Parameter DefaultValue="5" Name="idcategoria" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                       <asp:Parameter Name="SUBTT" />
                <asp:Parameter Name="NCOMPROBANTE" />
                 <asp:Parameter Name="igv" />
                <asp:Parameter Name="RUC" />
                <asp:Parameter Name="CODDET" />
                <asp:Parameter Name="TIPODOC" />
            
                    </UpdateParameters>
                </asp:SqlDataSource>
                     </div>
                <div class="auto-style29">
                    Total <span class="auto-style25">Observados: </span>
                    <asp:Label ID="lblobserg7" runat="server" ForeColor="#990000"></asp:Label>
                    , Aprobados:
                    <asp:Label ID="lblaprog7" runat="server"></asp:Label>
                </div>
            </asp:Panel>


 <%-- </div>--%>
</div>       
   
<div class="row">

    <a href="Javascript:window.close()">Cerrar</a>



</div>



         
    
    </div>
    </form>
</body>
</html>
