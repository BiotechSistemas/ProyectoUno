<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/VentasResponsive.Master" AutoEventWireup="true" CodeBehind="RegProyectadoGrupal.aspx.cs" Inherits="biotech.VentasRTC.RegProyectadoGrupal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <div class="container">
		<div class="row">
			
                 <h2><span class="glyphicon glyphicon-edit"></span> PROYECTADO GRUPAL: <asp:Label ID="lblano" runat="server"></asp:Label>

                     -
                     <asp:Label ID="lblidTrimestre" runat="server"></asp:Label>
                     º Trimestre</div>

                       <br />
                    <div class="form-group row">
                    <label for="atencion" class="col-md-1 control-label">Periodo:</label>
                            <asp:Label ID="lbloperacion" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblmes" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblestado" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lblmaxdetalle" runat="server" Visible="False"></asp:Label>
                         <asp:Label ID="Label1" runat="server"></asp:Label>
                        <div class="col-md-2">
                            <asp:RadioButtonList ID="rbano" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="rbano_SelectedIndexChanged" Width="100%" DataSourceID="SqlDataSourceANOS" DataTextField="ano" DataValueField="ano">
                            </asp:RadioButtonList>
                            <asp:SqlDataSource ID="SqlDataSourceANOS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idano,ano FROM tb_ano WHERE ano>2019 and estado=1
"></asp:SqlDataSource>
                            <asp:Label ID="lblhabilitado" runat="server" Visible="False">1</asp:Label>
                        </div>
				   <div class="col-md-3">
                            <asp:DropDownList class="form-control"  ID="ddlperiodo" runat="server" DataSourceID="SqlDataSource6" DataTextField="mes" DataValueField="idmes" OnSelectedIndexChanged="ddlperiodo_SelectedIndexChanged" AutoPostBack="True" ToolTip="Periodo a proyectar">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand=" select idmes,mes from tb_mes">
                            </asp:SqlDataSource>
				    </div>
                       
                      <asp:ImageButton ID="ibtnFiltro1" runat="server" ImageAlign="Top" ImageUrl="~/images/searchicon.png" OnClick="ibtnFiltro1_Click" Width="30px" />
                      

                        
              
            </div>

         <div class="row">
             <div class="col-md-12">

        <asp:GridView ID="gvTrimestralICA" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourceTRIMESTRALZONAL" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%" AllowSorting="True" DataKeyNames="idproducto,PRODUCTO,PRESENT" Font-Size="Medium" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" OnRowDataBound="gvTrimestralICA_RowDataBound" OnSelectedIndexChanged="gvTrimestralICA_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowSelectButton="True" >
                <ItemStyle ForeColor="#999999" />
                </asp:CommandField>
                <asp:TemplateField HeaderText="PRODUCTO" ShowHeader="False" Visible="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PRODUCTO") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="idproducto" HeaderText="COD" SortExpression="idproducto" Visible="False" />
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                <asp:BoundField DataField="PRESENT" HeaderText="**" SortExpression="PRESENT" />
                <asp:BoundField DataField="CANT" HeaderText="PROYECT" ReadOnly="True" SortExpression="CANT" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle"  />
                </asp:BoundField>
                <asp:BoundField DataField="CANTATENDIDA" HeaderText="VENTAS" SortExpression="CANTATENDIDA" >
                <HeaderStyle  />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle"  />
                </asp:BoundField>
                 <asp:BoundField DataField="DIF" HeaderText="POR ATENDER" SortExpression="DIF" >
                <HeaderStyle />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle"  Font-Bold="True" />
                </asp:BoundField>
                <asp:BoundField DataField="PORCENT" HeaderText="E.%" SortExpression="PORCENT" DataFormatString="{0:0,0}" Visible="False" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" ForeColor="#999999" />
                </asp:BoundField>
                 <asp:BoundField DataField="ALMACEN" HeaderText="ALMACEN" SortExpression="ALMACEN" >
                <HeaderStyle  ForeColor="Yellow" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle"  BackColor="WhiteSmoke" Font-Bold="True" />
                </asp:BoundField>
                 <asp:BoundField DataField="HISTORIALABASTECIDO" HeaderText="HISTORIAL ABAST." SortExpression="HISTORIALABASTECIDO" >
                <HeaderStyle  ForeColor="Yellow" Width="120px" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle"  BackColor="WhiteSmoke" />
                </asp:BoundField>
            </Columns>
            <EmptyDataTemplate>
                No registra proyectado trimestral...
            </EmptyDataTemplate>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#006600" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle Font-Bold="True" BackColor="#E6E6E6" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
                 <asp:SqlDataSource ID="SqlDataSourceTRIMESTRALZONAL" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitado_trimestralZonal" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblidTrimestre" Name="idGrupoPeriodo" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lblidzona" DefaultValue="2" Name="idzona" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

                 *<asp:Label ID="lblnica" runat="server"></asp:Label>
                 &nbsp;Items registrados.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; E% = Efectividad Porcentual&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="lblefectividadIca" runat="server" Font-Bold="True"></asp:Label>
                 %<br /><br />
             
          *<strong>ALMACEN</strong>= Stock actual&nbsp;&nbsp;&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp; <strong>&nbsp;HIST. ABAST</strong>.= Historial abastecido.
          <br />
          *<strong>Efectividad Total</strong>  = en base al 100% del cumplimiento proyectado - ventas.
              <div class="col-md-12">

      <asp:Panel ID="Panel1" runat="server" Visible="False">
      <hr />
       <div class="row">
     <div class="col-md-12">
         <strong>DETALLE PRODUCTOS ATENDIDOS: </strong> 
         <asp:Label ID="lblProductoSelect" runat="server"></asp:Label>
         &nbsp;<asp:Label ID="lbltituloZona" runat="server" Visible="False"></asp:Label>
         <asp:GridView ID="gvguiastrimestre" runat="server" CssClass ="table table-condensed  table-hover table-sm thead-light" AutoGenerateColumns="False" DataKeyNames="idguia" DataSourceID="SqlDataSource7" Width="100%" AllowPaging="True" AllowSorting="True" PageSize="25">
             <Columns>
                 <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                 <asp:BoundField DataField="idguia" HeaderText="idguia" ReadOnly="True" SortExpression="idguia" Visible="False" />
                 <asp:BoundField DataField="GUIA" HeaderText="GUIA" ReadOnly="True" SortExpression="GUIA" />
                 <asp:BoundField DataField="fechaemision" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. EMISION" SortExpression="fechaemision">
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                 <asp:BoundField DataField="Idproducto" HeaderText="Idproducto" SortExpression="Idproducto" Visible="False" />
                 <asp:BoundField DataField="PRODUCT" HeaderText="PRODUCTO" SortExpression="PRODUCT" />
                 <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                 <asp:BoundField DataField="cantidad" HeaderText="CANT." SortExpression="cantidad" >
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="idVendedor" HeaderText="ASESOR" SortExpression="idVendedor" >
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="IDZONA" HeaderText="ZONA" SortExpression="IDZONA" Visible="False" />
             </Columns>
             <EmptyDataTemplate>
                 No registra productos atendidos....
             </EmptyDataTemplate>
             <HeaderStyle BackColor="#EEEEEE" />
         </asp:GridView>

         <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ProyectadoGrupal_ListadoGuiasTrimestre" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="lblidTrimestre" Name="idtrimestre" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="lblProductoSelect" Name="idproducto" PropertyName="Text" Type="String" />
                 <asp:ControlParameter ControlID="lblidzona" Name="idzona" PropertyName="Text" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>

         <strong>AGRUPADO POR PRESENTACIÓN:</strong><asp:GridView ID="gvGuiaAten" runat="server" AutoGenerateColumns="False" Class="table table-success table-condensed table-bordered table-hover table-sm thead-light" DataSourceID="SqlDataSourceSUBATENPRODUCTO" Font-Size="Medium" PageSize="30" Width="500px">
             <Columns>
                 <asp:BoundField DataField="IDPRODUCTO" HeaderText="IDPRODUCTO" SortExpression="IDPRODUCTO" Visible="False" />
                 <asp:BoundField DataField="PRODUCT" HeaderText="PRODUCTO" SortExpression="PRODUCT" />
                 <asp:BoundField DataField="PRESENT" HeaderText="PRESENTACIÓN" SortExpression="PRESENT" />
                 <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" ReadOnly="True" SortExpression="CANTIDAD" >
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
             </Columns>
             <EmptyDataTemplate>
                 No registra productos atendidos...
             </EmptyDataTemplate>
             <HeaderStyle BackColor="WhiteSmoke" Font-Size="X-Small" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSourceSUBATENPRODUCTO" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ProyectadoGrupal_guias" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="lblidTrimestre" Name="mes" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="lblProductoSelect" Name="idproducto" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="lblidzona" Name="idzona" PropertyName="Text" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>

         </div>
           </div>
         </asp:Panel>
           
             </div>
             </div>


         </div>
    <asp:Panel ID="payuda" runat="server" Visible="False">Asesor:&nbsp;
        <asp:Label ID="lblidAsesor" runat="server"></asp:Label>
        &nbsp;<asp:Label ID="lblidzona" runat="server" Visible="False"></asp:Label>
     </asp:Panel>
</asp:Content>
