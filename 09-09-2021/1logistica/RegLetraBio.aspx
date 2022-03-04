<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="RegLetraBio.aspx.cs" Inherits="biotech._1logistica.RegLetraBio" %>

<%--<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    

    <script src="<%=Page.ResolveUrl("~/Scripts/jquery-1.7.1.min.js") %>" type="text/javascript"></script>
  

     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js" language="javascript" type="text/javascript"></script>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#BtnImprimir").click(imprimirDiv);    //Asociando la función "imprimirDiv" al clic del botón para Imprimir Reporte
        });

        function imprimirDiv() {
            var divImprimir = $("div[id$='ReportDiv']").parent();        //Obteniendo el padre del DIV que contiene al reporte
            var estilos = $("head style[id$='ReportControl_styles']");    //Obteniendo los estilos del reporte
            newWin = window.open("");        //Abriendo una nueva ventana

            //Construyendo el HTML de la nueva ventana, con los estilos del reporte y el div que contiene el reporte
            newWin.document.write('<html xmlns="http://www.w3.org/1999/xhtml"><head><style type="text/css">' + estilos.html() + '</style></head><body>' + divImprimir.html() + '</body>');
            newWin.document.close();        //Finalizando la escritura
            newWin.print();        //Imprimir contenido de nueva ventana
            newWin.close();        //Cerrar nueva ventana
        }
</script>


    <style type="text/css">
        .auto-style22 {
            text-align: right;
        }
        .auto-style16 {
            text-align: right;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="../bio/js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../bio/css/sweetalert.css" rel="stylesheet" type="text/css" />

 
    
               <p>&nbsp;FACTURAS POR ANEXAR <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                   <asp:Label ID="blusuario" runat="server"></asp:Label>
               <div >
                        <asp:Panel ID="Panel1" runat="server">

                            <center>

                            <asp:Panel ID="Panel5" runat="server">
                               
                                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Style="font-size: x-small" Width="95%">
                                        <Columns>
                                            <asp:TemplateField HeaderText="COD" SortExpression="idfacturacion">
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("idfacturacion") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <span>
                                                        <asp:CheckBox ID="CheckBox2" runat="server" />
                                                        &nbsp;&nbsp; </span>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("idfacturacion") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="FACTURA" SortExpression="Column1">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Column1") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Column1") %>'></asp:Label>
                                                </ItemTemplate>
                                                <ItemStyle Font-Bold="True" />
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="fechareg" HeaderText="F.EMISION" SortExpression="fechareg" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="fechaven" HeaderText="F.VENCTO" SortExpression="fechaven" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="codvendedor" HeaderText="VEND" SortExpression="codvendedor"></asp:BoundField>
                                            <asp:BoundField DataField="Column2" HeaderText="CLIENTE" ReadOnly="True" SortExpression="Column2">
                                                <ItemStyle Font-Size="Small" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="idcondpago" HeaderText="COND" SortExpression="idcondpago"></asp:BoundField>
                                            <asp:BoundField DataField="idletra" HeaderText="LETRA" SortExpression="idletra" Visible="False" />
                                            <asp:BoundField DataField="dias" HeaderText="DIAS" SortExpression="dias"></asp:BoundField>
                                            <asp:BoundField DataField="importebruto" HeaderText="IMP BASE" SortExpression="importebruto" Visible="False"></asp:BoundField>
                                            <asp:BoundField DataField="tpimporteretenido" HeaderText="TIPO" SortExpression="tpimporteretenido" Visible="False"></asp:BoundField>
                                            <asp:BoundField DataField="importeNeto" HeaderText="IMP NETO" SortExpression="importeNeto">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="montoretenido" HeaderText="RETENIDO" SortExpression="montoretenido">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="montodisponible" HeaderText="DISPONIBLE" SortExpression="montodisponible">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="tpmoneda" HeaderText="M" SortExpression="tpmoneda" />
                                        </Columns>
                                        <HeaderStyle BackColor="#666666" ForeColor="White" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idfacturacion], [serie]+'-'+ [numero], [fechareg],fechaven, [codvendedor], CONCAT(idclienteRUC,'-',[razonsocial]), [idcondpago], idletra,[dias],importebruto,tpimporteretenido,importeNeto,montoretenido,montodisponible,tpmoneda FROM [Facturacion] WHERE idletra = '0' and ([idcondpago] = @idcondpago) and tipoVenta <> 'ANULL' ORDER BY [idfacturacion] ">
                                        <SelectParameters>
                                            <asp:Parameter DefaultValue="LETRA" Name="idcondpago" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                  </asp:Panel> 
                                <p>
                                    <asp:Button ID="Button3" runat="server" Height="40px" OnClick="Button3_Click" Text="ANEXAR FACTURAS" Width="300px" />
                                 
                                    <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="lblmensa" runat="server" style="color: #FF0000; font-size: x-small;"></asp:Label>
                                
                            </asp:Panel>
                            </center>


                            <br />

                            <center>
                            <asp:Panel ID="Panel6" runat="server" Visible="False">
                                <br />
                                <table >
                                    <tr>
                                        <td class="auto-style20" colspan="4"><strong>REGISTRO DE LETRA:</strong></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22"><strong>COD:</strong><br />
                                        </td>
                                        <td class="auto-style19">
                                            <asp:TextBox ID="txtgrupo" runat="server" Width="60px" Enabled="False"></asp:TextBox>
                                            &nbsp;- <asp:TextBox ID="txtletra" runat="server" Width="70px" Enabled="False"></asp:TextBox>
                                            <asp:Label ID="lblid" runat="server" Visible="False"></asp:Label>
                                            <br />
                                        </td>
                                        <td class="auto-style11"><strong>F.EMISIÓN:</strong></td>
                                        <td class="auto-style23">
                                            <asp:TextBox ID="txtfecharegistro" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                                            <span class="auto-style1">
                                            (dd/mm/aaaa)<br /> </span></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">IMPORTE TT.:</td>
                                        <td class="auto-style18">&nbsp;<asp:TextBox ID="txtimportett" runat="server" BackColor="#FFFFEA" Style="background-color: #FFFFCC" Width="130px" Enabled="False"></asp:TextBox>
                                            &nbsp; 
                                            <asp:Label ID="lblidfact" runat="server" Visible="False"></asp:Label>
                                        </td>
                                        <td class="auto-style21"><strong>DIAS:</strong></td>
                                        <td class="auto-style23">
                                            <asp:TextBox ID="txtdias" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">MONEDA:</td>
                                        <td class="auto-style18">
                                            <asp:Label ID="lbldescripmoneda" runat="server"></asp:Label>
                                        </td>
                                        <td class="auto-style21">&nbsp;</td>
                                        <td class="auto-style23">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">
                                            <strong>CLIENTE:</strong></td>
                                        <td class="auto-style7" colspan="3">&nbsp;<asp:Label ID="lblruc" runat="server"></asp:Label>
                                            &nbsp;/&nbsp;<asp:Label ID="lblrazonsocial" runat="server" CssClass="auto-style3"></asp:Label>
&nbsp;
                                            <asp:TextBox ID="txtmoneda" runat="server" OnTextChanged="txtmoneda_TextChanged" Visible="False" Width="30px"></asp:TextBox>
                                            <asp:TextBox ID="txtcodcliente" runat="server" Visible="False" Width="100px"></asp:TextBox>
                                            <asp:TextBox ID="txtcadenaidfactura" runat="server" Visible="False" Width="150px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">Teléfono:</td>
                                        <td class="auto-style18" colspan="3">
                                            <asp:TextBox ID="txtTelefono" runat="server" BackColor="#FFFFEA" Width="200px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">
                                            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Dirección</asp:LinkButton>
                                            :</td>
                                        <td class="auto-style18" colspan="3">
                                            <asp:Label ID="lbldireccion" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style22">&nbsp;</td>
                                        <td class="auto-style9" colspan="3">&nbsp;<asp:Label ID="lblglosafact" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16" valign=top><strong>DET. ENTREGA:</strong></td>
                                        <td class="auto-style9" colspan="3">
                                            <asp:DropDownList ID="ddlConcepto" runat="server" DataSourceID="SqlDataSourceCONCEP" DataTextField="descripcion" DataValueField="id" Width="100%">
                                            </asp:DropDownList>
                                            <br />
                                            <asp:DropDownList ID="ddlEmpleado" runat="server" DataSourceID="SqlDataSourcepersonal" DataTextField="NOMBRES" DataValueField="ID" Width="100%">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourcepersonal" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_personalLetraxAceptar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                            <asp:SqlDataSource ID="SqlDataSourceCONCEP" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_letraConcepto] WHERE ([idLetra] = @idLetra)">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="XACEP" Name="idLetra" Type="String" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style16" valign="top">&nbsp;</td>
                                        <td class="auto-style9" colspan="3">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" colspan="4">
                                            <asp:Button ID="Button4" runat="server" Height="40px" OnClick="Button4_Click" Text="REGISTRAR LETRA" Width="100%" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" colspan="3">&nbsp;</td>
                                        <td class="auto-style23">
                                            <asp:Label ID="lblmensaje" runat="server" style="color: #FF0000"></asp:Label>
                                            <asp:Label ID="lblmensaje0" runat="server" style="color: #FF0000"></asp:Label>
                                            <asp:Label ID="lblmensaje1" runat="server" style="color: #FF0000"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>SON:</strong></td>
                                        <td class="auto-style6" colspan="3">
                                            <asp:Label ID="lblcadenaimporte" runat="server" Style="text-transform: uppercase"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" colspan="4">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" colspan="4"><strong>FACTURAS ANEXAS: </strong>
                                            <asp:Label ID="lblfaccc" runat="server"></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                                <br />
                            </asp:Panel>
                                </center>
                            <br />
                        </asp:Panel>
                        <br />
                        
                    <center>
                    <asp:Panel ID="Panel3" runat="server">
                            <hr />
                            <h4><span class="auto-style17">LETRA GENERADAS:</span></h4>
                            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="idletra" DataSourceID="SqlDataSource1" EmptyDataText="No hay registros de datos para mostrar." OnSelectedIndexChanged="GridView4_SelectedIndexChanged" Width="95%" CssClass="auto-style1" AllowPaging="True" PageSize="30" Font-Size="X-Small" OnRowCommand="GridView4_RowCommand">
                                <Columns>
                                    <asp:CommandField ShowSelectButton="True" ShowDeleteButton="True" />
                                    <asp:BoundField DataField="idletra" HeaderText="COD" ReadOnly="True" SortExpression="idletra" Visible="False" />
                                    <asp:BoundField DataField="grupo" HeaderText="GRUPO" SortExpression="grupo">
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="letra" HeaderText="LETRA" SortExpression="letra" />
                                    <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="fecha" >
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="idclienteRUC" HeaderText="RUC" SortExpression="idclienteRUC" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="razon" HeaderText="CLIENTE" SortExpression="razon"></asp:BoundField>
                                    <asp:BoundField DataField="moneda" HeaderText="M" SortExpression="moneda" >
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="tt" HeaderText="IMPORTE" SortExpression="tt" DataFormatString="{0:0,0.00}">
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="fechaVencimiento" HeaderText="F. VNCTO" SortExpression="fechaVencimiento" DataFormatString="{0:dd/MM/yyyy}">
                                    <ItemStyle HorizontalAlign="Center" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="condicion" HeaderText="CONDICION" SortExpression="condicion" />
                                   
                                     <asp:ButtonField CommandName="print1"  HeaderText="DOC. CANJE" ShowHeader="True" Text="print" ImageUrl="~/images/Imprimir.png" ButtonType="Image" Visible="False" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>

                                     <asp:ButtonField CommandName="print"  HeaderText="LETRA" ShowHeader="True" Text="print" ImageUrl="~/images/Imprimir.png" ButtonType="Image" Visible="False" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>

                                     <asp:ButtonField CommandName="print2019"  HeaderText="LETRA 2019A" ShowHeader="True" Text="print" ImageUrl="~/images/imprimir_old.png" ButtonType="Image" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>
                                      <asp:ButtonField CommandName="print2019B"  HeaderText="LETRA 2019B" ShowHeader="True" Text="print" ImageUrl="~/images/Imprimir.png" ButtonType="Image" >
                     <ControlStyle Height="20px" Width="25px" />
                     <HeaderStyle Width="32px" />
                     <ItemStyle HorizontalAlign="Center" />
                     </asp:ButtonField>



                                </Columns>
                                <HeaderStyle BackColor="#666666" ForeColor="White" />
                                <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString1 %>" DeleteCommand="DELETE FROM [tb_LETRACANJE] WHERE [idletra] = @idletra" InsertCommand="INSERT INTO [tb_LETRACANJE] ([idletra], [grupo], [letra], [fecha], [idcliente], [razon], [moneda], [tt], [fechaVencimiento], [condicion]) VALUES (@idletra, @grupo, @letra, @fecha, @idcliente, @razon, @moneda, @tt, @fechaVencimiento, @condicion)" SelectCommand="SELECT [idletra], [grupo], [letra], [fecha], [idclienteRUC], [razon], [moneda], [tt], [fechaVencimiento], [condicion] FROM [tb_LETRACANJE] ORDER BY [idletra] DESC" UpdateCommand="UPDATE [tb_LETRACANJE] SET [grupo] = @grupo, [letra] = @letra, [fecha] = @fecha, [idcliente] = @idcliente, [razon] = @razon, [moneda] = @moneda, [tt] = @tt, [fechaVencimiento] = @fechaVencimiento, [condicion] = @condicion WHERE [idletra] = @idletra">
                                <DeleteParameters>
                                    <asp:Parameter Name="idletra" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="idletra" Type="Int32" />
                                    <asp:Parameter Name="grupo" Type="String" />
                                    <asp:Parameter Name="letra" Type="String" />
                                    <asp:Parameter DbType="Date" Name="fecha" />
                                    <asp:Parameter Name="idcliente" Type="Int32" />
                                    <asp:Parameter Name="razon" Type="String" />
                                    <asp:Parameter Name="moneda" Type="String" />
                                    <asp:Parameter Name="tt" Type="Decimal" />
                                    <asp:Parameter DbType="Date" Name="fechaVencimiento" />
                                    <asp:Parameter Name="condicion" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="grupo" Type="String" />
                                    <asp:Parameter Name="letra" Type="String" />
                                    <asp:Parameter DbType="Date" Name="fecha" />
                                    <asp:Parameter Name="idcliente" Type="Int32" />
                                    <asp:Parameter Name="razon" Type="String" />
                                    <asp:Parameter Name="moneda" Type="String" />
                                    <asp:Parameter Name="tt" Type="Decimal" />
                                    <asp:Parameter DbType="Date" Name="fechaVencimiento" />
                                    <asp:Parameter Name="condicion" Type="String" />
                                    <asp:Parameter Name="idletra" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </asp:Panel>
                        <asp:Panel ID="Panel4" runat="server">
                            <b>FACTURAS ANEXADAS:&nbsp; </b>
                            <asp:Label ID="lblletraselec" runat="server"></asp:Label>
                            <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" OnRowDataBound="GridView5_RowDataBound" ShowFooter="True" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" CssClass="auto-style2" Width="95%">
                                <Columns>
                                    <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                                    <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" SortExpression="FACTURA" ReadOnly="True" />
                                    <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" />
                                    <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" ReadOnly="True" />
                                    <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND" />
                                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                                    <asp:BoundField DataField="IMPNETO" HeaderText="IMPNETO" SortExpression="IMPNETO" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="RETENIDO" HeaderText="RETENIDO" SortExpression="RETENIDO" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PORCOBRAR" HeaderText="PORCOBRAR" SortExpression="PORCOBRAR" >
                                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                                </Columns>
                                <HeaderStyle BackColor="#666666" ForeColor="White" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_facturasporLETRA" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="GridView4" Name="idletra" PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </asp:Panel>
                        </center>
    
                        <br />




                    </div>
         

</asp:Content>
