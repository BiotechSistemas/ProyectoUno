<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ResumenCotizacion.aspx.cs" Inherits="biotech.bio.ventas.ResumenCotizacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
       <script src="../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../css/sweetalert.css" rel="stylesheet" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
                    <div class="col-md-12">
                        <h2 class="page-header "><i class="glyphicon glyphicon-edit"></i> RESUMEN COTIZACIÓN<asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label>
                        </h2>
                        </div>


         </div>
    <div class="row">
        <asp:Panel ID="Panel2" runat="server">
            <asp:Label ID="lblCliente" runat="server" Visible="False"></asp:Label>
        </asp:Panel>
        <asp:ImageButton ID="ibtnActualizar" runat="server"  ImageAlign="Top" ImageUrl="~/images/btactualizar.png" OnClick="ibtnActualizar_Click" Width="25px" />
        <asp:Button ID="btnGeneral" runat="server" OnClick="btnGeneral_Click" Text="GENERAL" />
        <asp:Button ID="btnxvalidar" runat="server" Text="POR VALIDAR" OnClick="btnxvalidar_Click" />
        <asp:TextBox ID="txtcliente" runat="server" Width="200px" placeholder="Ingresar valor a buscar" OnTextChanged="txtcliente_TextChanged"></asp:TextBox>
        <asp:Button ID="btnCotizacion" runat="server" OnClick="btnCotizacion_Click" Text="BUSCAR COTIZACION" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="BUSCAR CLIENTE" />
        <asp:Button ID="Button4" runat="server" Text="BUSCAR PRODUCTO" OnClick="Button4_Click" />
        <asp:Button ID="Button3" runat="server" Text="BUSCAR POR FECHA" OnClick="Button3_Click" />
        <asp:Panel ID="pvalidar" runat="server">
            COTIZACIÓN POR VALIDAR<br />
            <asp:GridView ID="gvxValidar"  CssClass="table table-bordered table-sm  table-hover"  runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="idcot" DataSourceID="SqlDataSourcexValidar" AllowPaging="True" OnRowCommand="gvxValidar_RowCommand" PageSize="30">
                <Columns>
                     <asp:BoundField DataField="idcot" HeaderText="idcot" ReadOnly="True" SortExpression="idcot" Visible="False" />
                    <asp:BoundField DataField="COTIZACION" HeaderText="COTIZACION" ReadOnly="True" SortExpression="COTIZACION">
                    <HeaderStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FSOLICITA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITA" SortExpression="FSOLICITA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="FENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. ENTREGA" SortExpression="FENTREGA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <%-- <asp:BoundField DataField="CC" HeaderText="CC" SortExpression="CC" />
                <asp:BoundField DataField="GG" HeaderText="GG" SortExpression="GG" />--%>
                    <asp:ImageField DataImageUrlField="CC" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="CC">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="GG" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="GG">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="VALIDAR" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="VALIDAR">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <%--<asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />--%><%--<asp:BoundField DataField="VALIDAR" HeaderText="VALIDAR" ReadOnly="True" SortExpression="VALIDAR" />--%>
                    <asp:ButtonField CommandName="ver" ShowHeader="True" Text="Ver">
                    <ItemStyle ForeColor="#339933" />
                    </asp:ButtonField>
                </Columns>
                <HeaderStyle BackColor="#F0F0F0" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcexValidar" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cotv_LisdoGeneralXvalidar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="pcotizacion" runat="server">
       
            POR NÚMERO DE COTIZACIÓN<asp:GridView ID="gvcotizacion"   CssClass="table table-bordered table-sm  table-hover"  runat="server" AutoGenerateColumns="False" DataKeyNames="idcot" DataSourceID="SqlDataSourcecliente" OnRowCommand="gvcotizacion_RowCommand">
            <Columns>
                    <asp:BoundField DataField="idcot" HeaderText="idcot" ReadOnly="True" SortExpression="idcot" Visible="False" />
                    <asp:BoundField DataField="COTIZACION" HeaderText="COTIZACION" ReadOnly="True" SortExpression="COTIZACION">
                    <HeaderStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FSOLICITA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITA" SortExpression="FSOLICITA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="FENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. ENTREGA" SortExpression="FENTREGA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <%-- <asp:BoundField DataField="CC" HeaderText="CC" SortExpression="CC" />
                <asp:BoundField DataField="GG" HeaderText="GG" SortExpression="GG" />--%>
                    <asp:ImageField DataImageUrlField="CC" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="CC">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="GG" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="GG">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="VALIDAR" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="VALIDAR">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <%--<asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />--%><%--<asp:BoundField DataField="VALIDAR" HeaderText="VALIDAR" ReadOnly="True" SortExpression="VALIDAR" />--%>
                    <asp:ButtonField CommandName="ver" ShowHeader="True" Text="Ver">
                    <ItemStyle ForeColor="#339933" />
                    </asp:ButtonField>
            </Columns>
            <HeaderStyle BackColor="#F0F0F0" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcecliente" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cotv_Lisdocotizacion" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblCliente" Name="cliente" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
             </asp:Panel>
        <asp:Panel ID="pproducto" runat="server">
            COTIZACIÓN POR PRODUCTO:<asp:GridView ID="gvProducto" runat="server" CssClass="table table-bordered table-sm  table-hover"  Width="100%" AutoGenerateColumns="False" DataKeyNames="idcot" DataSourceID="SqlDataSourceProducto" AllowPaging="True" OnRowCommand="gvProducto_RowCommand" PageSize="30">
                <Columns>
                    <asp:BoundField DataField="idcot" HeaderText="idcot" ReadOnly="True" SortExpression="idcot" Visible="False" />
                    <asp:BoundField DataField="COTIZACION" HeaderText="COTIZACION" ReadOnly="True" SortExpression="COTIZACION">
                    <HeaderStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FSOLICITA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITA" SortExpression="FSOLICITA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="FENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. ENTREGA" SortExpression="FENTREGA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <%-- <asp:BoundField DataField="CC" HeaderText="CC" SortExpression="CC" />
                <asp:BoundField DataField="GG" HeaderText="GG" SortExpression="GG" />--%>
                    <asp:ImageField DataImageUrlField="CC" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="CC">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="GG" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="GG">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="VALIDAR" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="VALIDAR">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <%--<asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />--%><%--<asp:BoundField DataField="VALIDAR" HeaderText="VALIDAR" ReadOnly="True" SortExpression="VALIDAR" />--%>
                    <asp:ButtonField CommandName="ver" ShowHeader="True" Text="Ver">
                    <ItemStyle ForeColor="#339933" />
                    </asp:ButtonField>
                </Columns>
                <EmptyDataTemplate>
                    Indicar producto cotizado a buscar...
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#F4F4F4" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceProducto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cotv_LisdoProducto" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblCliente" Name="producto" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <br />
        <asp:Panel ID="pfecha" runat="server" Visible="False">
            Desde:<asp:TextBox ID="txtf1" runat="server" TextMode="Date"></asp:TextBox>
            &nbsp;hasta
            <asp:TextBox ID="txtf2" runat="server" TextMode="Date"></asp:TextBox>
            &nbsp;<asp:Button ID="btnBuscarf" runat="server" OnClick="btnBuscarf_Click" Text="BUSCAR" />
            <asp:Label ID="lblf1" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lblf2" runat="server" Visible="False"></asp:Label>
            &nbsp;&nbsp;
            <asp:Label ID="lblmensajeFecha" runat="server" ForeColor="#CC0000"></asp:Label>
            <br />
            COTIZACIÓN POR FECHA DESDE - HASTA<asp:GridView ID="gvFecha" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-bordered table-sm  table-hover" DataKeyNames="idcot" DataSourceID="SqlDataSourceFecha" OnRowCommand="gvFecha_RowCommand" PageSize="30" Width="100%">
                <Columns>
                    <asp:BoundField DataField="idcot" HeaderText="idcot" ReadOnly="True" SortExpression="idcot" Visible="False" />
                    <asp:BoundField DataField="COTIZACION" HeaderText="COTIZACION" ReadOnly="True" SortExpression="COTIZACION">
                    <HeaderStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FSOLICITA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITA" SortExpression="FSOLICITA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="FENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. ENTREGA" SortExpression="FENTREGA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <%-- <asp:BoundField DataField="CC" HeaderText="CC" SortExpression="CC" />
                <asp:BoundField DataField="GG" HeaderText="GG" SortExpression="GG" />--%>
                    <asp:ImageField DataImageUrlField="CC" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="CC">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="GG" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="GG">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="VALIDAR" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="VALIDAR">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <%--<asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />--%><%--<asp:BoundField DataField="VALIDAR" HeaderText="VALIDAR" ReadOnly="True" SortExpression="VALIDAR" />--%>
                    <asp:ButtonField CommandName="ver" ShowHeader="True" Text="Ver">
                    <ItemStyle ForeColor="#339933" />
                    </asp:ButtonField>
                </Columns>
                <EmptyDataTemplate>
                    Indicar fecha a filtrar...
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#F0F0F0" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceFecha" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cotv_LisdoGeneralFecha" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtf1" DbType="Date" Name="f1" PropertyName="Text" />
                    <asp:ControlParameter ControlID="txtf2" DbType="Date" Name="f2" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="pPrincipal" runat="server">
        
            COTIZACIÓN GENERAL<asp:GridView ID="gvGeneral" runat="server" AllowPaging="True" AutoGenerateColumns="False" CssClass="table table-bordered table-sm  table-hover" DataKeyNames="idcot" DataSourceID="SqlDataSourceGeneral" OnRowCommand="gvGeneral_RowCommand" PageSize="30" Width="100%">
                <Columns>
                    <asp:BoundField DataField="idcot" HeaderText="idcot" ReadOnly="True" SortExpression="idcot" Visible="False" />
                    <asp:BoundField DataField="COTIZACION" HeaderText="COTIZACION" ReadOnly="True" SortExpression="COTIZACION">
                    <HeaderStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FSOLICITA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. SOLICITA" SortExpression="FSOLICITA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                    <asp:BoundField DataField="FENTREGA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. ENTREGA" SortExpression="FENTREGA">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <%-- <asp:BoundField DataField="CC" HeaderText="CC" SortExpression="CC" />
                <asp:BoundField DataField="GG" HeaderText="GG" SortExpression="GG" />--%>
                    <asp:ImageField DataImageUrlField="CC" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="CC">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="GG" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="GG">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="VALIDAR" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="VALIDAR">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle BackColor="#DFFFDF" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO">
                        <ControlStyle Height="15px" Width="15px" />
                        <HeaderStyle Width="20px" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <%--<asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />--%><%--<asp:BoundField DataField="VALIDAR" HeaderText="VALIDAR" ReadOnly="True" SortExpression="VALIDAR" />--%>
                    <asp:ButtonField CommandName="ver" ShowHeader="True" Text="Ver">
                    <ItemStyle ForeColor="#339933" />
                    </asp:ButtonField>
                </Columns>
                <HeaderStyle BackColor="#F4F4F4" />
            </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceGeneral" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cotv_LisdoGeneral" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblCliente" Name="cliente" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
      </asp:Panel>
         VALIDAR: Cotización por validar precio
           <asp:Image ID="Image6" runat="server" ImageUrl="~/images/Z3.png" Width="10px" />
        <br />
        CC: Validación Coordinador Comercial (aprobado
        <asp:Image ID="Image7" runat="server" ImageUrl="~/images/Z1.png" Width="10px" />
        &nbsp; | desaprobado
        <asp:Image ID="Image8" runat="server" ImageUrl="~/images/Z0.png" Width="10px" />
        &nbsp;)<br /> GG: Validación Gerencial (aprobado
        <asp:Image ID="Image9" runat="server" ImageUrl="~/images/Z1.png" Width="10px" />
        &nbsp; | desaprobado
        <asp:Image ID="Image10" runat="server" ImageUrl="~/images/Z0.png" Width="10px" />
        &nbsp;)<br /> ESTADO: Cotización habilitada
        <asp:Image ID="Image4" runat="server" ImageUrl="~/images/Z1.png" Width="10px" />
        &nbsp;Cotización anulada
        <asp:Image ID="Image5" runat="server" ImageUrl="~/images/Z4.png" Width="10px" />
        </div>



</asp:Content>
