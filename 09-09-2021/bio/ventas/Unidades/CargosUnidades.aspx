<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="CargosUnidades.aspx.cs" Inherits="biotech.bio.ventas.Unidades.CargosUnidades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="row">
			<h2><i class="fa fa-paste"></i> CARRGOS/RECEPCIÓN DE UNIDADES:
                <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>       
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                
                    
                     </h2>
        </div>


    <div class="row">    
                    <ol class="breadcrumb">
                          <li>
                        <asp:LinkButton ID="lbtSolicitud1" runat="server" PostBackUrl="~/bio/ventas/Unidades/SolicitudListar.aspx">Solic.Técnica</asp:LinkButton>
                        </li>
                       
                        <li>
                        <asp:LinkButton ID="lbtnNuevaUnidad" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadRegistrar.aspx">Registrar Unidad</asp:LinkButton>
                        </li>                     
                        
                        
                        <li>
                        <asp:LinkButton ID="lbtCotizacion1" runat="server" PostBackUrl="~/bio/ventas/compras/Compras.aspx">Cotización</asp:LinkButton>
                        </li>

                       
                         <li>
                        <asp:LinkButton ID="lbtnCargos" runat="server" PostBackUrl="~/bio/ventas/Unidades/CargosUnidades.aspx">Cargos-Recepción</asp:LinkButton>
                        </li>
                        
                         <li>
                        <asp:LinkButton ID="lbtResumen1" runat="server" PostBackUrl="~/bio/ventas/Unidades/ResumenTecnico.aspx">Resumen</asp:LinkButton>
                        </li>
                        
                    </ol>
            </div>





    <p>

        <asp:Panel ID="PanelObservacion" runat="server" Visible="False">
            
             <div class="panel panel-danger">
      <div class="panel-heading">

          OBSERVACIÓN DE RECEPCIÓN: <asp:Label ID="lblidunidadObserv" runat="server" Text=""></asp:Label><asp:Label ID="lblunidadObserv" runat="server" Text=""></asp:Label>

      </div>
      <div class="panel-body">
           <asp:TextBox ID="TextBox1" runat="server" Height="80px" TextMode="MultiLine" Width="100%"></asp:TextBox>


      </div>
    </div>

          
           


        </asp:Panel>


        CARGOS: CONDICIÓN ACTIVA<asp:Label ID="lblmensaje" runat="server"></asp:Label>
        <asp:GridView ID="gvCargos" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idcargo,idEquipo" DataSourceID="SqlDataSourcecARGOS" OnSelectedIndexChanged="gvCargos_SelectedIndexChanged" OnRowDataBound="gvCargos_RowDataBound" OnRowCommand="gvCargos_RowCommand" Font-Size="Small">
            <Columns>
                <asp:TemplateField HeaderText="CARGO" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("CCODCARGO") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="idcargo" HeaderText="idcargo" ReadOnly="True" SortExpression="idcargo" Visible="False" />
                <asp:BoundField DataField="CCODCARGO" HeaderText="COD" ReadOnly="True" SortExpression="CCODCARGO" Visible="False" />
                <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" SortExpression="idEquipo" Visible="False" />
                <asp:ButtonField CommandName="edita" HeaderText="PLACA" ShowHeader="True" Text="Mofidicar" DataTextField="PLACA" >
            
                <ItemStyle ForeColor="#0066CC" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ButtonField>
            
                <asp:BoundField DataField="PLACA" HeaderText="PLACA" SortExpression="PLACA" Visible="False" />
                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                <asp:BoundField DataField="AREACARGO" HeaderText="CARGO" SortExpression="AREACARGO" />
                <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                <asp:BoundField DataField="F_ASIGNADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. ASIGNADA" SortExpression="F_ASIGNADA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="F_BAJA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. BAJA" SortExpression="F_BAJA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="descripcionCargo" HeaderText="descripcionCargo" SortExpression="descripcionCargo" Visible="False" />
                <asp:BoundField DataField="descripcionBaja" HeaderText="MOTIVO BAJA" SortExpression="descripcionBaja" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                <asp:BoundField DataField="autorFecha" HeaderText="*" SortExpression="autorFecha" Visible="False" />
                <asp:BoundField DataField="Asesorestado" HeaderText="Asesorestado" SortExpression="Asesorestado" Visible="False" />
                <asp:ImageField DataImageUrlField="Asesorestado" DataImageUrlFormatString="~/images/apro{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                <asp:BoundField DataField="ESTADOASE" HeaderText="PERSONAL RECEPCIÓN" ReadOnly="True" SortExpression="ESTADOASE" />
                

                <asp:BoundField DataField="AsesorFechaCargo" HeaderText="FECHA RECEPCIÓN" SortExpression="AsesorFechaCargo" />

            </Columns>
            <HeaderStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcecARGOS" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="sp_CargosListados" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="ESTADO" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
     <p>
         CARGOS: CONDICIÓN DE BAJA<asp:GridView ID="gvCargos0" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idcargo,idEquipo" DataSourceID="SqlDataSourcecARGOS0" OnSelectedIndexChanged="gvCargos0_SelectedIndexChanged" OnRowDataBound="gvCargos0_RowDataBound" Font-Size="Small">
            <Columns>
                <asp:TemplateField HeaderText="CARGO" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("CCODCARGO") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="idcargo" HeaderText="idcargo" ReadOnly="True" SortExpression="idcargo" Visible="False" />
                <asp:BoundField DataField="CCODCARGO" HeaderText="COD" ReadOnly="True" SortExpression="CCODCARGO" Visible="False" />
                <asp:BoundField DataField="idEquipo" HeaderText="idEquipo" SortExpression="idEquipo" Visible="False" />
                <asp:BoundField DataField="PLACA" HeaderText="PLACA" SortExpression="PLACA" />
                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                <asp:BoundField DataField="AREACARGO" HeaderText="CARGO" SortExpression="AREACARGO" />
                <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                <asp:BoundField DataField="F_ASIGNADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. ASIGNADA" SortExpression="F_ASIGNADA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="F_BAJA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. BAJA" SortExpression="F_BAJA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="descripcionCargo" HeaderText="descripcionCargo" SortExpression="descripcionCargo" Visible="False" />
                <asp:BoundField DataField="descripcionBaja" HeaderText="MOTIVO BAJA" SortExpression="descripcionBaja" />
                <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                <asp:BoundField DataField="autorFecha" HeaderText="*" SortExpression="autorFecha" Visible="False" />
                <asp:BoundField DataField="Asesorestado" HeaderText="Asesorestado" SortExpression="Asesorestado" Visible="False" />
                <asp:ImageField DataImageUrlField="Asesorestado" DataImageUrlFormatString="~/images/apro{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                <asp:BoundField DataField="ESTADOASE" HeaderText="PERSONAL RECEPCIÓN" ReadOnly="True" SortExpression="ESTADOASE" />
                <asp:BoundField DataField="AsesorFechaCargo" HeaderText="FECHA RECEPCIÓN" SortExpression="AsesorFechaCargo" />

            </Columns>
            <HeaderStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcecARGOS0" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="sp_CargosListados" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:Parameter DefaultValue="0" Name="ESTADO" Type="Int32" />
            </SelectParameters>
         </asp:SqlDataSource>
        <br />
    </p>
</asp:Content>
