<%@ Page Title="" Language="C#" MasterPageFile="~/Almacen/MasterCentral.Master" AutoEventWireup="true" CodeBehind="Almacen.aspx.cs" Inherits="biotech.Almacen.Almacen" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    
     <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
    
   <%-- <link href="../scripts/jquery.dataTables.min.css" rel="stylesheet" />
    <script src="../scripts/jquery.dataTables.min.js"></script>--%>

    <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.10.0.min.js" type="text/javascript"></script>
<script src="https://cdn.datatables.net/1.10.13/js/jquery.dataTables.min.js" type="text/javascript"></script>
<link href="https://cdn.datatables.net/1.10.13/css/jquery.dataTables.min.css"
    rel="Stylesheet" type="text/css" />



   <%--cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js--%>


    <style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/images/searchicon.png');
  /*C:\Users\FLORES\Desktop\biotech\biotech\images\searchicon.png*/
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

</style>
      <script>


         $(document).ready(function () {
             $('#gvAlmacen').DataTable();
         });

    </script>


    <script type="text/javascript">
        $(function () {
            $("[id$=txtSearchProducto]").autocomplete({
                source: function (request, response) {
                    $.ajax({
                        url: '<%=ResolveUrl("~/admin/Almacen.aspx/GetCustomers") %>',
                        data: "{ 'prefix': '" + request.term + "'}",
                        dataType: "json",
                        type: "POST",
                        contentType: "application/json; charset=utf-8",
                        success: function (data) {
                            response($.map(data.d, function (item) {
                                return {
                                    label: item.split('-')[0],
                                    val: item.split('-')[1]
                                }
                            }))
                        },
                        error: function (response) {
                            alert(response.responseText);
                        },
                        failure: function (response) {
                            alert(response.responseText);
                        }
                    });
                },
                select: function (e, i) {
                    $("[id$=hfCustomerProducto]").val(i.item.val);
                },
                minLength: 1
            });
        });
</script>
    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style66 {
            width: 100%;
            border-style: solid;
            border-width: 1px;
            height: 73px;
        }
        .auto-style99 {
            text-align: center;
            background-color: #CCCCCC;
        }
       
        .auto-style105 {
            text-align: center;
            background-color: #B0C8C8;
            height: 21px;
        }
        .auto-style106 {
            height: 21px;
            background-color: #FFE6E6;
            text-align: center;
        }
               
        .auto-style103 {
            text-align: center;
        }
        .auto-style110 {
            width: 176px;
        }
       
        .auto-style104 {
            text-align: center;
            width: 3%;
            height: 21px;
            background-color: #B0C8C8;
        }
               
        .auto-style111 {
            text-align: center;
            width: 3%;
            height: 21px;
            background-color: #FFE6E6;
        }
       
        .auto-style87 {
            text-align: center;
            height: 21px;
            width: 176px;
        }
               
        .auto-style114 {
            text-align: center;
            height: 21px;
        }
        .auto-style115 {
            height: 21px;
        }
        .auto-style116 {
            width: 3%;
            text-align: center;
            background-color: #E1ECEC;
            height: 21px;
        }
       
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        &nbsp;<%--<input type="text" id="Text1" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">--%><asp:Panel ID="Panel2" runat="server" Visible="False">
            <asp:Label ID="lblalmacen" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblpresent" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbltitulo" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblProducto" runat="server"></asp:Label>
            <asp:Label ID="lblidAlmacen" runat="server" Text="ALICA"></asp:Label>
            <asp:Label ID="lblmensaje" runat="server"></asp:Label>
        </asp:Panel>
        <div class="row-fluid">
			<div class="col-md-12">
			<h2><span class="glyphicon glyphicon-edit"></span> Almacen</h2>
			

			</div>

        
            <div class="form-group row">
                 
                <div class="col-md-3">
                <div class="input-group">
                    <asp:TextBox ID="txtSearchProducto" class="form-control" placeholder="producto" runat="server" ></asp:TextBox>
                  
                  <span class="input-group-btn">
                      <asp:Button ID="Button1"  class="btn btn-default" runat="server" Text="Buscar" OnClick="Button1_Click" />                   
                  </span>
                </div>
                 </div>   
              
                  <div class="btn-group ">
                    <button type="button" class="btn btn-default dropdown-toggle"
                            data-toggle="dropdown">
                     VER STOCK
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                      <li><asp:LinkButton ID="LinkButton2" runat="server">ALM. CENTRAL</asp:LinkButton></li>
                      <li><asp:LinkButton ID="LinkButton3" runat="server">ALM. ICA</asp:LinkButton></li>    
                      <li><asp:LinkButton ID="LinkButton4" runat="server">ALM. PIURA</asp:LinkButton></li>
                    </ul>
                  </div>
  
                  <div class="btn-group">
                    <button type="button" class="btn btn-default dropdown-toggle"
                            data-toggle="dropdown">
                     SIN STOCK
                      <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                      <li><asp:LinkButton ID="LinkButton5" runat="server">ALM. CENTRAL</asp:LinkButton></li>
                      <li><asp:LinkButton ID="LinkButton6" runat="server">ALM. ICA</asp:LinkButton></li>    
                      <li><asp:LinkButton ID="LinkButton7" runat="server">ALM. PIURA</asp:LinkButton></li>
                    </ul>
                  </div>
                
           <asp:Button ID="btValorizado"  class="btn btn-default" runat="server" Text="VALORIZADO" OnClick="btValorizado_Click" />    
    
           </div>

        <asp:HiddenField ID="hfCustomerProducto" runat="server" />
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Alm_ValTotal" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblalmacen" Name="alm" PropertyName="Text" Type="String" />
                <asp:ControlParameter ControlID="lblpresent" Name="presentacion" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
       
   

        <asp:Panel ID="Panel1" runat="server" class="form-group row" >
            <asp:Panel ID="ptablaproductos" runat="server">
            <div class="table-responsive">
                <asp:GridView ID="gvAlmacen"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" OnRowDataBound="gvAlmacen_RowDataBound" DataKeyNames="idProducto" OnSelectedIndexChanged="gvAlmacen_SelectedIndexChanged">
            <Columns>
                <asp:TemplateField HeaderText="COD" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("idProducto") %>'></asp:LinkButton>
                    </ItemTemplate>
                    <HeaderStyle Width="70px" />
                    <ItemStyle ForeColor="#006600" />
                </asp:TemplateField>
                <asp:BoundField DataField="idProducto" HeaderText="COD" SortExpression="idProducto" Visible="False" >
                <HeaderStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" ReadOnly="True" SortExpression="PRODUCTO" />
                <asp:BoundField DataField="CENTRAL" HeaderText="CENTRAL" SortExpression="CENTRAL" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ICA" HeaderText="ICA" SortExpression="ICA" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="PIURA" HeaderText="PIURA" SortExpression="PIURA" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="PLISTA" HeaderText="PLISTA" SortExpression="PLISTA" Visible="False" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="PV50" HeaderText="PV50" ReadOnly="True" SortExpression="PV50" Visible="False" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="PBASE" HeaderText="PBASE" SortExpression="PBASE" Visible="False" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="PIALMACEN" HeaderText="PIALMACEN" SortExpression="PIALMACEN" Visible="False" />
                <asp:BoundField DataField="VALORIZADOCENTRAL" HeaderText="VALORIZADOCENTRAL" ReadOnly="True" SortExpression="VALORIZADOCENTRAL" Visible="False" />
                <asp:BoundField DataField="VALORIZADOICA" HeaderText="VALORIZADOICA" ReadOnly="True" SortExpression="VALORIZADOICA" Visible="False" />
                <asp:BoundField DataField="VALORIZADOPIURA" HeaderText="VALORIZADOPIURA" ReadOnly="True" SortExpression="VALORIZADOPIURA" Visible="False" />
                <asp:BoundField DataField="VALSUBTOTAL" HeaderText="VALSUBTOTAL" ReadOnly="True" SortExpression="VALSUBTOTAL" Visible="False" />
                <asp:BoundField DataField="MINIMO" HeaderText="MINIMO" ReadOnly="True" SortExpression="MINIMO" Visible="False" />
            </Columns>


            <HeaderStyle BackColor="WhiteSmoke" />


        </asp:GridView>
                
                </div>
               </asp:Panel>
            
            <asp:Panel ID="PanelMovimientos" runat="server">
                <table class="auto-style66">
                    <tr>
                        <td colspan="3" style="text-align: center; background-color: #CCCCCC">EXISTENCIA</td>
                        <td class="auto-style99" rowspan="2">TOTAL</td>
                        <td class="auto-style105" colspan="4"><strong>E</strong>NTRADAS</td>
                        <td class="auto-style106" colspan="4"><strong>S</strong>ALIDAS</td>
                        <td class="auto-style103" rowspan="2" style="background-color: #B0C8C8"><strong style="text-align: center">TOTAL<br /> E - S</strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style110" style="text-align: center; background-color: #CCCCCC">C</td>
                        <td class="auto-style110" style="text-align: center; background-color: #CCCCCC">ICA</td>
                        <td style="text-align: center; background-color: #CCCCCC" width="50">PIURA</td>
                        <td class="auto-style104">CENTRAL</td>
                        <td class="auto-style104">ICA</td>
                        <td class="auto-style104">PIURA</td>
                        <td class="auto-style104"></td>
                        <td class="auto-style111">CENTRAL</td>
                        <td class="auto-style111">ICA</td>
                        <td class="auto-style111">PIURA</td>
                        <td class="auto-style106"></td>
                    </tr>
                    <tr>
                        <td class="auto-style87">
                            <asp:Label ID="lblstockCentral" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style87">
                            <asp:Label ID="lblstockIca" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style114">
                            <asp:Label ID="lblStockPiura" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style114">
                            <asp:Label ID="lbltt" runat="server" style="font-weight: 700"></asp:Label>
                        </td>
                        <td class="auto-style115" style="text-align: center">
                            <asp:Label ID="lblentradaCentral" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style115" style="text-align: center">
                            <asp:Label ID="lblentradaIca" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style115" style="text-align: center">
                            <asp:Label ID="lblentradaPiura" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style116">
                            <asp:Label ID="lblttEntrada" runat="server" style="font-weight: 700"></asp:Label>
                        </td>
                        <td class="auto-style115" style="text-align: center">
                            <asp:Label ID="lblsalidaCentral" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style115" style="text-align: center">
                            <asp:Label ID="lblsalidaIca" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style114">
                            <asp:Label ID="lblsalidaPiura" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style116" style="font-weight: 700">
                            <asp:Label ID="lblttSalidas" runat="server" style="font-weight: 700"></asp:Label>
                        </td>
                        <td class="auto-style116">
                            <asp:Label ID="lblTTMov" runat="server" style="font-weight: 700"></asp:Label>
                        </td>
                    </tr>
                </table>
                
                Ingreso de producto:<asp:GridView CLASS="table" ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSourceingreso" GridLines="Horizontal" OnRowDataBound="GridView1_RowDataBound1" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="identradaDetalle" HeaderText="COD" SortExpression="identradaDetalle">
                        <HeaderStyle Width="30px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}">
                        <HeaderStyle Width="90px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN">
                        <HeaderStyle Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO">
                        <HeaderStyle Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="idguia" HeaderText="idguia" SortExpression="idguia" Visible="False" />
                        <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" ReadOnly="True" SortExpression="GUIAREM">
                        </asp:BoundField>
                        <asp:BoundField DataField="IDCLIENTE" HeaderText="RUC" SortExpression="IDCLIENTE" Visible="False" />
                        <asp:BoundField DataField="RAZONSOCIAL" HeaderText="PROVEEDOR" SortExpression="RAZONSOCIAL">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="asunto" HeaderText="ASUNTO" SortExpression="asunto">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="identrada" HeaderText="identrada" SortExpression="identrada" Visible="False" />
                        <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                        <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                        <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/suspen{0}.png">
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                    </Columns>
                    <EmptyDataTemplate>
                        No se encontro ningun registro...
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="WhiteSmoke" />
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSourceingreso" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="mov_ENTRADA_xProductoGeneral" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="gvAlmacen" Name="idproducto" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                Salidas de producto<asp:GridView ID="gvSalidaProducto" class="table" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idSalida" DataSourceID="SqlDataSource2" GridLines="Horizontal" OnRowDataBound="gvSalidaProducto_RowDataBound" ShowFooter="True">
                    <Columns>
                        <asp:BoundField DataField="idSalida" HeaderText="COD" ReadOnly="True" SortExpression="idSalida">
                        <HeaderStyle Width="30px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA">
                        <HeaderStyle HorizontalAlign="Center" Width="90px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN">
                        <HeaderStyle Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="TPSALIDA" HeaderText="MOTIVO" SortExpression="TPSALIDA">
                        <HeaderStyle Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="idguiarem" HeaderText="idguiarem" SortExpression="idguiarem" Visible="False" />
                        <asp:BoundField DataField="GUIAREM" HeaderText="GUIAREM" ReadOnly="True" SortExpression="GUIAREM" />
                        <asp:BoundField DataField="VENDEDOR" HeaderText="ENCARGADO" SortExpression="VENDEDOR">
                        <HeaderStyle Width="50px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CLIENTE" HeaderText="RUC" SortExpression="CLIENTE" Visible="False">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RAZONSOCIAL" HeaderText="CLIENTE" SortExpression="RAZONSOCIAL">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD">
                        <HeaderStyle Width="60px" />
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                        <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/suspen{0}.png">
                            <ControlStyle Height="15px" Width="15px" />
                            <HeaderStyle Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                    </Columns>
                    <EmptyDataTemplate>
                        No se encontro ningun registro...
                    </EmptyDataTemplate>
                    <HeaderStyle BackColor="WhiteSmoke" />
                   
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="mov_salida_xProductoGeneral" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="gvAlmacen" Name="codproducto" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
           
            <br />
                </asp:Panel>
        </asp:Panel>
      


    <div class="form-group row">
        <asp:Panel ID="pConsultas" runat="server">
            CONSULTAS MAX MIX
        </asp:Panel>
    </div>

    <div class="form-group row">
        <asp:Panel ID="pValorizado" runat="server">
            VALORIZADO
        </asp:Panel>
    </div>

    </div>

    </div>

<%--         //function myFunction() {
         //    var input, filter, table, tr, td, i;
         //    input = document.getElementById("myInput");
         //    filter = input.value.toUpperCase();
         //    table = document.getElementById("gvAlmacen");
         //    tr = table.getElementsByTagName("tr");
         //    for (i = 0; i < tr.length; i++) {
         //        td = tr[i].getElementsByTagName("td")[0];
         //        if (td) {
         //            if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
         //                tr[i].style.display = "";
         //            } else {
         //                tr[i].style.display = "none";
         //            }
         //        }
         //    }
         //}--%>
<%--</script>--%>
</asp:Content>
