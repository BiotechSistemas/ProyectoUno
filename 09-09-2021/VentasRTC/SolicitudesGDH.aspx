<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="SolicitudesGDH.aspx.cs" Inherits="biotech.VentasRTC.SolicitudesGDH" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">

 SOLICITUDES GDH REALIZADAS
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/actualizarr.png" OnClick="ImageButton1_Click" Width="40px" />
    <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="Nueva solicitud" Width="300px" />
<br />
<br />
    
    <span class="title_section_offer">&nbsp;SOLICITUDES REALIZADAS</span>
    <asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
    <div class="title_section_offer_fake"></div>
    <asp:Panel ID="payuda" runat="server" style="text-align: center" Visible="False">
        
        <asp:Label ID="lblidsoliciud" runat="server" Visible="False"></asp:Label>
        &nbsp;, estado sol:
        <asp:Label ID="lblestadoSolicitud" runat="server"></asp:Label>
    </asp:Panel>
<br />

    <asp:RadioButtonList ID="rbtEstadoSol" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rbtEstadoSol_SelectedIndexChanged" RepeatDirection="Horizontal" Width="600px">
              <asp:ListItem Selected="True" Value="0">POR EVALUAR</asp:ListItem>
              <asp:ListItem Value="1">APROBADAS</asp:ListItem>
              <asp:ListItem Value="2">OBSERVADAS</asp:ListItem>
          </asp:RadioButtonList>



    <br />
              <asp:GridView ID="gvSolicituresPersonales" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="gvSolicituresPersonales_SelectedIndexChanged" Width="100%" OnRowCommand="gvSolicituresPersonales_RowCommand">
                  <Columns>
                      <asp:CommandField ShowSelectButton="True" HeaderText="ADMINISTRAR" />
                  <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                  <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" ReadOnly="True" SortExpression="SOLICITUD" />
                  <asp:BoundField DataField="idUsuario" HeaderText="COD. SOLICITA" SortExpression="idUsuario" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. A EJECUTAR / INICIAR" SortExpression="fecha">
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="idTipo" HeaderText="idTipo" SortExpression="idTipo" Visible="False" />
                  <asp:BoundField DataField="descripcion" HeaderText="TIPO SOLICITUD" SortExpression="descripcion" />
                  <asp:ImageField DataImageUrlField="GDHEstado" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="EVALUACIÓN GDH">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>

                  <asp:ImageField DataImageUrlField="AsesorEstado" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="EVALUACIÓN SOLICITANTE">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>
                   <asp:ImageField DataImageUrlField="EstadoDescuento" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="SOLICITUD ESTADO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:ImageField>
                  <asp:BoundField DataField="sistemaFecha" HeaderText="FECHA REGISTRA" SortExpression="sistemaFecha">
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                       <asp:ButtonField CommandName="mostrar" ShowHeader="True" Text="Ver solicitud" >
<ControlStyle CssClass="btn btn-success "></ControlStyle>
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:ButtonField>
                  </Columns>
                  <EmptyDataTemplate>
                      No registra solicitudes GDH, personales...
                  </EmptyDataTemplate>
              </asp:GridView>
     <strong>SOLICITUDES :&nbsp; </strong>POR EVALUAR
          <asp:Image ID="Image1" runat="server" ImageUrl="~/images/Z4.png" Width="15px" />
&nbsp;&nbsp;&nbsp;&nbsp; APROBADAS
          <asp:Image ID="Image5" runat="server" ImageUrl="~/images/Z1.png" Width="15px" />
&nbsp;&nbsp;&nbsp;&nbsp; OBSERVADAS
          <asp:Image ID="Image6" runat="server" ImageUrl="~/images/Z0.png" Width="15px" />
               <br />
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="solic_ResumenSolicitudes_personales" SelectCommandType="StoredProcedure">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="lblestadoSolicitud" Name="opSol" PropertyName="Text" Type="Int32" />
                      <asp:ControlParameter ControlID="lblusuario" Name="IdUsuario" PropertyName="Text" Type="String" />
                  </SelectParameters>
              </asp:SqlDataSource>
          


    <br />
          <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">+ Ver documentos formularios de convenio</asp:LinkButton>
          <br />
          <asp:Panel ID="pdocumentosConvenio" runat="server" Visible="False">
              <strong>
              <br />
              DOCUMENTOS FORMULARIOS DE CONVENIOS:</strong><table class="auto-style8">
                  <tr>
                      <td>
                          <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">CONV. AUT. DE DESCUENTO PRESTAMO</asp:LinkButton>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click">CONV. ADELANTO VACACIONAL</asp:LinkButton>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">CONV. POR DESCANZO VACACIONAL</asp:LinkButton>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
                  <tr>
                      <td>
                          <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">CONV. LICENCIA MÉDICA</asp:LinkButton>
                      </td>
                      <td>&nbsp;</td>
                  </tr>
              </table>
              <br />
              <small>* Para la aprobación de solicitudes GDH, es necesario adjuntar el documento referente correctamente firmado.</small></asp:Panel>
                    


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
