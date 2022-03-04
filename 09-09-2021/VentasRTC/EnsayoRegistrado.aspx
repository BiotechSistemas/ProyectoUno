<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="EnsayoRegistrado.aspx.cs" Inherits="biotech.VentasRTC.EnsayoRegistrado" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function imprSelec(muestra)
        { var ficha = document.getElementById(muestra); var ventimp = window.open(' ', 'popimpr'); ventimp.document.write(ficha.innerHTML); ventimp.document.close(); ventimp.print(); ventimp.close(); }
</script>
    <script type="text/javascript">
        function imprSelec(muestra1)
        { var ficha = document.getElementById(muestra1); var ventimp = window.open(' ', 'popimpr'); ventimp.document.write(ficha.innerHTML); ventimp.document.close(); ventimp.print(); ventimp.close(); }
</script>

    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 111px;
        }
        .auto-style3 {
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    Solitud de Ensayos
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Retornar principal</asp:LinkButton>
    
     <br />
    
     <br />
    <div id="muestra"> 


    <asp:Panel ID="Panel1" runat="server">

         <span class="title_section_offer">Solicutud de ensayos registrados:</span>
       
        <asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
        <asp:Label class="required" ID="lblmensaje" runat="server"></asp:Label>
        <div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">
    
    <div class="control-group">
        CLIENTES BIOTECH<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource1" Width="100%" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                </asp:CommandField>
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                <asp:BoundField DataField="NENSAYO" HeaderText="ENSAYO" SortExpression="NENSAYO" />
                <asp:BoundField DataField="ENSAYO" HeaderText="DESCRIPCION DE ENSAYO" SortExpression="ENSAYO" />
                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" ReadOnly="True" SortExpression="CLIENTE" />
                <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" ReadOnly="True" SortExpression="CULTIVO" />
                <asp:BoundField DataField="FUNDO" HeaderText="FUNDO" SortExpression="FUNDO" />
                <asp:BoundField DataField="DEPART" HeaderText="DEPART" ReadOnly="True" SortExpression="DEPART" />
                <asp:BoundField DataField="RTC" HeaderText="RTC" ReadOnly="True" SortExpression="RTC" />
                <asp:BoundField DataField="AREAENSAYO" HeaderText="Ha" SortExpression="AREAENSAYO" />
                <asp:BoundField DataField="fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="fecha">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="EST" HeaderText="ESTADO" SortExpression="EST" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:CheckBoxField>
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_EnsayosReg" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblusuario" Name="usu" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        PERSONAS NATURALES - NO CLIENTES<br />
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSourceEnsayo" Width="100%">
            <Columns>
                 <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscar1.jpg" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                </asp:CommandField>
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                <asp:BoundField DataField="NENSAYO" HeaderText="ENSAYO" ReadOnly="True" SortExpression="NENSAYO" />
                <asp:BoundField DataField="FREQUERIDA" HeaderText="F. REQRD" SortExpression="FREQUERIDA" DataFormatString="{0:dd/MM/yyyy}" />
                <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                <asp:BoundField DataField="CLIENTE" HeaderText="CLIENTE" SortExpression="CLIENTE" />
                <asp:BoundField DataField="fundoempresa" HeaderText="fundoempresa" SortExpression="fundoempresa" />
                <asp:BoundField DataField="PROV" HeaderText="PROV" SortExpression="PROV" />
                <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                <asp:BoundField DataField="AREA" HeaderText="AREA" SortExpression="AREA" />
            </Columns>
            <HeaderStyle BackColor="#CCCCCC" />
            <RowStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourceEnsayo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [idensayo] COD,concat(ano,'-',num) NENSAYO,[fecharequerida] FREQUERIDA, [dni] DNI ,[nombre] CLIENTE, [fundoempresa] , [provincia] PROV, [cultivo] CULTIVO, [areaensayo]  AREA FROM [tb_Ensayo] WHERE [autor] = @autor and idClienteCultivo=0">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblusuario" Name="autor" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div><!-- / .control-group -->
          
    </DIV>
</DIV>


    </asp:Panel>
    </div>
    
    <div id="muestra1"> 
   <asp:Panel ID="Paneljaladatos" runat="server">

        <span class="title_section_offer">1. Ensayo de Eficacia</span>
       
        <asp:Label class="required" ID="Label3" runat="server"></asp:Label>
        <asp:Label ID="lblidensayo" runat="server" Visible="False"></asp:Label>
        <div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">
    
    
          
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">NOMBRE DE ENSAYO:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="500px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    
          
    </DIV>
</DIV>
 

    <span class="title_section_offer">2. Información de ensayo</span>
    <asp:Label class="required" ID="Label5" runat="server"></asp:Label>
<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2"> 
                    
         <table class="auto-style1">
            <tr>
                <td class="auto-style2">Departamento / Provincia:</td>
                <td>
                    <asp:TextBox ID="txtprov1" runat="server"    placeholder="Provincia" Style="text-transform: uppercase" Width="500px" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
             <tr>
                 <td class="auto-style2">Fundo / Empresa:</td>
                 <td>
                     <asp:TextBox ID="txtfundoempresa1"  runat="server"  placeholder="Fundo o empresa" Style="text-transform: uppercase" Width="500px" ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">Razón social:</td>
                 <td>
                     <asp:TextBox ID="txtrucrazon1" runat="server" placeholder="Razón social" style="text-transform: uppercase" Width="500px" ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">Cultivo :</td>
                 <td>
                     <asp:TextBox ID="txtcultivo1" runat="server"  placeholder="Cultivo" Width="500px" ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">Responsable del área técnica del fundo:</td>
                 <td>
                     <asp:TextBox ID="txtresponsablefundo"  runat="server"  placeholder="responsable" Width="500px" ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
             
              <tr>
                 <td class="auto-style2">Responsable RTC:</td>
                 <td>
                     <asp:TextBox ID="txtrtc1"  runat="server"  placeholder="RTC responsable" Width="500px" ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">Hectárea a ensayar:</td>
                 <td>
                     <asp:TextBox ID="txthectareaaensayo1"  runat="server"  placeholder="Hectárea de ensayo" step="0.01" type="number" Width="500px" ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">Punto de llegada:</td>
                 <td>
                     <asp:TextBox ID="txtpuntodellegada"  runat="server"  placeholder="punto de llegada"  Width="500px" ReadOnly="True"></asp:TextBox>
                 </td>
             </tr>
             <tr>
                 <td class="auto-style2">&nbsp;</td>
                 <td>&nbsp;</td>
             </tr>
        </table>
</DIV>
</DIV> 
    <span class="title_section_offer">3. Tratamientos</span>
    
    <div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">

        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" Width="100%">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" SortExpression="ENSAYO" Visible="False" />
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" SortExpression="PRECIO" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="APLICACION" HeaderText="APLICACION" SortExpression="APLICACION" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="NUMAPLICACION" HeaderText="NUM. APLICACION" SortExpression="NUMAPLICACION" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="FREQUERIDA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FEC. REQUERIDA" SortExpression="FREQUERIDA" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_EnsayoTratamiento" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidensayo" Name="idEnsayo" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <br />

        </div>
        </div>

     <span class="title_section_offer">4. Variables a evaluar</span>
    
    <div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">

        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Width="400px" ShowHeader="False">
            <Columns>
                <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" />
            </Columns>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT [descripcion] FROM [tb_EnsayoVariables] WHERE ([idensayo] = @idensayo)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidensayo" Name="idensayo" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <br />

        </div>
        </div>

  <span class="title_section_offer">5. Cronograma de actividades</span>
  <div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">

        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource4" Width="450px">
            <Columns>
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" SortExpression="ENSAYO" Visible="False" />
                <asp:BoundField DataField="DESCRIPCION" HeaderText="ACTIVIDAD" SortExpression="DESCRIPCION" />
                <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA">
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
           
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_EnsayoCronoActividades" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidensayo" Name="idensayo" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

        <br />

        </div>
        </div>


    </asp:Panel>
        <br />
        <div class="auto-style3">
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Retornar</asp:LinkButton>
            <br />
        </div>
        </div>
     <a href="javascript:imprSelec('muestra')">Imprimir Cuadro</a>&nbsp; 
    <a href="javascript:imprSelec('muestra1')">Imprimir Solicitud</a>&nbsp; 
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
