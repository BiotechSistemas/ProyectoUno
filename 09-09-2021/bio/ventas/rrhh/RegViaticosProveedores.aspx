<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="RegViaticosProveedores.aspx.cs" Inherits="biotech.bio.ventas.rrhh.RegViaticosProveedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 40px;
        }
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header"><i class="fa fa-stack-overflow"></i> Viáticos - Proveedores <small><asp:Label ID="lblcodusu10" runat="server"></asp:Label>
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>

                    <asp:Label ID="lblperidodescrip" runat="server"></asp:Label></small>
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
<li><a href="http://www.sunat.gob.pe/cl-ti-itmrconsruc/FrameCriterioBusquedaMovil.jsp" target="_blank">Consulta RUC</a></li>
 
</ol>
        </div>
        <div class="row">
    <div class="btn-group btn-group-justified">

        
        <asp:LinkButton ID="LinkButton2" class="btn btn-default" runat="server" OnClick="LinkButton2_Click">REGISTRADOS</asp:LinkButton>
        <asp:LinkButton ID="LinkButton1" class="btn btn-default" runat="server" OnClick="LinkButton1_Click">POR REGISTRAR</asp:LinkButton>
</div>
            </div>
    <br />
       
        <asp:Panel ID="pregistrar" runat="server" class="row">
             <div class="well well-sm">
            <table  class="auto-style1">
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Label ID="lblidproveedor" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">RUC</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtruc" runat="server" Width="200px" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">RAZÓN SOCIAL</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style15">
                        <asp:TextBox ID="txtrazonsocial" runat="server" Width="450px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style9">DIRECCIÓN</td>
                    <td class="auto-style12">:</td>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtdireccion" runat="server" Width="450px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">CATEGORIA</td>
                    <td class="auto-style11">:</td>
                    <td class="auto-style15">
                        <asp:DropDownList ID="ddlCategoria" runat="server" DataSourceID="SqlDataSource4" DataTextField="categoriard" DataValueField="idcat" Width="100%" Height="40px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_rdcategoria] ORDER BY [orden]"></asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">ZONA</td>
                    <td class="auto-style13">:</td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="ddlZona" runat="server" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idZona" Width="100%" Height="40px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_Zona] WHERE ([estadoViaticos] = @estadoViaticos)">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="1" Name="estadoViaticos" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14">
                        <asp:Button ID="Button5" runat="server"  OnClick="Button5_Click" Text="Cancelar" Width="100%" />
                    </td>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:Button ID="btnuevo" runat="server" Text="Nuevo" OnClick="btnuevo_Click" Width="100px" />
                        <asp:Button ID="btregistrar" runat="server" OnClick="btregistrar_Click" Text="Registrar" Width="150px" />
                        <asp:Button ID="btactualizar" runat="server" Text="Actualizar" OnClick="btactualizar_Click" Width="150px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style14" colspan="3">*Seleccionar proveedor a registrar</td>
                </tr>
            </table> </div>
        </asp:Panel>


    <div class="row">
        <asp:Panel ID="pPorRegistrar" runat="server">
        <h4>
            <table class="auto-style1">
                <tr>
                    <td valign=top>PROVEEDORES POR REGISTRAR:</td>
                    <td valign=top>
                        <asp:RadioButtonList ID="RBANO" runat="server" DataSourceID="SqlDataSourceANO" DataTextField="idano" DataValueField="idano" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="RBANO_SelectedIndexChanged">
                        </asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSourceANO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="   SELECT DISTINCT idano FROM tb_rdRendicionGastos"></asp:SqlDataSource>
                    </td>
                    <td valign=top>
                        <asp:DropDownList ID="DDLBMES" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceMES" DataTextField="mes" DataValueField="idmes" OnSelectedIndexChanged="DDLBMES_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSourceMES" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="   SELECT idmes,mes FROM tb_mes"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:GridView ID="GridViewDETRED" runat="server" AutoGenerateColumns="False" DataKeyNames="idRGdetalle" DataSourceID="SqlDataSourceREDDET" OnRowUpdated="GridViewDETRED_RowUpdated" Width="600px" Font-Size="Small">
                            <Columns>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:BoundField DataField="idRGdetalle" HeaderText="COD.REG" ReadOnly="True" SortExpression="idRGdetalle" />
                                <asp:BoundField DataField="IdrucProveedor" HeaderText="RUC" SortExpression="IdrucProveedor" />
                                <asp:BoundField DataField="fecharegistro" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA REG." SortExpression="fecharegistro">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Ncomprobante" HeaderText="N COMPROB." SortExpression="Ncomprobante">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="importe" HeaderText="IMPORTE" SortExpression="importe">
                                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                </asp:BoundField>
                            </Columns>
                            <HeaderStyle BackColor="WhiteSmoke" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceREDDET" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" DeleteCommand="DELETE FROM [tb_rddetalle] WHERE [idRGdetalle] = @idRGdetalle" InsertCommand="INSERT INTO [tb_rddetalle] ([idRGdetalle], [fecharegistro], [Ncomprobante], [IdrucProveedor], [importe]) VALUES (@idRGdetalle, @fecharegistro, @Ncomprobante, @IdrucProveedor, @importe)" SelectCommand="SELECT [idRGdetalle], [fecharegistro], [Ncomprobante], [IdrucProveedor], [importe] FROM [tb_rddetalle] WHERE ([idRGdetalle] = @idRGdetalle)" UpdateCommand="UPDATE [tb_rddetalle] SET [fecharegistro] = @fecharegistro, [Ncomprobante] = @Ncomprobante, [IdrucProveedor] = @IdrucProveedor, [importe] = @importe WHERE [idRGdetalle] = @idRGdetalle">
                            <DeleteParameters>
                                <asp:Parameter Name="idRGdetalle" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="idRGdetalle" Type="Int32" />
                                <asp:Parameter DbType="Date" Name="fecharegistro" />
                                <asp:Parameter Name="Ncomprobante" Type="String" />
                                <asp:Parameter Name="IdrucProveedor" Type="String" />
                                <asp:Parameter Name="importe" Type="Decimal" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView3" Name="idRGdetalle" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter DbType="Date" Name="fecharegistro" />
                                <asp:Parameter Name="Ncomprobante" Type="String" />
                                <asp:Parameter Name="IdrucProveedor" Type="String" />
                                <asp:Parameter Name="importe" Type="Decimal" />
                                <asp:Parameter Name="idRGdetalle" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>
            </h4>
            <asp:Panel ID="Panel1" runat="server">
            </asp:Panel>
            <asp:GridView ID="GridView3" class="table table-striped table-bordered table-sm  table-hover" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="idRGdetalle,idRG,idcategoria,RUC" DataSourceID="SqlDataSourceree1" Font-Size="X-Small" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" PageSize="20">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="idRGdetalle" HeaderText="COD.REG" SortExpression="idRGdetalle" />
                    <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                    <asp:BoundField DataField="idRG" HeaderText="idRG" SortExpression="idRG" Visible="False" />
                    <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" Visible="False" />
                    <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                    <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                    <asp:BoundField DataField="NCOMPROBANTE" HeaderText="N.COMPROBANTE"  SortExpression="NCOMPROBANTE" />
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE">
                    </asp:BoundField>
                    <asp:BoundField DataField="USUARIO" HeaderText="USUARIO" SortExpression="USUARIO" />
                    <asp:BoundField DataField="TPCOD" HeaderText="TPCOD" SortExpression="TPCOD" />
                </Columns>
                <HeaderStyle BackColor="WhiteSmoke" />
            </asp:GridView>
                  
            <asp:SqlDataSource ID="SqlDataSourceree1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="provee_ViaticosRegRazonsocial" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="RBANO" Name="ANO" PropertyName="SelectedValue" Type="Int32" />
                    <asp:ControlParameter ControlID="DDLBMES" Name="MES" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
                  
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" class="table table-striped table-bordered table-sm  table-hover" DataKeyNames="IDRUCPROVEEDOR,idcategoria" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" PageSize="15" Font-Size="X-Small" Visible="False">
            <Columns>
                <asp:CommandField ShowSelectButton="True" >
                <HeaderStyle Width="40px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>
                <asp:BoundField DataField="IDRUCPROVEEDOR" HeaderText="RUC" SortExpression="IDRUCPROVEEDOR" >
                <HeaderStyle Width="120px" />
                <ItemStyle BackColor="#F3F3F3" Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="CODPERSONAL" HeaderText="COD" SortExpression="CODPERSONAL" >
                <HeaderStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="PERSONALVENTAS" HeaderText="ASESOR COMERCIAL" ReadOnly="True" SortExpression="PERSONALVENTAS" />
                <asp:BoundField DataField="idperiodo" HeaderText="idperiodo" SortExpression="idperiodo" Visible="False" />
                <asp:BoundField DataField="PERIDO" HeaderText="PERIDO" ReadOnly="True" SortExpression="PERIDO" />
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" Visible="False" />
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="provee_ViaticosporRegRazonsocial" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
    </asp:Panel>
    </div>

    <div class="row">
<asp:Panel ID="pRegistrados" runat="server">
        <h4>PROVEEDORES REGISTRADOS:&nbsp;&nbsp;&nbsp;&nbsp;</h4>
   <div class="form-inline" role="form">


       <div class="form-group">
        <asp:Button ID="Button4" CssClass="btn btn-default"   runat="server" OnClick="Button4_Click" Text="Ver todos" Width="100%" />
           </div>
        <div class="form-group">
       <asp:Button ID="Button3" CssClass="btn btn-default" runat="server" Text="Buscar" OnClick="Button3_Click" Width="100%" />
            </div>
            <div class="form-group">

            <asp:TextBox ID="txtproveedorbuscar" runat="server" CssClass="form-control" placeholder="Proveedor / ruc" AutoPostBack="True" OnTextChanged="txtproveedorbuscar_TextChanged"></asp:TextBox>
    </div>
       </div>
  

        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
        
        <asp:GridView ID="GridView2" runat="server" class="table table-striped table-bordered table-sm  table-hover" AutoGenerateColumns="False"  DataKeyNames="CODPROVEEDOR" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="None" Width="100%" AllowPaging="True" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" PageSize="30" Font-Size="X-Small">
            <Columns>
                <asp:CommandField ShowSelectButton="True" ButtonType="Image" SelectImageUrl="~/images/1editar.png" >
                <ControlStyle Height="20px" Width="30px" />
                <HeaderStyle Width="30px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#F3F3F3" />
                </asp:CommandField>
                <asp:BoundField DataField="CODPROVEEDOR" HeaderText="CODPROVEEDOR" ReadOnly="True" SortExpression="CODPROVEEDOR" Visible="False" />
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                <HeaderStyle Width="120px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#F3F3F3" Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="RAZON_SOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZON_SOCIAL" />
                <asp:BoundField DataField="DIRECCION" HeaderText="DIRECCION" SortExpression="DIRECCION" />
                <asp:BoundField DataField="LUGAR" HeaderText="LUGAR" SortExpression="LUGAR" />
                <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="provee_ViaticosRegistradosRazonsocial" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtproveedorbuscar" Name="proveedor" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>

    </div>

</asp:Content>
