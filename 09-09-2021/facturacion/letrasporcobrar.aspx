<%@ Page Title="" Language="C#" MasterPageFile="~/procesos/Site1.Master" AutoEventWireup="true" CodeBehind="letrasporcobrar.aspx.cs" Inherits="biotech.facturacion.letrasporcobrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .container2{
    text-align:center
}
.left{
    float: left;
    /*background:blue*/
}
.right{
    float: right;
   
}
.center{
    background:green;
 
}

        .auto-style12 {
            font-size: x-large;
        }
        
        .auto-style13 {
            height: 22px;
        }
        
        .auto-style14 {
            font-size: x-large;
            text-decoration: underline;
        }
        
        .auto-style15 {
            width: 500px;
        }
        .auto-style16 {
            width: 350px;
        }
        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
      <div class="main-content">
			
			
			<div class="main">
				<div class="widget">
					<div class="title">
                        <div class="container2">
                            <div class="left">LETRAS POR COBRAR / ESTADO LETRAS<br />
                            </div>
                            <div class="right">
                                <asp:Button ID="Button14" runat="server" OnClick="Button14_Click" Text="DOCUMENTOS EN TRANSICION" PostBackUrl="~/facturacion/DocPresentadosDesCobra.aspx" Height="40px" />
                                <asp:Button ID="Button7" runat="server" Text="DESCUENTO" OnClick="Button7_Click" Height="40px" Width="250px" />

                            </div>
                            <div class="center">

                            </div>
                    </div>

                       _<asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
&nbsp;</div>
					<div class="chart">
                       
    


                            

                            
                            <asp:Panel ID="Panel7" runat="server">
                                <div id="contenedor">
                                    <div class="cuadro" >
                                        <asp:GridView ID="GridView7" runat="server" DataKeyNames ="COD" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Horizontal" style="text-align: left" OnRowDataBound="GridView7_RowDataBound" OnSelectedIndexChanged="GridView7_SelectedIndexChanged" ShowFooter="True" Width="378px">
                                            <Columns>
                                                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" ShowSelectButton="True">
                                                <ControlStyle Height="30px" Width="30px" />
                                                </asp:CommandField>
                                                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                                                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" >
                                                <ItemStyle Font-Bold="True" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL" DataFormatString="{0:0,0.00}" >
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="U$$/S" HeaderText="U$$/S" ReadOnly="True" SortExpression="U$$/S" />
                                            </Columns>
                                            <FooterStyle BackColor="White" ForeColor="Black" />
                                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                            <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="False" ForeColor="Black" />
                                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                            <SortedDescendingHeaderStyle BackColor="#242121" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="F_LetrasporCobrar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    </div>
                                  
                                </div>
                                <asp:Panel ID="Panel8" runat="server">
                                    Detalle de letras:
                                    <asp:Label ID="lblestadoselec" runat="server" Font-Size="Large"></asp:Label>
                                    <asp:Label ID="lblcodcod" runat="server" Visible="False"></asp:Label>
                                    <br />
                                    <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource9" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" style="font-size: medium" OnRowDataBound="GridView8_RowDataBound" OnSelectedIndexChanged="GridView8_SelectedIndexChanged" Width="100%">
                                        <Columns>
                                            <asp:TemplateField HeaderText="ID" SortExpression="ID">
                                                <EditItemTemplate>
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                                                </EditItemTemplate>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="CheckBox2" runat="server" Font-Size="Large" />
                                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ID") %>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA">
                                            <ItemStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>

                                            <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" />
                                           
                                             <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEMISION" SortExpression="FEMISION" />
                                            
                                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE">
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IMPORT" HeaderText="POR COBRAR" SortExpression="IMPORT" DataFormatString="{0:0,0.00}" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="M" HeaderText="M" SortExpression="M">
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" />
                                            <asp:BoundField DataField="NUNICO" HeaderText="NUNICO" SortExpression="NUNICO" />
                                            <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                                            <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" SortExpression="DESCTO" />
                                            <asp:BoundField DataField="IMPORTNETO" HeaderText="IMPORTNETO" SortExpression="IMPORTNETO" />
                                            <asp:BoundField DataField="ESTADO1" HeaderText="EstadoB" SortExpression="ESTADO1" />
                                            <asp:BoundField DataField="FBANCO" HeaderText="FBANCO" SortExpression="FBANCO" DataFormatString="{0:dd/MM/yyyy}" />
                                            <asp:BoundField DataField="CANCEL" HeaderText="CANCEL" SortExpression="CANCEL" Visible="False" />
                                        </Columns>
                                        <EmptyDataTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </EmptyDataTemplate>
                                        <FooterStyle BackColor="White" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center" Font-Bold="True" Font-Size="Medium" />
                                        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="False" ForeColor="Black" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_letrasporestado" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView7" Name="estadoletra" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:GridView ID="GridViewdescuento" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" style="font-size: small" OnSelectedIndexChanged="GridViewdescuento_SelectedIndexChanged1" OnRowDataBound="GridViewdescuento_RowDataBound" Width="100%">
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                                            <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" >
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" >
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="FEMISION" HeaderText="FEMISION" SortExpression="FEMISION" DataFormatString="{0:dd/MM/yyyy}" >
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                                            <asp:BoundField DataField="IMPORT" HeaderText="IMPORT" SortExpression="IMPORT" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" />
                                            <asp:BoundField DataField="TRANS" HeaderText="DIAS" ReadOnly="True" SortExpression="TRANS" >
                                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="NUNICO" HeaderText="NUNICO" SortExpression="NUNICO" />
                                            <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                                            <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" SortExpression="DESCTO" Visible="False" />
                                            <asp:BoundField DataField="IMPORTNETO" HeaderText="IMPORTNETO" SortExpression="IMPORTNETO" Visible="False" />
                                            <asp:BoundField DataField="ESTADO1" HeaderText="ESTADO1" SortExpression="ESTADO1" Visible="False" />
                                            <asp:BoundField DataField="FBANCO" HeaderText="FBANCO" SortExpression="FBANCO" Visible="False" />
                                            <asp:BoundField DataField="CANCEL" HeaderText="CANCEL" SortExpression="CANCEL" Visible="False" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="False" ForeColor="Black" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_letrasporestado" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="GridView7" Name="estadoletra" PropertyName="SelectedValue" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                                    <asp:Label ID="lblmensaje" runat="server" style="color: #FF0000"></asp:Label>
                                    <asp:Label ID="lblidletraselecionada" runat="server" Visible="False"></asp:Label>
                                    <br />
                                    <asp:Panel ID="pregcobral" runat="server">
                                        <strong>
                                        REALIZAR OPERACION<br /> Letra seleccionada: </strong>
                                        <asp:Label ID="lblletra1" runat="server"></asp:Label>
                                        <asp:Label ID="lblcod1" runat="server" Visible="False"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Importe:
                                        <asp:TextBox ID="txtimporte" runat="server" Enabled="False"></asp:TextBox>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <br />
                                        OBSERVACION:<br />
                                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="500px"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="REGISTRAR PAGO" Width="250px" />
                                        <asp:Button ID="Button2" runat="server" Height="40px" OnClick="Button2_Click" Text="PASAR A PROTESTO" Width="250px" />
                                        <br />
                                        <br />
                                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Renovar letra</asp:LinkButton>
                                        <br />
                                        <asp:Label ID="lblmensaje1" runat="server" style="color: #FF0000"></asp:Label>
                                        <br />
                                    </asp:Panel>
                                    <asp:Panel ID="Panel12" runat="server">
                                        <br />
                                        <asp:Button ID="btcargarletras" runat="server" Height="40px" OnClick="btcargarletras_Click" Text="CARGAR LETRAS A DESCUENTO / COBRANZA LIBRE" />
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">Realizar Cancelación</asp:LinkButton>
                                        &nbsp;<br />
                                         </asp:Panel>
                                        <asp:Panel ID="Panel13" runat="server">
                                            REALIZAR CANCELACIÓN DE LETRA:<br /> LETRA:
                                            <asp:Label ID="lblletra2" runat="server"></asp:Label>
                                            &nbsp;<asp:Label ID="lblidletra" runat="server" Visible="False"></asp:Label>
                                            <br />
                                            CLIENTE:
                                            <asp:Label ID="lblrazon2" runat="server"></asp:Label>
                                            <br />
                                            DETALLE PAGO:<br />
                                            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="250px"></asp:TextBox>
                                            <br />
                                            <asp:Button ID="Button16" runat="server" Height="40px" OnClick="Button16_Click" Text="REGISTRAR" Width="250px" />
                                            <br />
                                            <asp:Label ID="lblmensaje5" runat="server"></asp:Label>
                                            <br />
                                        </asp:Panel>
                                   
                                    <asp:Panel ID="pcartera" runat="server" style="text-align: center" Width="800px">
                                        <br />
                                        <span class="auto-style14"><strong>DOCUMENTOS PRESENTADOS A DESCUENTO/COBRANZALIBRE</strong></span><strong><br class="auto-style12" /> </strong>
                                        <table class="" align="center">
                                            <tr><td style="text-align: left">
                                                    <asp:TextBox ID="txtop" runat="server" Enabled="False"></asp:TextBox>
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:TextBox ID="txtfechadoc" runat="server" style="text-align: left" Width="200px"></asp:TextBox>
                                                </td>
                                                <td style="text-align: left">
                                                    <asp:DropDownList ID="ddlbestadodoc" runat="server" style="font-weight: 700">
                                                        <asp:ListItem Value="DSCTO">DESCUENTO</asp:ListItem>
                                                        <asp:ListItem Value="CBRAL">COBRANZA LIBRE</asp:ListItem>
                                                    </asp:DropDownList>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr><td style="text-align: left">Nº OPERACION</td>
                                                <td style="text-align: left">FECHA</td>
                                                <td style="text-align: left">MODALIDAD</td>
                                                <td style="text-align: left">&nbsp;</td>
                                            </tr>
                                              <tr><td style="text-align: left">
                                                  <asp:DropDownList ID="ddlbanco" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="banco" DataValueField="idBanco" OnSelectedIndexChanged="ddlbanco_SelectedIndexChanged" style="font-weight: 700" Width="200px">
                                                  </asp:DropDownList>
                                                  <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [BancoCuentas]"></asp:SqlDataSource>
                                                  </td>
                                                <td style="text-align: left; font-weight: 700;">
                                                    <asp:DropDownList ID="ddlbancotipo" runat="server" DataSourceID="SqlDataSource5" DataTextField="tipo" DataValueField="ncuenta" OnSelectedIndexChanged="ddlbancotipo_SelectedIndexChanged" Width="200px">
                                                    </asp:DropDownList>
                                                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [BancoCuentaDetalle] WHERE ([idcuentabanco] = @idcuentabanco)">
                                                        <SelectParameters>
                                                            <asp:ControlParameter ControlID="ddlbanco" Name="idcuentabanco" PropertyName="SelectedValue" Type="String" />
                                                        </SelectParameters>
                                                    </asp:SqlDataSource>
                                                  </td>
                                                <td style="text-align: left">
                                                    <asp:Button ID="Button15" runat="server" OnClick="Button15_Click1" Text="..." />
                                                    <asp:TextBox ID="txtnumerocuenta" runat="server" style="background-color: #FFFFCC"></asp:TextBox>
                                                  </td>
                                                <td style="text-align: left">&nbsp;</td>
                                            </tr>
                                              <tr><td style="text-align: left">BANCO</td>
                                                <td style="text-align: left">TIPO</td>
                                                <td style="text-align: left">NUMERO CUENTA</td>
                                                <td style="text-align: left">&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">Nº Documento/Detalle </td>
                                                <td colspan="3" style="text-align: left">
                                                    <asp:TextBox ID="txtglosadoc" runat="server" Width="400px" style="background-color: #FFFFCC"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="text-align: left">LETRA(S):</td>
                                                <td colspan="3" style="text-align: left">
                                                    <asp:Label ID="lblcadenaLETRAS" runat="server" style="font-weight: 700"></asp:Label>
                                                    <asp:Label ID="lblcadenaLETRASid" runat="server" Visible="False"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style13" style="text-align: left">&nbsp;</td>
                                                <td class="auto-style13" colspan="3" style="text-align: left">
                                                    <asp:ListBox ID="ListBox1" runat="server" Visible="False"></asp:ListBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="4" style="text-align: center">
                                                    <asp:Button ID="ButtonREGISTRARDOCUMENTO" runat="server" Height="40px" OnClick="ButtonREGISTRARDOCUMENTO_Click" Text="REGISTRAR DOCUMENTO PRESENTADO" style="text-align: center" />
                                                </td>
                                            </tr>
                                        </table>
                                        <div style="text-align: right">
                                            <asp:Label ID="lblmensajedoc" runat="server" style="text-align: right; color: #FF0000"></asp:Label>
                                        </div>
                                    <br />
                                


                                    </asp:Panel>
                                    <asp:Panel ID="pdetfat" runat="server">
                                        &nbsp;
                                        <asp:Label ID="lblletranexasfac" runat="server" style="font-weight: 700"></asp:Label>
                                        <br />
                                        <asp:GridView ID="GridView9" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource10" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="GridView9_RowDataBound" ShowFooter="True" style="font-size: x-small">
                                            <Columns>
                                                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                                                <asp:BoundField DataField="FACTURA" HeaderText="FACTURA" ReadOnly="True" SortExpression="FACTURA" />
                                                <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION" />
                                                <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" ReadOnly="True" SortExpression="CONDICION" />
                                                <asp:BoundField DataField="VEND" HeaderText="VEND" SortExpression="VEND">
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="IMPNETO" DataFormatString="{0:0,0.00}" HeaderText="IMPNETO" SortExpression="IMPNETO">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="RETENIDO" DataFormatString="{0:0,0.00}" HeaderText="RETENIDO" SortExpression="RETENIDO">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="PORCOBRAR" DataFormatString="{0:0,0.00}" HeaderText="PORCOBRAR" SortExpression="PORCOBRAR">
                                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                                </asp:BoundField>
                                                <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                                            </Columns>
                                            <FooterStyle BackColor="White" ForeColor="Black" />
                                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                            <SortedDescendingHeaderStyle BackColor="#242121" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource10" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_facturasporLETRA" SelectCommandType="StoredProcedure">
                                            <SelectParameters>
                                                <asp:ControlParameter ControlID="GridView8" Name="idletra" PropertyName="SelectedValue" Type="Int32" />
                                            </SelectParameters>
                                        </asp:SqlDataSource>
                                    </asp:Panel>
                                    <br />
                                    <br />
                                </asp:Panel>
                            </asp:Panel>
    


                            

                            
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            <asp:Panel ID="Panelcobrados" runat="server">
                                I<strong>NFORME DE LETRAS COBRADAS</strong><br />
                                <br />
                                <asp:GridView ID="gvestadodeLetra" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" PageSize="25" style="font-size: small" OnSelectedIndexChanged="gvestadodeLetra_SelectedIndexChanged" DataKeyNames="idletra">
                                    <Columns>
                                        <asp:BoundField DataField="idletra" HeaderText="COD" SortExpression="idletra" ReadOnly="True" />
                                        <asp:BoundField DataField="Column1" HeaderText="LETRA" ReadOnly="True" SortExpression="Column1" >
                                        <ItemStyle Font-Bold="True" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="fecha" />
                                        <asp:BoundField DataField="Column2" HeaderText="CLIENTE" ReadOnly="True" SortExpression="Column2">
                                        <ItemStyle Font-Size="X-Small" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="tt" HeaderText="IMPORTE" SortExpression="tt" DataFormatString="{0:0,0.00}" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="moneda" HeaderText="M" SortExpression="moneda" />
                                        <asp:BoundField DataField="escritura" HeaderText="escritura" SortExpression="escritura" Visible="False" />
                                        <asp:BoundField DataField="estadoletra" HeaderText="ESTADO" SortExpression="estadoletra" />
                                        <asp:BoundField DataField="fechaVencimiento" DataFormatString="{0:dd/MM/yyyy}" HeaderText="fechaVencimiento" SortExpression="fechaVencimiento" Visible="False" />
                                        <asp:BoundField DataField="NumeroUnico" HeaderText="NªUNICO" SortExpression="NumeroUnico" >
                                        <ItemStyle HorizontalAlign="Center" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="Banco" HeaderText="BANCO" SortExpression="Banco" />
                                        <asp:BoundField DataField="descuento" HeaderText="TASA INT." SortExpression="descuento" DataFormatString="{0:0,0.00}" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="importeNeto" HeaderText="IMPTCOBRADO" SortExpression="importeNeto" DataFormatString="{0:0,0.00}" >
                                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" >
                                        <ItemStyle Font-Size="XX-Small" />
                                        </asp:BoundField>
                                        <asp:BoundField DataField="fechabanco" HeaderText="F.BANCO" SortExpression="fechabanco" DataFormatString="{0:dd/MM/yyyy}" />
                                        <asp:BoundField DataField="estadoCancel" HeaderText="EsT" SortExpression="estadoCancel" Visible="False" />
                                        <asp:BoundField DataField="condicion" HeaderText="CONDICION" SortExpression="condicion">
                                        <ItemStyle Font-Size="Small" />
                                        </asp:BoundField>
                                    </Columns>
                                    <HeaderStyle BackColor="#333333" ForeColor="White" />
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idletra], CONCAT( [grupo], '-',[letra]), [fecha], CONCAT( [idcliente],'-', [razon]), [moneda], [tt], [escritura], [estadoletra], [fechaVencimiento], [condicion], [NumeroUnico], [Banco], [descuento], [importeNeto], [estado], [fechabanco], [estadoCancel] FROM [tb_LETRACANJE] WHERE ([estadoCancel] = @estadoCancel) order by idletra desc">
                                    <SelectParameters>
                                        <asp:Parameter DefaultValue="0" Name="estadoCancel" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </asp:Panel>
    
                            
                            <asp:Panel ID="pletrasProtestadas" runat="server">
                                <asp:Label ID="lblmensaje3" runat="server" style="color: #FF0000"></asp:Label>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                                <asp:Panel ID="Panel11" runat="server">
                                    <strong><span class="auto-style12">LETRAS POR CONFIRMAR PAGO CLIENTE</span></strong><br />
                                    <asp:GridView ID="gvletrasconfirpagoclient" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="gvletrasconfirpagoclient_SelectedIndexChanged" style="font-size: small" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
                                        <Columns>
                                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/editar.png" ShowSelectButton="True">
                                            <ControlStyle Height="20px" Width="20px" />
                                            </asp:CommandField>
                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO">
                                            <ItemStyle Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA">
                                            <ControlStyle Width="80px" />
                                            <ItemStyle Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO" />
                                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION" />
                                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" >
                                            <ItemStyle Font-Size="Small" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IMPORT" DataFormatString="{0:0,0.00}" HeaderText="IMPORT" SortExpression="IMPORT" >
                                            <ItemStyle HorizontalAlign="Right" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                                            <asp:BoundField DataField="NUNICO" HeaderText="Nº UNICO" SortExpression="NUNICO" />
                                            <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                                            <asp:BoundField DataField="DESCTO" HeaderText="DESCTO" SortExpression="DESCTO" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="IMPORTNETO" DataFormatString="{0:0,0.00}" HeaderText="DESEMB" SortExpression="IMPORTNETO" >
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ESTADO1" HeaderText="ESTADO1" SortExpression="ESTADO1" Visible="False" />
                                            <asp:BoundField DataField="FBANCO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="IngBanco" SortExpression="FBANCO" />
                                            <asp:BoundField DataField="CANCEL" HeaderText="CANCEL" SortExpression="CANCEL" Visible="False" />
                                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" />
                                        </Columns>
                                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" ForeColor="White" Font-Bold="True" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_LetrasDsctoCbralXconfir" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <asp:Panel ID="Ppasaraprotesto" runat="server">
                                        <br />
                                        LETRA SELECCIONADA:&nbsp;
                                        <asp:Label ID="lblidletrapasaraprotesto" runat="server" Visible="False"></asp:Label>
                                        &nbsp;<asp:Label ID="lblletraconfirpag" runat="server"></asp:Label>
                                        <br />
                                        OBSERVACION:
                                        <br />
                                        <asp:TextBox ID="txtconfirpago" runat="server" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                        <br />
                                        <asp:Button ID="Button13" runat="server" Height="40px" Text="CONFIRMAR PAGO" Width="200px" OnClick="Button13_Click" />
                                        <asp:Button ID="Button12" runat="server" Height="40px" OnClick="Button12_Click" Text="PASAR LETRA A PROTESTO" Width="200px" />
                                        <br />
                                        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Renovar Letra</asp:LinkButton>
                                    </asp:Panel>
                                    <br />
                                </asp:Panel>
                                <asp:Panel ID="Panel10" runat="server">
                                    <strong>LETRAS PROTESTADAS : </strong>DESCUENTO / COBRANZA LIBRE<asp:GridView ID="GridView10" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" OnRowDataBound="GridView10_RowDataBound" OnSelectedIndexChanged="GridView10_SelectedIndexChanged" ShowFooter="True" style="font-size: small" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                        <Columns>
                                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/editar.png" SelectText="Selec" ShowSelectButton="True">
                                            <ControlStyle Height="20px" Width="20px" />
                                            </asp:CommandField>
                                            <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                                            <asp:BoundField DataField="LETRA" HeaderText="LETRA" ReadOnly="True" SortExpression="LETRA" />
                                            <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.VENCTO" SortExpression="FVENCTO" />
                                            <asp:BoundField DataField="FEMISION" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.EMISION" SortExpression="FEMISION" />
                                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                                            <asp:BoundField DataField="IMPORT" DataFormatString="{0:0,0.00}" HeaderText="IMPORT" SortExpression="IMPORT">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" />
                                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                                            <asp:BoundField DataField="CONDICION" HeaderText="CONDICION" SortExpression="CONDICION" />
                                            <asp:BoundField DataField="NUNICO" HeaderText="NºUNICO" SortExpression="NUNICO" />
                                            <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                                            <asp:BoundField DataField="DESCTO" DataFormatString="{0:0,0.00}" HeaderText="DESCTO" SortExpression="DESCTO" />
                                            <asp:BoundField DataField="IMPORTNETO" DataFormatString="{0:0,0.00}" HeaderText="IMPORTNETO" SortExpression="IMPORTNETO" />
                                            <asp:BoundField DataField="ESTADO1" HeaderText="EstadoB" SortExpression="ESTADO1" Visible="False" />
                                            <asp:BoundField DataField="FBANCO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.BANCO" SortExpression="FBANCO" />
                                            <asp:BoundField DataField="CANCEL" HeaderText="CANCEL" SortExpression="CANCEL" Visible="False" />
                                        </Columns>
                                        <FooterStyle ForeColor="Black" />
                                        <HeaderStyle BackColor="#333333" ForeColor="White" Font-Bold="True" />
                                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                        <SortedDescendingHeaderStyle BackColor="#242121" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="f_LetrasProtestadas" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                    <asp:Panel ID="Panel9" runat="server">
                                        LETRA PROTESTADA:
                                        <asp:Label ID="lblidprotestado" runat="server" style="font-weight: 700" Visible="False"></asp:Label>
                                        <asp:Label ID="lblletraprotestada" runat="server" style="font-weight: 700"></asp:Label>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; IMPORTE:
                                        <asp:Label ID="lblimporteprotestado" runat="server" style="font-weight: 700"></asp:Label>
                                        &nbsp;&nbsp; CLIENTE:<asp:Label ID="blclienteprotestado" runat="server" style="font-weight: 700"></asp:Label>
                                        <br />
                                        <table class="auto-style15">
                                            <tr>
                                                <td class="auto-style16">Observacion:<br />
                                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="300px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:Button ID="Button11" runat="server" Height="40px" OnClick="Button11_Click" Text="REGISTRAR CANCELACION" Width="300px" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </asp:Panel>
                                <br />
                                <br />
                            </asp:Panel>
                            <br />
    
                            
             </div>
                    </div>
				</div>

			</div>
		</div>
    </div>

</asp:Content>
