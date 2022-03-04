<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="ClientesRegistrados.aspx.cs" Inherits="biotech.VentasRTC.ClientesRegistrados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
        .auto-style2 {
            color: #990000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    CLIENTES REGISTRADOS
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    

     <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">NUEVO REGISTRO</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">CLIENTES REGISTRADOS</asp:LinkButton>
    <br />
    <br />

    <asp:Panel ID="Panel1" runat="server">  
<span class="title_section_offer">Clientes aprobados:</span>
     
&nbsp;&nbsp;
   

    &nbsp;   <asp:Label ID="lblmensaje" runat="server"></asp:Label>
    &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">
                                
        <asp:Panel ID="Paprobados" runat="server">

            <div class="control-group">
    



                <asp:Panel ID="Panelapro1" runat="server">
                    <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                            <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                            <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" Visible="False" />
                            <asp:BoundField DataField="FACTURACION" DataFormatString="{0:0,0.00}" HeaderText="LINEA FACT." SortExpression="FACTURACION">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DIASF" HeaderText="DIAS" SortExpression="DIASF">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="LETRA" DataFormatString="{0:0,0.00}" HeaderText="LINEA LETRA" SortExpression="LETRA">
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DIASL" HeaderText="DIAS" SortExpression="DIASL">
                            <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                            <ControlStyle Height="20px" Width="20px" />
                            </asp:CommandField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" ForeColor="White" Font-Bold="True" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="fichaCliente_xestado1" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="1" Name="estado" Type="Int32" />
                            <asp:ControlParameter ControlID="lblcodusu" DefaultValue="" Name="idvendedor" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>
                <br />
                <asp:Panel ID="Panelaprob2" runat="server">
                    <strong>Cliente:</strong>
                    <asp:Label ID="lblidcliente" runat="server"></asp:Label>
                    /<asp:Label ID="lblcliente" runat="server" Text="Label"></asp:Label>
                    <br />
                    <strong>Linea Aprob. Factura:</strong>
                    <asp:Label ID="lbllineafact" runat="server"></asp:Label>
                    <br />
                    <strong>Linea Aprob. Letra:</strong>
                    <asp:Label ID="lbllinealetra" runat="server"></asp:Label>
                    <br />
                    <strong>Moneda:</strong>
                    <asp:Label ID="lblmoneda" runat="server"></asp:Label>
                    <br />
                    <strong>Observación:</strong>
                    <asp:Label ID="lblobservacionjefatura" runat="server"></asp:Label>
                    <br />
                    <br />
                    <strong>Detalle cultivos:</strong><asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" Width="100%">
                        <Columns>
                            <asp:BoundField DataField="COD" HeaderText="COD" InsertVisible="False" ReadOnly="True" SortExpression="COD" Visible="False" />
                            <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                            <asp:BoundField DataField="ZONAPRODUCCION" HeaderText="ZONA PROD." SortExpression="ZONAPRODUCCION" />
                            <asp:BoundField DataField="HECTAREA" HeaderText="HECTAREA" SortExpression="HECTAREA">
                            <ItemStyle HorizontalAlign="Right" />
                            </asp:BoundField>
                            <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                        </Columns>
                        <HeaderStyle BackColor="#CCCCCC" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_fichaCultivosXruc" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidcliente" Name="ruc" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="lblcodusu" Name="rtc" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <asp:LinkButton ID="Linkapro1" runat="server" OnClick="LinkButton4_Click">Retornar</asp:LinkButton>
                </asp:Panel>
    



</div><!-- / .control-group -->

        </asp:Panel>

        </div>
        </div>

    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">

        
<span class="title_section_offer">Clientes por aprobar:</span>
&nbsp;&nbsp;
   

    &nbsp;   <asp:Label ID="Label1" runat="server"></asp:Label>
    &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">
                                
<div class="control-group">
    



    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal" Width="100%">
        <Columns>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
            <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
            <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
            <asp:BoundField DataField="FACTURACION" HeaderText="FACTURACION" SortExpression="FACTURACION" Visible="False" />
            <asp:BoundField DataField="DIASF" HeaderText="DIASF" SortExpression="DIASF" Visible="False" />
            <asp:BoundField DataField="LETRA" HeaderText="LETRA" SortExpression="LETRA" Visible="False" />
            <asp:BoundField DataField="DIASL" HeaderText="DIASL" SortExpression="DIASL" Visible="False" />
            <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="fichaCliente_xestado1" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:Parameter DefaultValue="0" Name="estado" Type="Int32" />
            <asp:ControlParameter ControlID="lblcodusu" DefaultValue="" Name="idvendedor" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Label ID="lblcodusu" runat="server" Visible="False"></asp:Label>
    



</div><!-- / .control-group -->
        </div>
        </div>


    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server">



<span class="title_section_offer">Clientes observados:</span>
&nbsp;&nbsp;
   

    &nbsp;   <asp:Label ID="Label3" runat="server"></asp:Label>
    &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">


        <asp:Panel ID="pobserbado" runat="server">
            <asp:Panel ID="Panel4" runat="server">

            <div class="control-group">
    



                <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource3" ForeColor="Black" GridLines="Horizontal" Width="100%" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" />
                        <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                        <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                        <asp:BoundField DataField="FACTURACION" HeaderText="FACTURACION" SortExpression="FACTURACION" />
                        <asp:BoundField DataField="DIASF" HeaderText="DIASF" SortExpression="DIASF" />
                        <asp:BoundField DataField="LETRA" HeaderText="LETRA" SortExpression="LETRA" />
                        <asp:BoundField DataField="DIASL" HeaderText="DIASL" SortExpression="DIASL" >
                        </asp:BoundField>
                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" SortExpression="MONEDA" />
                        <asp:BoundField DataField="OBSCREDITOS" HeaderText="OBSCREDITOS" SortExpression="OBSCREDITOS" />
                        <asp:BoundField DataField="OBSJEFATURA" HeaderText="OBSJEFATURA" SortExpression="OBSJEFATURA" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="WhiteSmoke" />
                    <SelectedRowStyle Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="fichaCliente_observado" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblcodusu" DefaultValue="" Name="idvendedor" PropertyName="Text" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
    



                <asp:Panel ID="pdetobservacion" runat="server" BackColor="WhiteSmoke" Width="100%">
                    <strong><span class="auto-style1">
                    <br />
                    <span class="auto-style2">CLIENTE:</span></span></strong>
                    <asp:Label ID="lblcodcliente2" runat="server"></asp:Label>
                    &nbsp;/
                    <asp:Label ID="lblcliente2" runat="server"></asp:Label>
                    <strong>
                    <br />
                    <span class="auto-style2">OBSERVACIÓN:</span></strong><br />
                    <asp:Label ID="lblobcreditos" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="lblobjefatura" runat="server"></asp:Label>
                    <br />
                    <br />
                    *Actualizar dados.</asp:Panel>
                <br />
                <br />
    



                <br />
                <strong>CLIENTE POR REGULARIZAR DATOS:</strong><br />
                <asp:GridView ID="GridView7"   runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="RUC" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Horizontal" Width="100%" OnSelectedIndexChanged="GridView7_SelectedIndexChanged">
                    <Columns>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/1editar.png" ShowSelectButton="True">
                        <ControlStyle Height="20px" Width="20px" />
                        <HeaderStyle Width="40px" />
                        </asp:CommandField>
                        <asp:TemplateField ShowHeader="False" Visible="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("RUC") %>'></asp:LinkButton>
                            </ItemTemplate>
                            <ItemStyle Font-Bold="True" ForeColor="#006600" />
                        </asp:TemplateField>
                        <asp:BoundField DataField="RUC" HeaderText="RUC" ReadOnly="True" SortExpression="RUC" >
                        <HeaderStyle Width="90px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                        <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="WhiteSmoke" />
                    <SelectedRowStyle Font-Bold="True" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT idRuc RUC, RazonSocial RAZONSOCIAL, estado ESTADO FROM  tb_FichaCliente where estado =2 and Regpor=@VENDEDOR">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="lblcodusu" Name="VENDEDOR" PropertyName="Text" />
                    </SelectParameters>
                </asp:SqlDataSource>
    



                <br />
                <asp:Panel ID="PanelDetCultivos" runat="server" Width="100%">
                    <strong>Detalle de cultivos registrados:
                    <asp:Label ID="lblrazonss" runat="server"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource7" ForeColor="Black" GridLines="Horizontal" Width="600px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                        <Columns>
                            <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                            <asp:BoundField DataField="TIPO" HeaderText="TIPO" ReadOnly="True" SortExpression="TIPO" />
                            <asp:BoundField DataField="HECTAREA" HeaderText="HECTAREA" SortExpression="HECTAREA" />
                            <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" />
                            <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" ReadOnly="True" SortExpression="ESTADO" />
                            <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" />
                        </Columns>
                        <EmptyDataTemplate>
                            No se encontro ningun cultivo registrado...!
                        </EmptyDataTemplate>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="Gray" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="WhiteSmoke" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_fichaclienteCultivos" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidRUC" Name="cliente" PropertyName="Text" Type="String" />
                            <asp:ControlParameter ControlID="lblcodusu" Name="rtc" PropertyName="Text" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    </strong>
                </asp:Panel>
                <br />
    



                <br />
    



</div><!-- / .control-group -->

        </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="pobservados" runat="server">
            <div class="control-group">
                <label class="control-label">
               Cod. Registro:
                </label>
                <div class="controls">
                    <asp:TextBox ID="txtcodreg0" runat="server" class="span2" placeholder="Razòn social de la empresa" Style="text-transform: uppercase"></asp:TextBox>
                    &nbsp;&nbsp; RUC:&nbsp;
                    <asp:TextBox ID="txtruc0" runat="server" class="span3"></asp:TextBox>
                </div>
            </div>
            <!-- / .control-group -->
            <div class="control-group">
                <label class="control-label">
                Razón social:
                </label>
                <div class="controls">
                    <asp:TextBox ID="txtrazonsicial0" runat="server" class="span5" placeholder="Razòn social de la empresa" Style="text-transform: uppercase"></asp:TextBox>
                    &nbsp;</div>
            </div>
            <!-- / .control-group -->
            <div class="control-group">
                <label class="control-label">
                Cultivo:
                </label>
                <div class="controls">
                    <asp:TextBox ID="txtcultivo0" runat="server" class="span5" Style="text-transform: uppercase"></asp:TextBox>
                    &nbsp;</div>
            </div>
            <!-- / .control-group -->

            <div class="control-group">
            <label class="control-label">Zona de producción:</label><div class="controls">
        
            <asp:TextBox ID="txtzonaproduccion0" runat="server" class="span5" Style="text-transform: uppercase"  ></asp:TextBox>
            &nbsp;</div>
            </div><!-- / .control-group -->

            <div class="control-group">
                <label class="control-label">
                Condición pago:</label><div class="controls">
                    <asp:TextBox ID="txtcondicionpago0" runat="server" class="span5" Style="text-transform: uppercase"></asp:TextBox>
                    &nbsp;</div>
            </div>
            <!-- / .control-group -->
            <div class="control-group">
                <label class="control-label">
                Linea de Crédito:</label><div class="controls">
                    <asp:TextBox ID="txtlineacredito0" runat="server" class="span5" Style="text-transform: uppercase"></asp:TextBox>
                    &nbsp;</div>
            </div>
            <!-- / .control-group -->
            <div class="control-group">
                <label class="control-label">
                Representante Legal:</label><div class="controls">
                    <asp:TextBox ID="txtaprobadorepresentante0" runat="server" class="span5" Style="text-transform: uppercase"></asp:TextBox>
                    &nbsp;</div>
            </div>
            <!-- / .control-group -->
            <div class="control-group">
                <label class="control-label">
                Área Logística:</label><div class="controls">
                    <asp:TextBox ID="txtaprobadologistica0" runat="server" class="span5"></asp:TextBox>
                    &nbsp;</div>
            </div>
            <!-- / .control-group -->
            <div class="control-group">
                <label class="control-label">
               Área Pagos:</label><div class="controls">
                    <asp:TextBox ID="txtaprobadospagos0" runat="server" class="span5"></asp:TextBox>
                    &nbsp;</div>
            </div>
            <div class="control-group">
                <label class="control-label">
              Área Contabilidad:</label><div class="controls">
                    <asp:TextBox ID="txtcontabilidad0" runat="server" class="span5"></asp:TextBox>
                    &nbsp;</div>
            </div>
            <!-- / .control-group -->
            <div class="control-group">
                <label class="control-label">
              Observación JEFATURA:</label><div class="controls">
                    <asp:TextBox ID="txtobservacionjefatura0" runat="server" class="span5" TextMode="MultiLine"></asp:TextBox>
                    &nbsp;</div>
            </div>
            <!-- / .control-group -->
            <div class="control-group">
                <asp:Button ID="Button2" runat="server" class="btn" OnClick="Button1_Click" Text="RETORNAR" Width="168px" />
            </div>
            <!-- / .control-group -->

        </asp:Panel>
        <br />
        </div>
        </div>




    </asp:Panel>

        <br />
     <asp:Panel ID="panelcultivos" runat="server">
         <span class="title_section_offer">Registrar cultivo: </span><asp:Label ID="lblidRUC" runat="server"></asp:Label>
        
         &nbsp; <strong>
         <asp:Label ID="lblrazonss0" runat="server"></asp:Label>
         </strong>&nbsp;<div class="title_section_offer_fake">
         </div>
         <div class="row">
             <div class="offset2">
                 <div class="control-group">
                     <label class="control-label">
                     Tipo (s) cultivo (s):
                     </label>
                     <div class="controls">
                         <asp:DropDownList ID="ddlbcultivo" runat="server" datasourceid="SqlDataSource6" DataTextField="descripcion" DataValueField="idtipocultivo">
                         </asp:DropDownList>
                         <asp:DropDownList ID="ddlbtipocultivoo" runat="server">
                             <asp:ListItem Selected="True" Value="TRA">Tradicional</asp:ListItem>
                             <asp:ListItem Value="ORG">Organico</asp:ListItem>
                         </asp:DropDownList>
                         <asp:TextBox ID="txthectarea" runat="server" class="span2" placeholder="Hetárea: 1000.50" required="" step="0.01" type="number"></asp:TextBox>
                         &nbsp;Hectáreas&nbsp;&nbsp;&nbsp;&nbsp;
                         <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_fichatipocultivo]"></asp:SqlDataSource>
                     </div>
                 </div>
                 <!-- / .control-group -->
           
                 <div class="control-group">
                     <label class="control-label">
                     Zona de producción: <span class="required">*</span></label>
                     <div class="controls">
                         <asp:TextBox ID="txtzonaproduccion" runat="server" class="span5" placeholder="Zona de producción" required="" Style="text-transform: uppercase"></asp:TextBox>
                     </div>
                 </div>
                 <!-- / .control-group -->
    


        
                 <div class="control-group">
                     <div class="controls">
                         <asp:Button ID="btregcultivo" runat="server" class="btn" OnClick="btregcultivo_Click" Text="REGISTRAR" />
                     </div>
                 </div>
                 <!-- / .control-group -->
      

             </div>
         </div>
     </asp:Panel>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        Usuario,
        <asp:Label ID="lblidusuario" runat="server"></asp:Label>
    </p>
</asp:Content>
