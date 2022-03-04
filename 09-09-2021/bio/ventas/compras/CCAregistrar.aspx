<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="CCAregistrar.aspx.cs" Inherits="biotech.bio.ventas.compras.CCAregistrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1000px;
        }
        .auto-style2 {
            width: 1000px;
        }
        .auto-style3 {
            width: 972px;
        }
        .auto-style4 {
            font-size: x-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    

     <div class="row-fluid">
		<div class="col-md-12">
           <h3><span class="glyphicon glyphicon-edit"></span>ADM. RESUMEN DE GASTOS
               <asp:Label ID="lblcodusu" runat="server" Visible="False"></asp:Label>
               <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
            </h3>
            <div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bio/ventas/compras/AdminCCA.aspx">Dirigir Centro de Gastos</asp:LinkButton>
                        </li>


<%--                        <li>
                        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/bio/ventas/compras/PagosRegistrar.aspx">Administrar Cuenta</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbt_Facturados" runat="server" PostBackUrl="~/bio/ventas/compras/PagosFacturados.aspx">Administrar CCA</asp:LinkButton>
                        </li>
                        
                        <li>
                        <asp:LinkButton ID="lbtn_pagosRealizados" runat="server" PostBackUrl="~/bio/ventas/compras/PagosRealizados.aspx">Pagos realizados</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtn_ctapagar" runat="server" PostBackUrl="~/porpagar/Pagos_ctaporpagar.aspx">Cuentas por pagar</asp:LinkButton>
                        </li>--%>
                    </ol>


                    <asp:Panel ID="pAyuda" runat="server" Visible="False">
                       eerrrwer
                    </asp:Panel>




                    <asp:Button ID="btncca" runat="server" Text="CENTRO DE COSTO" OnClick="btncca_Click" />




                    <asp:Button ID="btncc" runat="server" OnClick="btncc_Click" Text="ADM. CENTRO DE COSTO DIRECTO" />
                    <asp:Button ID="Button11" runat="server" Text="REGISTRAR CENTRO DE COSTO AUXILIAR" OnClick="Button11_Click" />
                    <asp:Panel ID="pAuiliar" runat="server" Visible="False">
                   
                        <span class="auto-style4"><strong>CENTRO DE COSTO AUXILIAR:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </strong></span><asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">Registrar centro de costo auxiliar</asp:LinkButton>
                        <br />
                        <asp:Panel ID="pcategoria" runat="server" Visible="False">
                            <asp:Label ID="lblidcatSelec" runat="server" Visible="False"></asp:Label>
                            &nbsp;&nbsp;<table class="auto-style2">
                                <tr>
                                    <td>CENTRO DE COSTO AUXILIAR:<br />
                                        <asp:TextBox ID="txtcategoria" runat="server" placeholder="Agregar tipo de gasto" Width="300px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style3">DESCRIPCIÓN:<br />
                                        <asp:TextBox ID="txtcatDetalle" runat="server" placeholder="Agregar tipo de gasto" Width="800px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="btnCatreg" runat="server" OnClick="btnCatreg_Click" Text="AGREGAR" />
                                        <asp:Button ID="btnccauxModificar" runat="server" OnClick="btnccauxModificar_Click" Text="MODIFICAR" />
                                    </td>
                                    <td class="auto-style3">
                                        <asp:Button ID="btncateliminar" runat="server" OnClick="btncateliminar_Click" Text="ELIMINAR" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </asp:Panel>
                        <br />
                    <asp:GridView ID="gvccAuxiliar" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idCategoria,categoria,descripcion" DataSourceID="SqlDataSource1ccauxi" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gvccAuxiliar_SelectedIndexChanged" Width="100%">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" >
                            <HeaderStyle Width="50px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="idCategoria" HeaderText="COD" ReadOnly="True" SortExpression="idCategoria" >
                            <HeaderStyle Width="70px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="categoria" HeaderText="CC AUXILIAR" SortExpression="categoria" />
                            <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCIÓN" SortExpression="descripcion" />
                             <asp:BoundField DataField="CANTIDAD" HeaderText="TIPOS REG." SortExpression="CANTIDAD" >
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#E8E8E8" Font-Bold="True" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1ccauxi" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idCategoria,categoria,descripcion,(select isnull(count(idccdet),0) from gastos.CentroCostoDescripcion where idcat= idCategoria) as CANTIDAD from gastos.CentroCostoCategoria
order by categoria 
"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource1tipo0" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_cctipo" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="gvccAuxiliar" Name="idcat" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <span class="auto-style4">TIPO DE GASTO REGISTRADO:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" Visible="False">Registrar tipo de gasto</asp:LinkButton>
                       
                        <br />
                        <asp:Panel ID="pccindividual" runat="server" Visible="False">
                            <asp:Label ID="lblitemseleccionadoIndi" runat="server" Visible="False"></asp:Label>
                            &nbsp;<asp:Label ID="lblidcategoria" runat="server" Visible="False"></asp:Label>
                            &nbsp;<table class="auto-style2">
                                <tr>
                                    <td>GASTO:<br />
                                        <asp:TextBox ID="txttipo" runat="server" placeholder="Agregar tipo de gasto" Width="300px"></asp:TextBox>
                                    </td>
                                    <td class="auto-style3">MOSTRAR EN VIATICOS:<asp:RadioButtonList ID="brMostrarviaticos" runat="server" RepeatDirection="Horizontal" Width="200px">
                                        <asp:ListItem Value="1">SI</asp:ListItem>
                                        <asp:ListItem Selected="True" Value="0">NO</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td class="auto-style3">HABILITADO:<asp:RadioButtonList ID="rbtipocat" runat="server" RepeatDirection="Horizontal" Width="200px">
                                        <asp:ListItem Selected="True" Value="1">SI</asp:ListItem>
                                        <asp:ListItem Value="0">NO</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        <asp:Button ID="Button8" runat="server" OnClick="Button8_Click" Text="AGREGAR" />
                                    </td>
                                    <td>
                                        <asp:Button ID="Button9" runat="server" OnClick="Button9_Click" Text="MODIFICAR" />
                                    </td>
                                    <td>
                                        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="ELIMINAR" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td class="auto-style3">&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                            <br />
                        </asp:Panel>
                        <asp:GridView ID="gvgastoxtipo" CssClass="table table sm" runat="server" AutoGenerateColumns="False" DataKeyNames="idccdet,titulo,estado,estadoviaticos" DataSourceID="SqlDataSource1tipo0" OnSelectedIndexChanged="gvgastoxtipo_SelectedIndexChanged" Width="100%">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" >
                                <HeaderStyle Width="70px" />
                                </asp:CommandField>
                                <asp:BoundField DataField="idccdet" HeaderText="COD" ReadOnly="True" SortExpression="idccdet" >
                                <HeaderStyle Width="70px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="idcat" HeaderText="idcat" SortExpression="idcat" Visible="False" />
                                <asp:BoundField DataField="titulo" HeaderText="TIPO DE GASTO" SortExpression="titulo" />
                                 <asp:BoundField DataField="estadoviaticos" HeaderText="VIATICOS" SortExpression="estadoviaticos" Visible="False" />
                                <asp:BoundField DataField="estado" HeaderText="ESTADO" SortExpression="estado" Visible="False" />

                                 <asp:ImageField DataImageUrlField="estadoviaticos" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO EN VIATICOS">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="100px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                                 <asp:ImageField DataImageUrlField="estado" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="HABILITADO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                            </Columns>
                            <EmptyDataTemplate>
                                No registra tipo de gasto....
                            </EmptyDataTemplate>
                            <HeaderStyle BackColor="#EEEEEE" />
                    </asp:GridView>
                         </asp:Panel>
                    <br />
                    <asp:Panel ID="pcc" runat="server">
                        <h2>CENTRO DE COSTOS DIRECTOS</h2>
                        <asp:GridView ID="gvcc" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idCentroCosto,Descripcion" DataSourceID="SqlDataSourceCC" OnSelectedIndexChanged="gvcc_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="idCentroCosto" HeaderText="COD" ReadOnly="True" SortExpression="idCentroCosto" />
                                <asp:BoundField DataField="Descripcion" HeaderText="CENTRO COSTO" SortExpression="Descripcion" >
                                <HeaderStyle Width="300px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="concepto" HeaderText="DESCRIPCIÓN" SortExpression="concepto" >
                                <ItemStyle Font-Size="X-Small" />
                                </asp:BoundField>
                                <asp:BoundField DataField="abreviatura" HeaderText="ABREVITURA" SortExpression="abreviatura" />
                                <asp:BoundField DataField="codigocontable" HeaderText="COD. CONTABLE" SortExpression="codigocontable" />
                                <asp:BoundField DataField="estadoCentrocostoAdmin" HeaderText="HABILITADO" SortExpression="estadoCentrocostoAdmin" />
                            </Columns>
                            <HeaderStyle BackColor="#F2F2F2" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceCC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from gastos.CentroCosto where idCentroCosto not in (0)"></asp:SqlDataSource>
                        <table class="auto-style1">
                            <tr>
                                <td>Centro de costo:
                                    <asp:Label ID="lblidcc" runat="server"></asp:Label>
                                </td>
                                <td>Abreviatura:</td>
                                <td>Cod. contable:</td>
                                <td>Habilitado:</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtCentroCosto" Style="text-transform: uppercase" runat="server" Width="500px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtabreviatura" Style="text-transform: uppercase" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtcodcontable" runat="server"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="rbtnHabilitado" runat="server" Width="150px" RepeatDirection="Horizontal">
                                        <asp:ListItem Selected="True" Value="1">SI</asp:ListItem>
                                        <asp:ListItem Value="0">NO</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td valign=top colspan="4">Descripción:<asp:TextBox Style="text-transform: uppercase" ID="txtdescripcion" runat="server" Rows="4" TextMode="MultiLine" Width="100%"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                        <asp:Button ID="Button3" runat="server" Text="NUEVO CC" OnClick="Button3_Click" Width="200px" />
                        <asp:Button ID="btnRegistrar" runat="server" Text="REGISTRAR CC" OnClick="btnRegistrar_Click" Width="200px" />
                        <asp:Button ID="btneliminar" runat="server" Text="ELIMINAR CC" OnClick="btneliminar_Click" />
                        <asp:Button ID="Button2" runat="server" Text="CANCELAR" ForeColor="#CC0000" OnClick="Button2_Click" />
                        <br />
                    </asp:Panel>




                    <br />
                    <asp:Panel ID="pcca" runat="server" Visible="False">
                        <h2>CENTRO DE COSTO:</h2>
                        <p>
                            Centro de costo:</p>
                        <p>
                            <asp:DropDownList ID="ddlcc" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Column1" DataValueField="idCentroCosto" OnSelectedIndexChanged="ddlcc_SelectedIndexChanged" Width="400px">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idCentroCosto,CONCAT(Descripcion,' - ',abreviatura) from gastos.CentroCosto where estadoCentrocostoAdmin =1 and idCentroCosto <>0

"></asp:SqlDataSource>
                        </p>
                        <asp:GridView ID="gvCCaux" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="idcca,abreviatura,descripcion,estado" DataSourceID="SqlDataSourceCCAux" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="gvCCaux_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="idcca" HeaderText="idcca" ReadOnly="True" SortExpression="idcca" Visible="False" />
                                <asp:BoundField DataField="abreviatura" HeaderText="CCA" SortExpression="abreviatura" />
                                <asp:BoundField DataField="descripcion" HeaderText="CC Auxiliar" SortExpression="descripcion" />
                                <asp:BoundField DataField="estado" HeaderText="HABILITADO" SortExpression="estado" />
                            </Columns>
                            <EmptyDataTemplate>
                                No registra centro de costo auxiliar
                            </EmptyDataTemplate>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="Silver" Font-Bold="True" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#EFEFEF" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceCCAux" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_ccauxiliarListado" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddlcc" Name="idcc" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <table class="auto-style1">
                            <tr>
                                <td>CC Auxiliar<asp:Label ID="lblidCCAux" runat="server"></asp:Label>
                                </td>
                                <td>Habilitado:</td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtccaux" runat="server" Width="600px"></asp:TextBox>
                                </td>
                                <td>
                                    <asp:RadioButtonList ID="rbtnHabilitadoaux" runat="server" RepeatDirection="Horizontal" Width="150px">
                                        <asp:ListItem Selected="True" Value="1">SI</asp:ListItem>
                                        <asp:ListItem Value="0">NO</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" valign="top">
                                    <asp:Button ID="btnnuevoCCa" runat="server" Text="NUEVO" OnClick="btnnuevoCCa_Click" />
                                    <asp:Button ID="btnRegistrarCCa" runat="server" OnClick="btnRegistrarCCa_Click" Text="REGISTRAR CCA" />
                                    <asp:Button ID="btneliminarCCa" runat="server" Text="ELIMINAR CCA" OnClick="btneliminarCCa_Click" Visible="False" />
                                    <asp:Button ID="Button7" runat="server" ForeColor="#CC0000" Text="CANCELAR" />
                                </td>
                            </tr>
                        </table>
                        <br />
                    </asp:Panel>




                    <asp:Panel ID="pdistribucion" runat="server" Visible="False">
                        <span class="auto-style4"><strong>CENTRO DE COSTO</strong></span><br /> <asp:GridView ID="gvccPrincipal" runat="server" AutoGenerateColumns="False" class="table table-condensed table-bordered table-hover" DataKeyNames="idCentroCosto,Descripcion" DataSourceID="SqlDataSourceCC" OnSelectedIndexChanged="gvccPrincipal_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="idCentroCosto" HeaderText="COD" ReadOnly="True" SortExpression="idCentroCosto" />
                                <asp:BoundField DataField="Descripcion" HeaderText="CENTRO COSTO" SortExpression="Descripcion">
                                <HeaderStyle Width="300px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="abreviatura" SortExpression="abreviatura" />
                                <asp:BoundField DataField="concepto" HeaderText="DESCRIPCIÓN" SortExpression="concepto">
                                <ItemStyle Font-Size="X-Small" />
                                </asp:BoundField>
                                <asp:BoundField DataField="codigocontable" HeaderText="COD. CONTABLE" SortExpression="codigocontable" Visible="False" />
                                <asp:BoundField DataField="estadoCentrocostoAdmin" HeaderText="HABILITADO" SortExpression="estadoCentrocostoAdmin" Visible="False" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#EFEFEF" Font-Bold="True" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#DBF2E7" Font-Bold="True" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        CENTRO DE COSTO AUXILIAR:<asp:GridView ID="gvauxiliar" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1auxi2" ForeColor="Black" GridLines="Horizontal" DataKeyNames="idccd,idCentroCosto,idCategoria" OnSelectedIndexChanged="gvauxiliar_SelectedIndexChanged" Width="100%">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="idccd" HeaderText="idccd" SortExpression="idccd" ReadOnly="True" Visible="False" />
                                <asp:BoundField DataField="idCentroCosto" HeaderText="idCentroCosto" SortExpression="idCentroCosto" ReadOnly="True" Visible="False" />
                                <asp:BoundField DataField="idCategoria" HeaderText="COD" ReadOnly="True" SortExpression="idCategoria" />
                                <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" ReadOnly="True" SortExpression="CATEGORIA" />
                                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#E8E8E8" Font-Bold="True" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#DBF2E7" Font-Bold="True" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1auxi2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gasto_distribucionxcc" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="gvccPrincipal" Name="idcc" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Panel ID="ptipos" runat="server">
                    
                        <br />
                        TIPO DE GASTOS<strong>:</strong>
                        &nbsp;<asp:Label ID="lblidcategoria10" runat="server"></asp:Label>
                        <br />
                        <asp:GridView ID="gvtipoGasto" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1tipo" ForeColor="Black" GridLines="Horizontal" DataKeyNames="idccdet,titulo,estado" OnSelectedIndexChanged="gvtipoGasto_SelectedIndexChanged" Width="600px">
                            <Columns>
                                <asp:BoundField DataField="idccdet" HeaderText="COD" SortExpression="idccdet" ReadOnly="True" />
                                <asp:BoundField DataField="idcat" HeaderText="idcat" SortExpression="idcat" Visible="False" />
                                <asp:BoundField DataField="titulo" HeaderText="TIPO DE GASTO" SortExpression="titulo" />
                                <asp:BoundField DataField="estado" HeaderText="ESTADO" SortExpression="estado" Visible="False" />
                            </Columns>
                            <EmptyDataTemplate>
                                No registra tipo de gasto
                            </EmptyDataTemplate>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#E8E8E8" Font-Bold="True" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#DBF2E7" Font-Bold="True" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1tipo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_cctipo" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblidcategoria10" Name="idcat" PropertyName="Text" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                    </asp:Panel>
                            </asp:Panel>



                </div>
            </div>
         </div>
    
</asp:Content>
