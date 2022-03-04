<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="AdminCCA.aspx.cs" Inherits="biotech.bio.ventas.compras.AdminCCA" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style4 {
            font-size: x-large;
        }
        .auto-style5 {
            width: 800px;
        }
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style6 {
            width: 700px;
        }
        .auto-style7 {
            width: 595px;
        }
        .auto-style8 {
            width: 5px;
        }
        .auto-style9 {
            font-size: large;
        }
        .auto-style10 {
            height: 36px;
            width: 445px;
        }
        .auto-style11 {
            width: 605px;
            height: 36px;
        }
        .auto-style12 {
            height: 80px;
            width: 445px;
        }
        .auto-style13 {
            width: 605px;
            height: 80px;
        }
        .auto-style14 {
            width: 545px;
            height: 80px;
        }
        .auto-style15 {
            width: 545px;
            height: 36px;
        }
        .auto-style16 {
            width: 600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../css/sweetalert.css" rel="stylesheet" type="text/css" />
    

     <div class="row-fluid">
		<div class="col-md-12">
           <h2><span class="glyphicon glyphicon-edit"></span> DIRIGIR CENTRO DE GASTOS</h2>
            <div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/bio/ventas/RCentroCosto.aspx">Centro de Gastos</asp:LinkButton>
                        </li>

                        <li>
                        <asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/bio/ventas/compras/AdminCCA.aspx">Dirigir Centro de Gastos</asp:LinkButton>
                        </li>
                          
                       

                        <li>
                        <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl="~/bio/ventas/compras/CCAregistrar.aspx">Administrar</asp:LinkButton>
                        </li>
                       
                    </ol>

                <asp:Button ID="Button2" runat="server" Text="COMPRAS" Width="300px" OnClick="Button2_Click" />
                  
                <asp:Button ID="btncomprasInternas" runat="server" Text="COMPRAS INTERNAS" Width="300px" OnClick="Button3_Click" />

                <asp:Button ID="Button4" runat="server" Text="VIATICOS" Width="300px" OnClick="Button4_Click" />

                    <asp:Panel ID="pAyuda" runat="server" Visible="False">
                        <asp:Label ID="lblpop" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblpproveedor" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblpidpago" runat="server" Visible="False"></asp:Label>
                        &nbsp; idpago selec:
                        <asp:Label ID="lblidPagoSelec" runat="server"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; idccaselec
                        <asp:Label ID="lblidCCaux" runat="server"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblIDCCSelecxcci" runat="server"></asp:Label>
                        <br />
                        <asp:Label ID="tituloviatico" runat="server"></asp:Label>
                        &nbsp;<asp:Label ID="titulointernas" runat="server"></asp:Label>
                        &nbsp;<asp:Label ID="titulocompras" runat="server">RESUMEN COMPRAS - CTA. PAGOS  GENERAL</asp:Label>
                    </asp:Panel>


                 <asp:Panel ID="Panel30" runat="server" Visible="False">
                     <strong><span class="auto-style4">VIATICOS</span></strong><span class="auto-style9"> </span>
                     <asp:Label ID="lblvano" runat="server" CssClass="auto-style4"></asp:Label>
                     -<asp:Label ID="lblvMes" runat="server" style="font-size: x-large"></asp:Label>
                     <asp:Label ID="lblvop" runat="server" Visible="False">0</asp:Label>
                     
                     <asp:SqlDataSource ID="SqlDataSourceanoviatico" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select distinct idano from tb_rdRendicionGastos"></asp:SqlDataSource>
                     <asp:SqlDataSource ID="SqlDataSourceViaticoMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idmes,mes from tb_mes"></asp:SqlDataSource>
                     
                     <br />
                     <table class="auto-style5">
                         <tr>
                             <td>Año:<br />
                                 <asp:DropDownList ID="ddlanoViaticos" runat="server" DataSourceID="SqlDataSourceanoviatico" DataTextField="idano" DataValueField="idano" Width="200px">
                                 </asp:DropDownList>
                             </td>
                             <td>Periodo:<br />
                                 <asp:DropDownList ID="ddlMesViatico" runat="server" DataSourceID="SqlDataSourceViaticoMes" DataTextField="mes" DataValueField="idmes" Width="200px">
                                 </asp:DropDownList>
                             </td>
                             <td>
                                 <asp:RadioButtonList ID="rbEstadoViatico" runat="server" Width="200px">
                                     <asp:ListItem Selected="True" Value="0">Sin centro de costo</asp:ListItem>
                                     <asp:ListItem Value="1">Con centro de costo</asp:ListItem>
                                 </asp:RadioButtonList>
                             </td>
                             <td>
                                 <asp:Button ID="btnGenerarViaticos" runat="server" Text="GENERAR" OnClick="btnGenerarViaticos_Click" />
                                 </td>
                             <td><strong>
                                 <asp:ImageButton ID="ibtnviaticos" runat="server" ImageUrl="~/images/excel.png" OnClick="ibtnviaticos_Click" Width="20px" />
                                 </strong></td>
                         </tr>
                         <tr>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                     </table>
                     <asp:Panel ID="Panel31" runat="server" BackColor="#E6F7E6">
                         <span class="auto-style9"><strong>VIÁTICOS COD.:</strong></span>
                         <asp:Label ID="lblidViaticosSelec" runat="server" style="font-weight: 700"></asp:Label>
                         <asp:Label ID="lblidAuxViaticosSelecc" runat="server" Visible="False"></asp:Label>
                         <asp:Label ID="lblccxcciselect" runat="server" Visible="False"></asp:Label>
                         <br />
                         <strong>Personal</strong>:
                         <asp:Label ID="lblidpersonal" runat="server"></asp:Label>
                         <br />
                         <strong>Categoria</strong>:
                         <asp:Label ID="lblidCategoria30" runat="server"></asp:Label>
                         <br />
                         <strong>Descripción</strong>:
                         <asp:Label ID="lblDescripcion30" runat="server"></asp:Label>
                         &nbsp;<table class="auto-style6">
                             <tr>
                                 <td class="auto-style7">Centro de costo:<asp:DropDownList ID="ddl30CC" runat="server" AutoPostBack="True" CssClass="form-control" DataSourceID="SqlDataSourcecca" DataTextField="Descripcion" DataValueField="idCentroCosto" Width="500px" OnSelectedIndexChanged="ddl30CC_SelectedIndexChanged">
                                     </asp:DropDownList>
                                 </td>
                                 <td class="auto-style8">Centro costo auxiliar<br />
                                     <asp:DropDownList ID="ddl30categoria" runat="server" CssClass="form-control" DataSourceID="SqlDataSource30cat0" DataTextField="CATEGORIA" DataValueField="idCategoria" Width="500px" AutoPostBack="True" OnSelectedIndexChanged="ddl30categoria_SelectedIndexChanged">
                                     </asp:DropDownList>
                                 </td>
                                 <td class="auto-style8">
                                     Tipo de gastos:<asp:DropDownList ID="ddl30tipocompras0" runat="server" CssClass="form-control" DataSourceID="SqlDataSource30cctipo0" DataTextField="titulo" DataValueField="idccdet" Width="300px">
                                     </asp:DropDownList>
                                 </td>
                                 <td class="auto-style8">
                                     
                                     <asp:Panel ID="psubunidad30" runat="server">
                                         Unidad Vehicular:<asp:DropDownList ID="ddlIdUnidad30" runat="server" CssClass="form-control" datasourceid="SqlDataSourceUnidadesd0" DataTextField="EQUIPOPERSONAL" DataValueField="IdEquipo" Width="200px">
                                         </asp:DropDownList>
                                     </asp:Panel>
                                 </td>
                             </tr>
                             <tr>
                                 <td class="auto-style7">
                                     <asp:Button ID="btnDirigirviatico" runat="server" CssClass="btn btn-success" OnClick="btnDirigirviatico_Click" Text="DIRIGIR CENTRO COSTO" Width="100%" />
                                 </td>
                                 <td class="auto-style8">
                                     <asp:Button ID="btnCancelarViatico" runat="server" CssClass="btn btn-danger" OnClick="btnCancelar_Click" Text="CANCELAR" />
                                 </td>
                                 <td class="auto-style8">&nbsp;</td>
                                 <td class="auto-style8">&nbsp;</td>
                             </tr>
                         </table>
                     </asp:Panel>
                     <asp:SqlDataSource ID="SqlDataSource30cat0" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gasto_distribucionxcc" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="ddl30CC" Name="idcc" PropertyName="SelectedValue" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <asp:SqlDataSource ID="SqlDataSource30cctipo0" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_cctipo" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="ddl30categoria" Name="idcat" PropertyName="SelectedValue" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <br />
                     <asp:GridView ID="gvViaticos" class="table table-sm" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceViaticos" Font-Size="X-Small" GridLines="Horizontal" DataKeyNames="idRGdetalle,idccAuxiliar,codempleado,categoriard,DESCRIPCION" OnSelectedIndexChanged="gvViaticos_SelectedIndexChanged" AllowSorting="True">
                         <Columns>
                             <asp:CommandField ShowSelectButton="True" />
                             <asp:BoundField DataField="idRGdetalle" HeaderText="COD" SortExpression="idRGdetalle" />
                             <asp:BoundField DataField="fecharegistro" HeaderText="F. REGISTRO" SortExpression="fecharegistro" DataFormatString="{0:dd/MM/yyyy}" >
                             <HeaderStyle Width="110px" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="codempleado" HeaderText="PERSONAL" SortExpression="codempleado" />
                             <asp:BoundField DataField="categoriard" HeaderText="CATEGORIA" SortExpression="categoriard" />
                             <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                             <asp:BoundField DataField="M" HeaderText="" SortExpression="M" />
                             <asp:BoundField DataField="importe" HeaderText="IMPORTE" SortExpression="importe" DataFormatString="{0:0,0.00}" >
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                             </asp:BoundField>
                             <asp:BoundField DataField="idccAuxiliar" HeaderText="IDCCA" SortExpression="idccAuxiliar" Visible="False" />
                              <asp:BoundField DataField="categoria" HeaderText="CENTRO DE COSTO" SortExpression="categoria" />
                              <asp:BoundField DataField="titulo" HeaderText="TIPO DE GASTO" SortExpression="titulo" />
                         </Columns>
                         <EmptyDataTemplate>
                             No registra información...
                         </EmptyDataTemplate>
                         <HeaderStyle BackColor="#F0F0F0" />
                         <SelectedRowStyle BackColor="#E8F7E8" Font-Bold="True" />
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSourceViaticos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_viaticos" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lblvano" Name="ano" PropertyName="Text" Type="Int32" />
                             <asp:ControlParameter ControlID="lblvMes" Name="mes" PropertyName="Text" Type="Int32" />
                             <asp:ControlParameter ControlID="lblvop" Name="op" PropertyName="Text" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                </asp:Panel>

                <asp:Panel ID="Panel20" runat="server" Visible="False">
                    <span class="auto-style4"><strong>COMPRAS INTERNAS</strong></span>

                    <br />
                    <table class="auto-style5">
                        <tr>
                            <td>Año:<br />
                                <asp:DropDownList ID="ddlanocInternas" runat="server" DataSourceID="SqlDataSourceanoviatico" DataTextField="idano" DataValueField="idano" Width="200px">
                                </asp:DropDownList>
                            </td>
                            <td>Periodo:<asp:Label ID="lblnRgDetalle" runat="server" Text="0" Visible="False"></asp:Label>
                                <br />
                                <asp:DropDownList ID="ddlMesCInternas" runat="server" DataSourceID="SqlDataSourceViaticoMes" DataTextField="mes" DataValueField="idmes" Width="200px">
                                </asp:DropDownList>
                            </td>
                            <td>
                                <asp:RadioButtonList ID="rbEstadoCInternas" runat="server" Width="200px">
                                    <asp:ListItem Selected="True" Value="0">Sin centro de costo</asp:ListItem>
                                    <asp:ListItem Value="1">Con centro de costo</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                            <td>
                                <asp:Button ID="btnGenerarCInternas" runat="server" OnClick="btnGenerarCInternas_Click" Text="GENERAR" />
                            </td>
                            <td><strong>
                                <asp:ImageButton ID="ibtnComprasInternas" runat="server" ImageUrl="~/images/excel.png" OnClick="ibtnComprasInternas_Click" Width="20px" />
                                </strong></td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                    <asp:Panel ID="PanelAuxcomprasInternas" runat="server" BackColor="#E6F7E6">
                        <span class="auto-style9"><strong>Compras internas: COD.</strong></span>
                        <asp:Label ID="lblidViaticosSelec0" runat="server" style="font-weight: 700"></asp:Label>
                        <br />
                        <strong>PERSONAL</strong>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblidpersonal20" runat="server"></asp:Label>
                        <br />
                        <strong>CATEGORIA</strong>:&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblcategoria20" runat="server"></asp:Label>
                        <br />
                        <strong>DESCRIPCIÓN</strong>:&nbsp;
                        <asp:Label ID="lbldescripcion20" runat="server"></asp:Label>
                        <asp:Label ID="lblidAuxViaticosSelecc0" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblccxcciselect0" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="Label1" runat="server"></asp:Label>
                        <table class="auto-style6">
                            <tr>
                                <td class="auto-style7">Centro de costo:<asp:DropDownList ID="dd20cc" runat="server" AutoPostBack="True" CssClass="form-control" DataSourceID="SqlDataSourcecca" DataTextField="Descripcion" DataValueField="idCentroCosto" Width="500px" OnSelectedIndexChanged="dd20cc_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style8">Centro costo auxiliar<br />
                                    <asp:DropDownList ID="ddl20CCategoria" runat="server" CssClass="form-control" DataSourceID="SqlDataSource20cat" DataTextField="CATEGORIA" DataValueField="idCategoria" Width="500px" AutoPostBack="True" OnSelectedIndexChanged="ddl20CCategoria_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style8">
                                    Tipo de gasto:<asp:DropDownList ID="dd20tipocompras" runat="server" CssClass="form-control" DataSourceID="SqlDataSource20cctipo" DataTextField="titulo" DataValueField="idccdet" Width="300px">
                                    </asp:DropDownList>
                                </td>
                                <td class="auto-style8">
                                    <asp:Panel ID="psubunidad20" runat="server">
                                        Unidad Vehicular:<asp:DropDownList ID="ddlIdUnidad20" runat="server" CssClass="form-control" datasourceid="SqlDataSourceUnidadesd0" DataTextField="EQUIPOPERSONAL" DataValueField="IdEquipo" Width="200px">
                                        </asp:DropDownList>
                                    </asp:Panel>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style7">
                                    <asp:Button ID="btnDirigirCi" runat="server" CssClass="btn btn-success" OnClick="btnDirigirCi_Click" Text="DIRIGIR GASTO REALIZADO" Width="100%" />
                                </td>
                                <td class="auto-style8">
                                    <asp:Button ID="btnCancelarCi" runat="server" CssClass="btn btn-danger" OnClick="btnCancelar_Click" Text="CANCELAR" />
                                </td>
                                <td class="auto-style8">&nbsp;</td>
                                <td class="auto-style8">&nbsp;</td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:SqlDataSource ID="SqlDataSource20cat" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gasto_distribucionxcc" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="dd20cc" Name="idcc" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource20cctipo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_cctipo" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddl20CCategoria" Name="idcat" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSourceUnidadesd0" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_listar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <br />
                    <asp:GridView ID="gvComprasInternas" class="table table-sm" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcecInternas" Width="100%" AllowSorting="True" DataKeyNames="idRGdetalle,idccAuxiliar,codempleado,categoriard,DESCRIPCION" Font-Size="X-Small" OnSelectedIndexChanged="gvComprasInternas_SelectedIndexChanged">
                        <Columns>
                           <asp:CommandField ShowSelectButton="True" />
                             <asp:BoundField DataField="idRGdetalle" HeaderText="COD" SortExpression="idRGdetalle" />
                             <asp:BoundField DataField="fecharegistro" HeaderText="F. REGISTRO" SortExpression="fecharegistro" DataFormatString="{0:dd/MM/yyyy}" >
                             <HeaderStyle Width="110px" />
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                             <asp:BoundField DataField="codempleado" HeaderText="PERSONAL" SortExpression="codempleado" />
                             <asp:BoundField DataField="categoriard" HeaderText="CATEGORIA" SortExpression="categoriard" />
                             <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                             <asp:BoundField DataField="M" HeaderText="" SortExpression="M" />
                             <asp:BoundField DataField="importe" HeaderText="IMPORTE" SortExpression="importe" DataFormatString="{0:0,0.00}" >
                             <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                             </asp:BoundField>
                             <asp:BoundField DataField="idccAuxiliar" HeaderText="IDCCA" SortExpression="idccAuxiliar" Visible="False" />
                              <asp:BoundField DataField="categoria" HeaderText="CENTRO DE COSTO" SortExpression="categoria" />
                            <asp:BoundField DataField="titulo" HeaderText="TIPO DE GASTO" SortExpression="titulo" />
                        </Columns>
                        <EmptyDataTemplate>
                            No registra compras internas por dirigir...
                        </EmptyDataTemplate>
                        <HeaderStyle BackColor="#F0F0F0" />
                        <SelectedRowStyle BackColor="#F1FAF5" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSourcecInternas" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos_ComprasInternas" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlanocInternas" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="ddlMesCInternas" Name="mes" PropertyName="SelectedValue" Type="Int32" />
                            <asp:ControlParameter ControlID="lblnRgDetalle" Name="rgDetalle" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="rbEstadoCInternas" Name="op" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <br />
                    <br />

                </asp:Panel>


                <asp:Panel ID="Panel10" runat="server" Visible="False">
                    <span class="auto-style4"><strong>COMPRAS</strong></span>
                    

               
                    <asp:Panel ID="pCentroCosto" runat="server" Visible="False">
                      
                        <table class="auto-style1">
                            <caption>
                                <strong>Nº CUENTA:
                                <asp:Label ID="lblncta" runat="server"></asp:Label>
                                &nbsp;
                                </strong>
                                <asp:Label ID="lblproveedorcompras" runat="server"></asp:Label>
                                <br />
                                <strong>ASUNTO:</strong>
                                <asp:Label ID="lblasuntocompras" runat="server"></asp:Label>
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
                            </caption>
                            </tr>
                            <tr>
                               
                                <td class="auto-style12">
                                    Centro&nbsp; de Costo:<asp:DropDownList ID="ddl10CC" runat="server" CssClass="form-control" DataSourceID="SqlDataSourcecca" DataTextField="Descripcion" DataValueField="idCentroCosto" Width="400px" AutoPostBack="True" OnSelectedIndexChanged="ddl10CCA_SelectedIndexChanged">
                                    </asp:DropDownList>
                                   </td>
                                <td class="auto-style14"> 
                                    CC Auxiliar:<asp:DropDownList ID="ddl10CCaux" runat="server" CssClass="form-control" DataSourceID="SqlDataSource2ccauxi" Width="500px" DataTextField="CATEGORIA" DataValueField="idCategoria" AutoPostBack="True" OnSelectedIndexChanged="ddl10CCaux_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </td>
                                
                                <td class="auto-style13">Tipo de gasto:<br />
                                    <asp:DropDownList ID="dd10tipocompras"  CssClass="form-control" runat="server" DataSourceID="SqlDataSourcecctipo" DataTextField="titulo" DataValueField="idccdet" Width="300px">
                                    </asp:DropDownList>
                                </td>
                                
                                <td class="auto-style13">
                                    <asp:Panel ID="psubunidad10" runat="server">
                                        Unidad Vehicular:<asp:SqlDataSource ID="SqlDataSourceUnidadesd" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_listar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                        <asp:DropDownList ID="ddlIdUnidad" runat="server" CssClass="form-control" DataSourceID="SqlDataSourceUnidadesd" DataTextField="EQUIPOPERSONAL" DataValueField="IdEquipo">
                                        </asp:DropDownList>
                                    </asp:Panel>
                                </td>
                                
                            </tr>
                            <tr>
                                <td class="auto-style10">
                                    <asp:Button ID="btnActualizar" runat="server" CssClass="btn btn-success" OnClick="btnActualizar_Click" Text="DIRIGIR GASTO REALIZADO" Width="400px" />
                                   
                                </td>
                                <td class="auto-style15">
                                    <asp:Button ID="btnCancelar" runat="server" CssClass="btn btn-danger" OnClick="btnCancelar_Click" Text="CANCELAR" />
                                   </td>
                               
                                <td class="auto-style11">&nbsp;</td>
                               
                                <td class="auto-style11">&nbsp;</td>
                               
                            </tr>
                        </table>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSourcecca" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="gastos.CCostoAdministrativo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                      
                    </asp:Panel>


                <asp:Panel ID="Panel1" runat="server">
                    <br />
&nbsp;<strong>Cta. por pagar:</strong>
    
                        <asp:TextBox ID="txtbuscar" runat="server" placeholder="Buscar ..." Width="250px" AutoPostBack="True" OnTextChanged="txtbuscar_TextChanged"></asp:TextBox>
                        
                     <asp:Button ID="btnbncuenta" runat="server" OnClick="btnbncuenta_Click" Text="Nº CUENTA" />
                   
                        <asp:Button ID="btnbProveedor" runat="server" Text="PROVEEDOR" OnClick="btnbProveedor_Click" />

                     
                     <asp:Button ID="btnconcca" runat="server" ForeColor="#006600" OnClick="btnconcca_Click" Text="CENTRO DE COSTO" />
                   
                     <asp:Button ID="btnfaltacca" runat="server" ForeColor="#CC0000" OnClick="btnfaltacca_Click" Text="SIN CENTRO DE COSTO" />

                     <asp:ImageButton ID="ibtnActualizar" runat="server" ImageUrl="~/images/actualizarr.png" OnClick="ibtnActualizar_Click" Width="25px" />

                    <br />
                    <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Exportar</asp:LinkButton>
                    <asp:Panel ID="pcomprasfechas" runat="server">
                        <table class="auto-style16">
                            <tr>
                                <td>Fecha desde:<asp:Label ID="lblgastof1" runat="server" Visible="False"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtfecha1" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                                </td>
                                <td>Fecha hasta:<asp:Label ID="lblgastof2" runat="server" Visible="False"></asp:Label>
                                    <br />
                                    <asp:TextBox ID="txtfecha2" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                                </td>
                                <td>Exportar por fecha:<br />
                                    <asp:ImageButton ID="ibtnCompras" runat="server" Height="20px" ImageUrl="~/images/excel.png" OnClick="ibtnCompras_Click" Width="20px" />
                                    </td>
                            </tr>
                        </table>
                        <asp:GridView ID="gvGAstosfechas" runat="server" AutoGenerateColumns="False" DataKeyNames="idpago" DataSourceID="SqlDataSourceGastos" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="idpago" HeaderText="idpago" ReadOnly="True" SortExpression="idpago" Visible="False" />
                                <asp:BoundField DataField="idempresa" HeaderText="idempresa" SortExpression="idempresa" Visible="False" />
                                <asp:BoundField DataField="NCTA" HeaderText="NCTA" ReadOnly="True" SortExpression="NCTA" />
                                <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" SortExpression="idProveedor" Visible="False" />
                                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" />
                                <asp:BoundField DataField="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. REGISTRO" SortExpression="FREGISTRO">
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="NDOCUMENTO" HeaderText="N. DOCUMENTO" SortExpression="NDOCUMENTO" />
                                <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" />
                                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CUOTAS" HeaderText="CUOTAS" ReadOnly="True" SortExpression="CUOTAS" />
                                <asp:BoundField DataField="M" ReadOnly="True" SortExpression="M" />
                                <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                                <asp:BoundField DataField="CREGISTRADAS" HeaderText="Ctas. REGISTRADAS" ReadOnly="True" SortExpression="CREGISTRADAS" Visible="False" />
                                <asp:BoundField DataField="NCTAS" HeaderText="NCTAS" SortExpression="NCTAS" Visible="False" />
                                <asp:BoundField DataField="CONTINUO" HeaderText="CONTINUO" SortExpression="CONTINUO" Visible="False" />
                                <asp:BoundField DataField="ESTADOP" HeaderText="ESTADOP" ReadOnly="True" SortExpression="ESTADOP" Visible="False" />
                                <asp:BoundField DataField="OPFACTURACION" HeaderText="OPFACTURACION" ReadOnly="True" SortExpression="OPFACTURACION" Visible="False" />
                                <asp:BoundField DataField="IDCCA" HeaderText="IDCCA" ReadOnly="True" SortExpression="IDCCA" />
                                <asp:BoundField DataField="GASTO" HeaderText="GASTO" SortExpression="GASTO" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceGastos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pagos_registrados_fecha" SelectCommandType="StoredProcedure">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="lblgastof1" Name="f1" PropertyName="Text" Type="DateTime" />
                                <asp:ControlParameter ControlID="lblgastof2" Name="f2" PropertyName="Text" Type="DateTime" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>

                    <asp:GridView ID="dvcuentaxpagar" class="table table-sm" runat="server" AutoGenerateColumns="False" DataKeyNames="idpago,idempresa,idProveedor,NCTAS,RAZONSOCIAL,IMPORTE,NCTA,GLOSA" DataSourceID="SqlDataSource1" GridLines="Horizontal" OnRowCommand="dvcuentaxpagar_RowCommand" PageSize="50" AllowPaging="True" Font-Size="XX-Small" AllowSorting="True" OnSelectedIndexChanged="dvcuentaxpagar_SelectedIndexChanged">
                            <Columns>
                                

                              

                             <%--   <asp:ButtonField CommandName="EDITAR" ShowHeader="True" Text="EDITAR" ButtonType="Image" ImageUrl="~/images/1editar.png">
                                    <ControlStyle Height="20px" Width="25px" />
                                    <HeaderStyle Width="20px" />
                                </asp:ButtonField>--%>

                            <%--    <asp:ImageField DataImageUrlField="ESTADOP" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="P.PAGOS">
                                    <ControlStyle Height="10px" Width="10px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:ImageField>--%>

                                <asp:CommandField ShowSelectButton="True" />
                                <asp:ButtonField ButtonType="Image" CommandName="Ver" ImageUrl="~/images/buscarr.png" ShowHeader="True" Text="Ver">
                                <ControlStyle Height="20px" Width="20px" />
                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="35px" />
                                </asp:ButtonField>
                                <asp:BoundField DataField="NCTA" HeaderText="CUENTA" SortExpression="NCTA">
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="idpago" HeaderText="idpago" ReadOnly="True" SortExpression="idpago" Visible="False" />
                                <asp:BoundField DataField="idempresa" HeaderText="idempresa" SortExpression="idempresa" Visible="False" />
                                <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" SortExpression="idProveedor" Visible="False" />
                                <asp:TemplateField HeaderText="CUENTA" ShowHeader="False" Visible="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("NCTA") %>'></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                                <asp:BoundField DataField="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="FREGISTRO" />
                                <asp:BoundField DataField="GLOSA" HeaderText="ASUNTO" SortExpression="GLOSA" />
                                <asp:BoundField DataField="NDOCUMENTO" HeaderText="NDOCUMENTO" SortExpression="NDOCUMENTO" Visible="False" />
                                <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" Visible="False" />
                                <asp:BoundField DataField="M" SortExpression="M">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="IMPORTE">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CUOTAS" SortExpression="CUOTAS" />
                                <asp:BoundField DataField="IDCCA" HeaderText="CENTRO DE COSTO" SortExpression="IDCCA">
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="GASTO" HeaderText="TIPO DE GASTO" SortExpression="GASTO">
                                <ItemStyle Font-Bold="True" />
                                </asp:BoundField>
                                <asp:BoundField DataField="CREGISTRADAS" HeaderText="**" SortExpression="CREGISTRADAS" Visible="False" />
                                <asp:ImageField DataImageUrlField="CREGISTRADAS" DataImageUrlFormatString="~/images/{0}.png">
                                    <ControlStyle Height="10px" Width="10px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:ImageField>
                                <asp:BoundField DataField="NCTAS" HeaderText="NCTAS" SortExpression="NCTAS" Visible="False" />
                                <asp:ImageField DataImageUrlField="CONTINUO" DataImageUrlFormatString="~/images/c{0}.png">
                                    <ControlStyle Height="15px" Width="15px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:ImageField>

                                <asp:ImageField DataImageUrlField="OPFACTURACION" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="FACT">
                                    <ControlStyle Height="10px" Width="10px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:ImageField>

                            </Columns>
                            <HeaderStyle BackColor="#E9E9E9" />
                            <PagerStyle BorderStyle="Double" BorderWidth="2px" Font-Overline="True" Font-Size="XX-Small" Wrap="True" />
                            <SelectedRowStyle BackColor="#E2FAE3" />
                        </asp:GridView>

                    <br />

                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="pagos_registrados" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblpop" Name="op" PropertyName="Text" Type="Int32" />
                            <asp:ControlParameter ControlID="lblpproveedor" Name="proveedor" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="lblpidpago" Name="idpago" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                </asp:Panel>
                     </asp:Panel>

            </div>
            </div>
         </div>
</span>
            </span>
</asp:Content>
