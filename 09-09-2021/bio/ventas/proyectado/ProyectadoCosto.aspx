<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/proyectado/Proyectado.Master" AutoEventWireup="true" CodeBehind="ProyectadoCosto.aspx.cs" Inherits="biotech.bio.ventas.proyectado.ProyectadoCosto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #CC3300;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br /><br /> 
   <h2>RESUMEN DE PROYECTADO</h2>
    <asp:Label ID="lblidvendedor" runat="server" Font-Size="Large" Visible="False"></asp:Label>
     &nbsp;<asp:Label ID="lblnombre" runat="server" Font-Size="Large"></asp:Label>
        <asp:Label ID="lblidano" runat="server" Text="2020" Visible="False"></asp:Label>
    <br />
    <asp:Button ID="btnsusan" runat="server" Text="SUSAN" OnClick="btnsusan_Click" Width="200px" /><asp:Button ID="btnmancilla" runat="server" Text="MANCILLA" OnClick="btnmancilla_Click" Width="200px" /><asp:Button ID="btnvictor" runat="server" Text="VICTOR" OnClick="btnvictor_Click" Width="200px" /><asp:Button ID="btn4" runat="server" Text="DIEGO" OnClick="btn4_Click" Width="200px" />
     <div class="table-responsive">
      <asp:GridView ID="gvpresentacionRTC" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style4" DataKeyNames="CODPRO" DataSourceID="SqlDataSource4" ForeColor="Black" Width="100%" OnRowDataBound="gvpresentacionRTC_RowDataBound">
          <Columns>
              <asp:TemplateField ShowHeader="False" Visible="False">
                  <ItemTemplate>
                      <asp:LinkButton ID="LinkButton7" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Eval("CODPRO") %>'></asp:LinkButton>
                  </ItemTemplate>
                  <HeaderStyle Width="60px" />
                  <ItemStyle BackColor="#EBEBEB" HorizontalAlign="Left" VerticalAlign="Middle" />
              </asp:TemplateField>
              <asp:BoundField DataField="CODPRO" HeaderText="CODPRO" ReadOnly="True" SortExpression="CODPRO" Visible="False">
              <ItemStyle BackColor="#EBEBEB" HorizontalAlign="Left" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
              <ItemStyle BackColor="#EBEBEB" HorizontalAlign="Left" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="PRESENTACION" SortExpression="PRESENTACION">
              <ItemStyle BackColor="#EBEBEB" HorizontalAlign="Left" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="ENE" HeaderText="ENE" ReadOnly="True" SortExpression="ENE" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="FEB" HeaderText="FEB" ReadOnly="True" SortExpression="FEB" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="MAR" HeaderText="MAR" ReadOnly="True" SortExpression="MAR" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="ABR" HeaderText="ABR" ReadOnly="True" SortExpression="ABR" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="MAY" HeaderText="MAY" ReadOnly="True" SortExpression="MAY" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="JUN" HeaderText="JUN" ReadOnly="True" SortExpression="JUN" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="JUL" HeaderText="JUL" ReadOnly="True" SortExpression="JUL" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="AGO" HeaderText="AGO" ReadOnly="True" SortExpression="AGO" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="SET" HeaderText="SET" ReadOnly="True" SortExpression="SET" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="OCT" HeaderText="OCT" ReadOnly="True" SortExpression="OCT" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="NOV" HeaderText="NOV" ReadOnly="True" SortExpression="NOV" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
              <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC" >
              <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
              </asp:BoundField>
          </Columns>
          <EmptyDataTemplate>
              Seleccionar asesor...
          </EmptyDataTemplate>
          <FooterStyle ForeColor="Black" />
          <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" />
          <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
          <RowStyle BackColor="WhiteSmoke" />
          <SelectedRowStyle Font-Bold="True" />
          <SortedAscendingCellStyle BackColor="#F7F7F7" />
          <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
          <SortedDescendingCellStyle BackColor="#E5E5E5" />
          <SortedDescendingHeaderStyle BackColor="#242121" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoanual" SelectCommandType="StoredProcedure">
          <SelectParameters>
              <asp:ControlParameter ControlID="lblidvendedor" Name="vendedor" PropertyName="Text" Type="String" />
          </SelectParameters>
      </asp:SqlDataSource>
   </div>
 

     <h3>Valorizado:  <asp:Label ID="Label2" runat="server"></asp:Label></h3>
    
    <asp:GridView ID="gvCostosRTC" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style3" DataSourceID="SqlDataSource5" ForeColor="Black" Width="100%" ShowFooter="True" OnRowDataBound="gvCostosRTC_RowDataBound">
                 <Columns>
                     <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO">
                     </asp:BoundField>
                     <asp:BoundField DataField="PRESENTACION" HeaderText="" SortExpression="PRESENTACION">
                     </asp:BoundField>
                     <asp:BoundField DataField="ENE" HeaderText="ENE" ReadOnly="True" SortExpression="ENE" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                      <asp:BoundField DataField="FEB" HeaderText="FEB" ReadOnly="True" SortExpression="FEB" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                      <asp:BoundField DataField="MAR" HeaderText="MAR" ReadOnly="True" SortExpression="MAR" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                      <asp:BoundField DataField="ABR" HeaderText="ABR" ReadOnly="True" SortExpression="ABR" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                      <asp:BoundField DataField="MAY" HeaderText="MAY" ReadOnly="True" SortExpression="MAY" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="JUN" HeaderText="JUN" ReadOnly="True" SortExpression="JUN" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="JUL" HeaderText="JUL" ReadOnly="True" SortExpression="JUL" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="AGO" HeaderText="AGO" ReadOnly="True" SortExpression="AGO" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="SET" HeaderText="SET" ReadOnly="True" SortExpression="SET" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="OCT" HeaderText="OCT" ReadOnly="True" SortExpression="OCT" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="NOV" HeaderText="NOV" ReadOnly="True" SortExpression="NOV" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="DIC" HeaderText="DIC" ReadOnly="True" SortExpression="DIC" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                 </Columns>
                 <EmptyDataTemplate>
                     Seleccionar asesor...
                 </EmptyDataTemplate>
                 <FooterStyle ForeColor="Black" HorizontalAlign="Right" VerticalAlign="Middle" />
                 <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" />
                 <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                 <RowStyle BackColor="WhiteSmoke" />
                 <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                 <SortedAscendingCellStyle BackColor="#F7F7F7" />
                 <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                 <SortedDescendingCellStyle BackColor="#E5E5E5" />
                 <SortedDescendingHeaderStyle BackColor="#242121" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoEstimadoanualImportes" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblidvendedor" Name="vendedor" PropertyName="Text" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
          <br />
     

         <div class="form-group row">

				 <asp:Label ID="lbloperacion" runat="server" Visible="False"></asp:Label>
                   
                    
                    <asp:Panel ID="Panel1" runat="server" Visible="False">
                        <asp:Label ID="lblop" runat="server" Text="2"></asp:Label>
                        &nbsp; dato:
                        <asp:Label ID="lbldato" runat="server"></asp:Label>
                        &nbsp; IDMES:
                        <asp:Label ID="lblidMes" runat="server"></asp:Label>
                
                    
                    <div class="col-md-12">
					  
                            <asp:RadioButtonList ID="rbPeriodo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" DataTextField="PERIODO" DataValueField="IDPERIODO" OnSelectedIndexChanged="rbPeriodo_SelectedIndexChanged" RepeatDirection="Horizontal" TabIndex="8" Width="100%">
                            </asp:RadioButtonList>
					  
                            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_ProyectadoMesPeriodo" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="lblidvendedor" Name="idvendedor" PropertyName="Text" Type="String" />
                                    <asp:ControlParameter ControlID="lblidano" Name="idano" PropertyName="Text" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
					  
				  </div>
                </div>

        <div class="row">

           
                               
                                    PROYECTADO APROBADO:<br />
                                    <br />
                                    <span class="auto-style1"><strong>PROYECTADO OBSERVADO: </strong></span>
             <asp:GridView ID="gvobservado" runat="server" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="iddetalleProyectado,PRODUCTO,PRESENT,CANT,ASESOR" DataSourceID="SqlDataSourceObservado" ForeColor="#333333" GridLines="None" Width="100%" OnSelectedIndexChanged="gvobservado_SelectedIndexChanged" OnRowDataBound="gvobservado_RowDataBound" Font-Size="X-Small">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:CommandField ShowSelectButton="True" />
               <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" />
               <asp:BoundField DataField="fechareg" HeaderText="FECHA REG" SortExpression="fechareg" />
               <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" >
               <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
               </asp:BoundField>
               <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
               <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
               <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
               <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
               <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
               <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
               <asp:BoundField DataField="PV" HeaderText="PV" SortExpression="PV" DataFormatString="{0:0,0.00}" >
               <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
               </asp:BoundField>
               <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
               <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
               </asp:BoundField>
                <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT." SortExpression="TT">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
               <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEND" SortExpression="CANTATENDIDA" >
               <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
               </asp:BoundField>
               <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
               <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
           </Columns>
           <EmptyDataTemplate>
               No registra proyectado observado...
           </EmptyDataTemplate>
           <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
           <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
           <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
           <SortedAscendingCellStyle BackColor="#FDF5AC" />
           <SortedAscendingHeaderStyle BackColor="#4D0000" />
           <SortedDescendingCellStyle BackColor="#FCF6C0" />
           <SortedDescendingHeaderStyle BackColor="#820000" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSourceObservado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_Observado" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblop" Name="opcion" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblidMes" Name="mes" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lbldato" Name="idUsuario" PropertyName="Text" Type="String" />
                 </SelectParameters>
             </asp:SqlDataSource>
                              
                                    <br />
                                    PROYECTADO POR EVALUAR:<asp:GridView ID="gvporaprobar" runat="server" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="iddetalleProyectado,PRODUCTO,PRESENT,CANT,ASESOR" DataSourceID="SqlDataSourcenoaprobado" Font-Size="X-Small" ForeColor="Black" GridLines="Vertical" OnRowDataBound="gvporaprobar_RowDataBound" OnSelectedIndexChanged="gvporaprobar_SelectedIndexChanged" Width="100%">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField ShowSelectButton="True" />
                                            <asp:BoundField DataField="iddetalleProyectado" HeaderText="COD" ReadOnly="True" SortExpression="iddetalleProyectado" />
                                            <asp:BoundField DataField="fechareg" HeaderText="F. REGISTRO" SortExpression="fechareg" />
                                            <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO">
                                            <ItemStyle Font-Bold="True" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                                            <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                                            <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                                            <asp:BoundField DataField="idproducto" HeaderText="idproducto" SortExpression="idproducto" Visible="False" />
                                            <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                                            <asp:BoundField DataField="PRESENT" HeaderText="PRESENT" SortExpression="PRESENT" />
                                            <asp:BoundField DataField="PV" DataFormatString="{0:0,0.00}" HeaderText="PV" SortExpression="PV">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="SUB.TT." SortExpression="TT">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="CANTATENDIDA" HeaderText="ATEND" SortExpression="CANTATENDIDA">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False">
                                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                                            </asp:BoundField>
                                            <asp:ImageField DataImageUrlField="ESTADO" DataImageUrlFormatString="~/images/Z{0}.png">
                                                <ControlStyle Height="18px" Width="18px" />
                                                <HeaderStyle HorizontalAlign="Center" Width="20px" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                            </asp:ImageField>
                                        </Columns>
                                        <EmptyDataTemplate>
                                            No registra proyectado por evaluar...
                                        </EmptyDataTemplate>
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#F7F7DE" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSourcenoaprobado" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="proyectado_habilitadoNo" SelectCommandType="StoredProcedure">
                                        <SelectParameters>
                                            <asp:ControlParameter ControlID="lblop" Name="opcion" PropertyName="Text" Type="Int32" />
                                            <asp:ControlParameter ControlID="lblidano" Name="ano" PropertyName="Text" Type="Int32" />
                                            <asp:ControlParameter ControlID="lblidMes" Name="mes" PropertyName="Text" Type="Int32" />
                                            <asp:ControlParameter ControlID="lbldato" Name="idUsuario" PropertyName="Text" Type="String" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
                 </asp:Panel>
                   
                              
        </div>

</asp:Content>
