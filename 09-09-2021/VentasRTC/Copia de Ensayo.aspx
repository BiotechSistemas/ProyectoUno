<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="Ensayo.aspx.cs" Inherits="biotech.VentasRTC.Ensayo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
       
        /*.auto-style2 {
            width: 397px;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    Solicitud de Ensayo N°2018-<asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Actualizar</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Nueva solicitud</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Solicitudes registradas</asp:LinkButton>
    <br />
    <br />
    <asp:Panel ID="Panelprincipal" runat="server">
        <span class="title_section_offer">1. Nombre del ensayo de eficacia</span>
       
        <asp:Label ID="lblmensajeatendido" runat="server"></asp:Label>
       
        <asp:Label ID="lblidensayo" runat="server" Visible="False"></asp:Label>
        <asp:Label class="required" ID="lblmensaje" runat="server"></asp:Label>
        &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">
    
    <div class="control-group">
    <label class="control-label">Ensayo:<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="txtnombreensayo" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Nombre de ensayo" required></asp:TextBox>
    </div>
    </div><!-- / .control-group -->
          
    </DIV>
</DIV>
 
    
    <span class="title_section_offer">2. Información de ensayo</span>
    <asp:Label ID="lblidcultivoempresa" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblidrucCliente" runat="server" Visible="False"></asp:Label>
    <asp:Label class="required" ID="lblmensaje2" runat="server"></asp:Label>

    &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2"> 
                                  
       <div class="control-group">
    <label class="control-label">Departamento / Provincia:<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="txtdepartamento" runat="server" class="span2" Style="text-transform: uppercase" placeholder="Departamento" required></asp:TextBox>
       

        &nbsp;/&nbsp;
       

        <asp:TextBox ID="txtprovincia" runat="server" class="span3" placeholder="Provincia" required="" Style="text-transform: uppercase"></asp:TextBox>
       

    </div>
</div><!-- / .control-group -->
    
    <div class="control-group">
    <label class="control-label">Fundo / Empresa :<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="txtfundo" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Fundo o empresa" required></asp:TextBox>
    </div>
    </div><!-- / .control-group -->

    <div class="control-group">
    <label class="control-label">RUC / EMPRESA:<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="txtruc" runat="server" class="span2" Style="text-transform: uppercase" placeholder="Ing. RUC" required Width="110px"></asp:TextBox>
        <asp:Button ID="Button2" runat="server" Text="Buscar" OnClick="Button2_Click" Width="70px" Height="30px"/>
        
    <asp:TextBox ID="txtrazonsocial" runat="server"   style="text-transform: uppercase" placeholder="Razón social" Enabled="False" Width="250px"></asp:TextBox>
    </div>
    </div><!-- / .control-group -->
     

        <asp:Panel  ID="Paneldato" runat="server">
    <div class="control-group">
    <label class="control-label">Cultivo / Variedad o Híbrido:<span class="required">*</span></label>
    <div class="controls">
        
        <asp:DropDownList ID="ddlCultivo" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource6" CssClass="span3" DataTextField="TPCULT" DataValueField="IDCUL" OnSelectedIndexChanged="ddlCultivo_SelectedIndexChanged" >
        </asp:DropDownList>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Verificar estado" Height="30px" />
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_Tipocultivo" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidrucCliente" Name="idclientecultivo" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    </div><!-- / .control-group -->

            </asp:Panel>
            <asp:Panel ID="Paneldatoscultivo" runat="server">


    <div class="control-group">
    <label class="control-label">Responsable del área técnica del Fundo:</label>
    <div class="controls">
        
        <asp:TextBox ID="txtdescripp0" runat="server" class="span5"></asp:TextBox>
          <asp:Label  ID="lbldetalle" runat="server" Visible="False"></asp:Label>
&nbsp;
        <asp:Label   ID="lblhectareacultivo" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblestadocultivo" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblrtc" runat="server" Visible="False"></asp:Label>
    </div>
    </div><!-- / .control-group -->
   
       <div class="control-group">
    <label class="control-label">Hectárea a ensayar:<span class="required">*</span></label>
    <div class="controls">
        
    <asp:TextBox ID="txthectaraensayo" runat="server" class="span3" type="number" step="0.01" placeholder="Hectárea de ensayo"  ></asp:TextBox>
    </div>
    </div><!-- / .control-group -->  


        <div class="control-group">
    <label class="control-label">Punto de llegada:<span class="required">*</span></label>
    <div class="controls">
        
    <asp:TextBox ID="txtpuntollegada" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Punto llegada"  ></asp:TextBox>
    </div>
    </div><!-- / .control-group --> 

                
        <div class="control-group">
    <label class="control-label">Fecha requerida:<span class="required">*</span></label>
    <div class="controls">
        
    <asp:TextBox ID="txtfecharequeridaa" runat="server" class="span5" TextMode="Date"   ></asp:TextBox>
    </div>
    </div><!-- / .control-group --> 

        <div class="control-group">
    <%--<label class="control-label">Punto de llegada:<span class="required">*</span></label>--%>
    <div class="controls">
        <asp:Button ID="Button3" runat="server" Text="REGISTRAR DETALLE DE SOLICITUD" class="btn" OnClick="Button3_Click"/>
        <br />
        
    </div>
    </div><!-- / .control-group --> </asp:Panel>
</DIV>
</DIV>   </asp:Panel>

    <asp:Panel ID="Paneljaladatos" runat="server">

        <span class="title_section_offer">1. Nombre del ensayo de eficacia</span>
       
        <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
        <asp:Label class="required" ID="Label3" runat="server"></asp:Label>
        <div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">
    
    <div class="control-group">
    <label class="control-label">Ensayo:<span class="required">*</span></label>
         
    <div class="controls">
         N° 2018-<asp:TextBox ID="TextBox1" runat="server" Width="60px"></asp:TextBox>
        <asp:ImageButton ID="ImageButton1" runat="server" Height="30px" ImageAlign="AbsMiddle" ImageUrl="~/images/buscar1.jpg" OnClick="ImageButton1_Click" />
        
        <asp:TextBox ID="txtnombre1" runat="server" class="span4" placeholder="Nombre de ensayo"  Style="text-transform: uppercase"></asp:TextBox>
    </div>
    </div><!-- / .control-group -->
          
    </DIV>
</DIV>
 

    <span class="title_section_offer">2. Información de ensayo</span>
    <asp:Label ID="Label4" runat="server" Visible="False"></asp:Label>
    <asp:Label class="required" ID="Label5" runat="server"></asp:Label>

    &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2"> 
                                  
       <div class="control-group">
    <label class="control-label">Departamento / Provincia:<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="txtdepar1" runat="server" class="span2" Style="text-transform: uppercase" placeholder="Departamento" ></asp:TextBox>
       

        &nbsp;/&nbsp;
       

        <asp:TextBox ID="txtprov1" runat="server" class="span3" placeholder="Provincia"  Style="text-transform: uppercase"></asp:TextBox>
       

    </div>
</div><!-- / .control-group -->
    
    <div class="control-group">
    <label class="control-label">Fundo / Empresa :<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="txtfundoempresa1" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Fundo o empresa" ></asp:TextBox>
    </div>
    </div><!-- / .control-group -->

    <div class="control-group">
        <label class="control-label">RAZON SOCIAL / RUC:<span class="required">*</span></label>
    <div class="controls">
        
    <asp:TextBox ID="txtrucrazon1" runat="server"   style="text-transform: uppercase" placeholder="Razón social" class="span5"></asp:TextBox>
    </div>
    </div><!-- / .control-group -->
     

        <asp:Panel  ID="Panel2" runat="server">
    <div class="control-group">
    <label class="control-label">Cultivo / Variedad o Híbrido:<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="txtcultivo1" runat="server" Class="span5" placeholder="Cultivo"></asp:TextBox>
    </div>
    </div><!-- / .control-group -->

            </asp:Panel>
            <asp:Panel ID="Panel3" runat="server">


    <div class="control-group">
    <label class="control-label">Responsable del área técnica del Fundo:</label>
    <div class="controls">
        
        <asp:TextBox ID="txtrtc1" runat="server" class="span5" placeholder="RTC responsable"></asp:TextBox>
&nbsp;
        </div>
    </div><!-- / .control-group -->
   
       <div class="control-group">
    <label class="control-label">Hectárea a ensayar:<span class="required">*</span></label>
    <div class="controls">
        
    <asp:TextBox ID="txthectareaaensayo1" runat="server" class="span3" type="number" step="0.01" placeholder="Hectárea de ensayo"  ></asp:TextBox>
    </div>
    </div><!-- / .control-group -->  


        <div class="control-group">
    <label class="control-label">Punto de llegada:<span class="required">*</span></label>
    <div class="controls">
        
    <asp:TextBox ID="txtpuntolegada1" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Punto llegada"  ></asp:TextBox>
    </div>
    </div><!-- / .control-group --> 

                <!-- / .control-group --> </asp:Panel>
</DIV>
</DIV> 


    </asp:Panel>

    <asp:Panel ID="Panel1" runat="server">
  <span class="title_section_offer">3. Tratamientos</span>
        <asp:Label ID="lblmaxtra" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblrowcountproducto" runat="server" Visible="False"></asp:Label>
    <asp:Label class="required" ID="lblmensaje3" runat="server"></asp:Label>

    &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">
    
    <div class="control-group">
        <label class="control-label">Datos de Tratamiento:<span class="required">*</span></label>
       
        <div class="controls">
        
        <table >
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlbProducto" runat="server" Width="200px" DataSourceID="SqlDataSource5" DataTextField="producto" DataValueField="producto" OnSelectedIndexChanged="ddlbProducto_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productodiferentes" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <br />
                    Producto<asp:Label ID="lblidproducto" runat="server"></asp:Label>
                    -<asp:Label ID="lblprecio" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdosis" runat="server" type="number" step="0.01" Width="80px" placeholder="3.00"></asp:TextBox>
                    <br />
                    Dosis / Litros</td>
                <td>
                    <asp:TextBox ID="txtfrecApli" runat="server" type="number" Width="80px"  placeholder="1"></asp:TextBox>
                    <br />
                    N° Frec. Apli.</td>
                <td>
                    <asp:TextBox ID="txtCantReq" runat="server" type="number" step="0.01" Width="80px" placeholder="2.00"></asp:TextBox>
                    <br />
                    Cant. Req / L.</td>
                <td>
                    <asp:TextBox ID="txtFechaReque" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
                    <br />
                    Fecha Requerida</td>
                <td>
                    <asp:Button ID="btnRequiere" runat="server" Text="Registrar" Height="29px" OnClick="btnRequiere_Click"/></td>
            </tr>
            </table>

        </div>
    </div>

    

    <div class="control-group">
        <label class="control-label">Tratamientos registrados:</label>
        <br />
        <div class="controls">
        <asp:GridView ID="gvTratamientos" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" SortExpression="ENSAYO" Visible="False" />
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" SortExpression="PRECIO" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="APLICACION" HeaderText="APLICACION" SortExpression="APLICACION" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="NUMAPLICACION" HeaderText="NUM/FREC. APLICACION" SortExpression="NUMAPLICACION" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="FREQUERIDA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.REQUERIDA" SortExpression="FREQUERIDA" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
   
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_EnsayoTratamiento" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidensayo" Name="idEnsayo" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
   </div>
    </div><!-- / .control-group -->
         
        
         
    </DIV>
</DIV>
   
 <span class="title_section_offer">4. Variables a evaluar</span>
        <asp:Label ID="lblmaxvarevaluar" runat="server" Visible="False"></asp:Label>
    <asp:Label class="required" ID="lblmensaje4" runat="server"></asp:Label>

    &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">
    
    <div class="control-group">
    <label class="control-label">Variable a evaluar:<span class="required">*</span></label>
    <div class="controls">
        
    <asp:TextBox ID="txtvariableevaluar" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Variable a evaluar" ></asp:TextBox>
                    <asp:Button ID="btnRequiere0" runat="server" Text="Registrar" Height="30px" OnClick="btnRequiere0_Click"/>
    </div>
    </div><!-- / .control-group -->
    
    <div class="control-group">
        <label class="control-label">Variables a evaluar registradas:</label>
        <div class="controls">
        <br />
        <asp:GridView ID="gvVariableEvalular" runat="server" AutoGenerateColumns="False" DataKeyNames="idVariables" DataSourceID="SqlDataSource3" Width="300px">
            <Columns>
                <asp:BoundField DataField="idVariables" HeaderText="idVariables" ReadOnly="True" SortExpression="idVariables" Visible="False" />
                <asp:BoundField DataField="idensayo" HeaderText="idensayo" SortExpression="idensayo" Visible="False" />
                <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" />
            </Columns>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_EnsayoVariables] WHERE ([idensayo] = @idensayo)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidensayo" Name="idensayo" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
            </div>
    </div><!-- / .control-group -->    
            
    </DIV>
</DIV>
 <span class="title_section_offer">5. Cronograma de actividades</span>
        <asp:Label ID="lblmaxcronogramaact" runat="server" Visible="False"></asp:Label>
    <asp:Label class="required" ID="lblmensaje5" runat="server"></asp:Label>

    &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">
    
    <div class="control-group">
    <label class="control-label">Indicar actividad:<span class="required">*</span></label>
    <div class="controls">
      
        <asp:DropDownList ID="ddlbActividades" runat="server" class="span5" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idEnsayoActividades"></asp:DropDownList>  
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_EnsayoAct]"></asp:SqlDataSource>
    
        <asp:TextBox ID="txtfechacrono" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Button ID="btnRequiere1" runat="server" Height="30px" OnClick="btnRequiere1_Click" Text="Registrar" />
    
    </div>
    </div><!-- / .control-group -->
    
   


    <div class="control-group">
        <label class="control-label">Cronograma de actividades registradas:</label>
        <div class="controls"><br />
        <asp:GridView ID="gvActividades" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" Width="300px" >
            <Columns>
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" SortExpression="ENSAYO" Visible="False" />
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_EnsayoCronoActividades" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidensayo" Name="idensayo" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource></div>
    </div><!-- / .control-group -->    
            

         <div class="control-group">
    <%--<label class="control-label">Punto de llegada:<span class="required">*</span></label>--%>
    <div class="controls">
        <asp:Button ID="Button4" runat="server" Text="FINALIZAR SOLICITUD DE MUESTRA" class="btn" OnClick="Button4_Click"/>
        <asp:Label ID="lblfinalizado" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblatendido" runat="server" Visible="False"></asp:Label>
    </div>
    </div><!-- / .control-group --> </asp:Panel>
    </DIV>
</DIV>
   
</asp:Panel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        Usuario
        <asp:LinkButton ID="LinkButton4" runat="server">JMANC</asp:LinkButton>
&nbsp;<asp:Label ID="lblnivel" runat="server"></asp:Label>
    </p>
</asp:Content>
