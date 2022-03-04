<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="RegFormCliente.aspx.cs" Inherits="biotech.VentasRTC.RegFormCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 800px;
        }
        .auto-style2 {
            height: 19px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            width: 100%;
        }
        .auto-style5 {
            width: 216px;
        }
        .auto-style6 {
            width: 222px;
        }
        .auto-style7 {
            width: 222px;
            height: 18px;
        }
        .auto-style8 {
            width: 216px;
            height: 18px;
        }
        .auto-style9 {
            height: 18px;
        }
        .auto-style10 {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    FORMULARIO REGISTRO DE CLIENTE  
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
        <script src="../bio/js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../bio/css/sweetalert.css" rel="stylesheet" type="text/css" />


     <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">NUEVO REGISTRO</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">CLIENTES REGISTRADOS</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
        <%--<div class="title_section_offer_fake"></div>--%>
    <asp:LinkButton ID="EstadoCuenta" runat="server" PostBackUrl="~/VentasRTC/ClienteEstadoCuenta.aspx" Visible="False">VER ESTADO DE CUENTA</asp:LinkButton>
    <br />
    <br />
        <br />
       <div class="control-group">
    <label class="control-label">Razón Social/RUC :<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="TextBoxFind" runat="server" class="span5" Style="text-transform: uppercase" placeholder="RUC / Razón social de la empresa" ></asp:TextBox>
        <asp:LinkButton ID="LinkButton6" CssClass="btn btn-success" runat="server" OnClick="LinkButton6_Click">BUSCAR</asp:LinkButton>
        &nbsp;</div>
</div><!-- / .control-group -->

    <asp:Panel ID="pdatos" runat="server">


  <span class="title_section_offer">Datos de la empresa:</span>
&nbsp;&nbsp;
   

    &nbsp;<asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click">INFORMACIÓN DE EVALUACIÓN:</asp:LinkButton>
            <asp:Panel ID="pinfo" runat="server" Visible="False">
                <br />
                <table class="auto-style1">
                    <tr>
                        <td><strong>ZONA REGISTRADA:</strong></td>
                        <td>
                            <asp:Label ID="lblzonaasesorCargo" runat="server"></asp:Label>
                            <asp:Label ID="lblidzonaCargo" runat="server" Visible="False"></asp:Label>
                        </td>
                        <td><strong>ASESOR:</strong><asp:Label ID="lblidAsesorCargo" runat="server"></asp:Label>
                        </td>
                        <td>
                            <asp:Label ID="lblasesornombre" runat="server"></asp:Label>
                            <asp:Label ID="lblestadoasesorcargo" runat="server" Text="0" Visible="False"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td><strong>LINEA APROBADA:</strong></td>
                        <td>
                            <asp:Label ID="lbl10condicion" runat="server"></asp:Label>
                            <asp:Label ID="lbl10dias" runat="server"></asp:Label>
                        </td>
                        <td style="text-align: right">
                            &nbsp;</td>
                        <td>
                            <asp:Label ID="lbl10importe" runat="server"></asp:Label>
                            <asp:Label ID="lbl10Moneda" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3"><strong>FICHA COMPLETA:</strong></td>
                        <td class="auto-style3" colspan="3">
                            <asp:Label ID="lblidestadoficha" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2"><strong>APROBACION C&amp;C:</strong></td>
                        <td class="auto-style2">
                            <asp:Label ID="lbl10idaprobacioncyc" runat="server"></asp:Label>
                        </td>
                        <td class="auto-style2"><strong>APROBACIÓN FINAL:</strong></td>
                        <td class="auto-style2">
                            <asp:Label ID="lbl10idaprobacionfinal" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                            Historial:<br />
                            <asp:GridView ID="gvHistorial" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSourceHistorial" ShowHeader="False" Width="1200px" BorderStyle="None" ForeColor="Gray" GridLines="Horizontal">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False">
                                    </asp:BoundField>
                                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                                    <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" DataFormatString="{0:dd/MM/yyyy}" >
                                    <HeaderStyle Width="80px" />
                                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="observacion" HeaderText="observacion" SortExpression="observacion">
                                    </asp:BoundField>
                                    <asp:BoundField DataField="estadoSentinel" HeaderText="estadoSentinel" SortExpression="estadoSentinel" Visible="False">
                                    </asp:BoundField>
                                </Columns>
                                <EmptyDataTemplate>
                                    No registra historial...
                                </EmptyDataTemplate>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSourceHistorial" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT TOP (4) * FROM [tb_Fc_observaciones] WHERE ([idcliente] = @idclienteZona  ) ORDER BY [id] DESC">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="txtruc" Name="idclienteZona" PropertyName="Text" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <asp:Label ID="lblultimActualizacion" runat="server"></asp:Label>
                       
            </asp:Panel>
 
     <asp:Panel ID="PanelAYUDA" runat="server" Visible="False">
         -----------------------------------------------<br /> idzona del Usuario login:<asp:Label ID="lblidzonaUsuariologin" runat="server"></asp:Label>
         <br />
         -----<br /> idzonaEvaluada =
         <asp:Label ID="lblidzonaEvaluada" runat="server"></asp:Label>
         &nbsp; idcliente=<asp:Label ID="lbl10idcliente" runat="server"></asp:Label>
         <br />
         zonacliente:<asp:Label ID="lblzonaCliente" runat="server"></asp:Label>
         &nbsp;URL:&nbsp;<asp:Label ID="lblUrlDinamico" runat="server"></asp:Label>
         &nbsp;&nbsp;&nbsp; IDUSUARIO login:<asp:Label ID="lblidUsuario" runat="server"></asp:Label>
         -<asp:Label ID="lblmensaje" runat="server"></asp:Label>
         <asp:Label ID="lblRegPor" runat="server"></asp:Label>
         /<asp:Label ID="lblestadoAPROVACION" runat="server" Visible="False"></asp:Label>
         &nbsp;&nbsp;<asp:Label ID="lblFechaActVendedor" runat="server"></asp:Label>
         zona usuario login:&nbsp;<asp:Label ID="lblzonaUsuarioLogin" runat="server"></asp:Label>
         <asp:Label ID="lblCorreoVend" runat="server" Visible="False"></asp:Label>
         &nbsp;<asp:Label ID="lblnomPersonal" runat="server"></asp:Label>
         <asp:Label ID="lblcorreosAdmin" runat="server" Visible="False"></asp:Label>
         <br />
     </asp:Panel>
     &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">
                                
<div class="control-group">
    <label class="control-label" for="AreaTrabajo" >RUC: <span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="txtruc" runat="server" class="span3" placeholder="Ing. RUC de la empresa"  MaxLength="12"></asp:TextBox>
&nbsp;</div>
</div><!-- / .control-group -->

<div class="control-group">
    <label class="control-label">Razón social: <span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="txtrazonsicial" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Razòn social de la empresa" ></asp:TextBox>
        &nbsp;</div>
</div><!-- / .control-group -->
   
    <div class="control-group">
    <label class="control-label">Teléfono:  </label>
    <div class="controls">
         <asp:TextBox ID="txttelefono" runat="server" class="span3"  placeholder="Ing. Teléfono"  ></asp:TextBox>
&nbsp;</div>
</div><!-- / .control-group -->






<div class="control-group">
  <label class="control-label">Representante Legal: <span class="required">*</span></label>

  <div class="controls">
    
      <asp:TextBox ID="txtrepresentantelegal" runat="server" required class="span5" Style="text-transform: uppercase" placeholder="Representante legal" ></asp:TextBox>
&nbsp;</div><!-- / .control-group -->
</div>
  <div class="control-group">
    <label class="control-label">Dirección Fiscal: <span class="required">*</span></label>

    <div class="controls">
        <asp:TextBox ID="txtdireccionfiscal" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Dirección fiscal" required Rows="3" TextMode="MultiLine" ></asp:TextBox>        
       
    </div>
</div><!-- / .control-group -->

        <div class="control-group">
    <label class="control-label">Departamento: <span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txtdepartamento" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Departamento" required ></asp:TextBox>        
       
    </div>
</div><!-- / .control-group -->

        <div class="control-group">
    <label class="control-label">Provincia: <span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txtProvincia" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Provincia" required ></asp:TextBox>        
       
    </div>
</div><!-- / .control-group -->

        <div class="control-group">
    <label class="control-label">Distrito: <span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txtDistrito" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Distrito" required ></asp:TextBox>        
       
    </div>
</div><!-- / .control-group -->



<div class="control-group">
    <label class="control-label">Giro de la empresa:  <span class="required">*</span></label>
    <div class="controls">
        
      
        <asp:DropDownList ID="ddlgiroempresa" runat="server"  class="span5" AutoPostBack="True" OnSelectedIndexChanged="ddlgiroempresa_SelectedIndexChanged" DataSourceID="SqlDataSource5" DataTextField="giro" DataValueField="giro">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_giroempresa]"></asp:SqlDataSource>
&nbsp;</div>
</div><!-- / .control-group -->

          <asp:Panel ID="Panelpuntosventa" runat="server">                       
<div class="control-group">
    <label class="control-label">Puntos de venta: <span class="required">*</span></label>
    <div class="controls">
        
        <%--<input id="id_vacancies" type="text" name="vacancies" value="1" class="span1">--%>
        <asp:TextBox ID="txtpuntosventa" runat="server"    class="span1"  type="number" >1</asp:TextBox>
    </div>
</div><!-- / .control-group -->
          </asp:Panel>
        <asp:Panel ID="PanelGiroEmpresa" runat="server">
                                      
<div class="control-group">
    <label class="control-label">Tipo Mercado: <span class="required">*</span></label>
    <div class="controls">
         <label class="radio inline">   
        <%--<input id="id_vacancies" type="text" name="vacancies" value="1" class="span1">--%>
        <asp:RadioButtonList ID="RadioButtonListMercado" runat="server">
            <asp:ListItem Selected="True">Nacional</asp:ListItem>
            <asp:ListItem>Extranjero</asp:ListItem>
            <asp:ListItem Value="No indica">No indica</asp:ListItem>
        </asp:RadioButtonList>
             </label>
    </div>
</div><!-- / .control-group -->

        </asp:Panel>


<div class="control-group">
    <label class="control-label">Correo Facturación Electrónica: </label>
    <div class="controls">
        <asp:TextBox ID="txtcorreofactelectronica" placeholder="facturacionElec@empresa.com" runat="server" class="span5"></asp:TextBox>        
       
    </div>
</div><!-- / .control-group -->
                                
<div class="control-group">
    <label class="control-label">Banco referencial: <span class="required">*</span></label>
  

                                    
    <div class="controls">
            <label class="checkbox inline">       
        <asp:CheckBoxList ID="CheckBoxListBANCOS" runat="server" DataSourceID="SqlDataSource4" DataTextField="banco" DataValueField="banco" RepeatColumns="2" RepeatDirection="Horizontal" Width="450px" CellSpacing="20" CssClass="checkbox">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_bancos]"></asp:SqlDataSource>
 </label>
       
        <asp:TextBox ID="txtbancoscadena"  runat="server" class="span5"></asp:TextBox>        
      
       
            <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click1">Modificar</asp:LinkButton>
      
       
            <br />
      
       
    </div>
</div><!-- / .control-group -->

                           
<div class="control-group">
    <label class="control-label">Banco de su preferencia: <span class="required">*</span></label>
                                   
  <div class="controls">
               <label class="checkbox inline">  
                                     
                                          <asp:CheckBoxList ID="CheckBoxListtrabajar" runat="server" DataSourceID="SqlDataSource6" DataTextField="banco" DataValueField="banco" CssClass="checkbox" CellSpacing="20" RepeatColumns="2" Width="450px" RepeatDirection="Horizontal">
                                          </asp:CheckBoxList>
                                  
        <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_bancos]"></asp:SqlDataSource>
 
             </label>
       
        <asp:TextBox ID="txtbancopreferenciacadena"  runat="server" class="span5"></asp:TextBox>        
      
       
               <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click1">Modificar</asp:LinkButton>
      
       
    </div>
</div><!-- / .control-group -->




                                
<div class="control-group">
    <label class="control-label">Condición Credito: (Ejem. LETRA 30 dias) <span class="required">*</span></label>
    <div class="controls">
        <asp:DropDownList ID="ddlbcondicioncredito" runat="server" DataSourceID="SqlDataSourcecondpago" AutoPostBack="True" OnSelectedIndexChanged="ddlbcondicioncredito_SelectedIndexChanged" DataTextField="descripcion" DataValueField="idcondpago" >
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourcecondpago" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cliente.condpago" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
       
        <asp:TextBox ID="txtdiascredito" runat="server"    class="span1"  type="number" required Enabled="False">0</asp:TextBox>
       
    &nbsp;días</div>
</div><!-- / .control-group -->

                                                               
<div class="control-group">
    <label class="control-label">Linea de crédito: <span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txtmonto1" type="number" step="0.01" runat="server" class="span2" placeholder="1000.00" required >0</asp:TextBox> a <asp:TextBox ID="txtmonto2" type="number" placeholder="1300.00" step="0.01" runat="server" class="span2" required>0</asp:TextBox>
        <%--<div class="title_section_offer_fake"></div>--%>
    </div>
</div><!-- / .control-group -->



<div class="control-group">
    <label class="control-label">Moneda: </label>
    <div class="controls">
         <label class="radio inline"> 
        <asp:RadioButtonList ID="RadioButtonListmoneda" runat="server">
            <asp:ListItem Selected="True">Dolares</asp:ListItem>
            <asp:ListItem Value="Soles">Nuevos Soles</asp:ListItem>
        </asp:RadioButtonList>
</label>
    </div>
</div><!-- / .control-group -->


 <div class="control-group">
    <label class="control-label">Observación RTC: </label>
    <div class="controls">
        <asp:TextBox ID="txtobservacion" runat="server" class="span5" TextMode="MultiLine" Style="text-transform: uppercase" placeholder="Observación del cliente"></asp:TextBox>        
       
    </div>
</div><!-- / .control-group -->

   



<%--<div class="title_section_offer_fake"></div>--%><%--<div class="control-group exp-detail" style="display">
    <label class="control-label">Detalle experiencia </label>
    <div class="controls">
        
        <textarea rows="4" name="experience" cols="30" id="id_experience" maxlength="800" class="span5 counterarea" data-length="800"></textarea>
         <span class="help-block inline">Máximo <b>800</b> caracteres.   Total de caracteres restantes:
        <b><span class="countertag">800</span></b>
        </span>
    </div>
</div><!-- / .control-group -->--%>

                            </div>
                        </div>

<span class="title_section_offer">Área de Logística:</span>
<div class="title_section_offer_fake"></div>  
<div class="row">
<div class="offset2">
    <div class="control-group">
    <label class="control-label">Apellidos y Nombres:<span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txtlogistica" required runat="server" class="span5" Style="text-transform: uppercase" placeholder="Encargado Logística" ></asp:TextBox>            
    </div>
</div><!-- / .control-group -->

    
 <div class="control-group">
    <label class="control-label">Correo: <span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txtlogisticacorreo" required runat="server" class="span5"  placeholder=" Logística@empresa.com" ></asp:TextBox>  
              
   </div>
    </div><!-- / .control-group -->

 <div class="control-group">
    <label class="control-label">Telefono / Celular:<span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txttelefonologistica" required runat="server" class="span4" placeholder="Telefono logística" ></asp:TextBox>
        
   </div>
    </div><!-- / .control-group -->

    <div class="control-group">
    <label class="control-label">Día Onomástico: </label>
   <div class="controls">
<asp:TextBox ID="txtfecha1" class="span4" runat="server" placeholder="Ejem: 01, de Enero"></asp:TextBox>      
    </div>
</div><!-- / .control-group -->



</div>
</div>

<span class="title_section_offer">Área de Finanzas o Pagos:</span>
<div class="title_section_offer_fake"></div>  
<div class="row">
<div class="offset2">

    
<div class="control-group">
    <label class="control-label">Apellidos y Nombres: <span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txtpagos" required runat="server" class="span5" Style="text-transform: uppercase" placeholder="Encargado de pagos" ></asp:TextBox>        
       
    </div>
</div><!-- / .control-group -->


 <div class="control-group">
    <label class="control-label">Correo: <span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txtcorreopagos" required runat="server" class="span5"  placeholder="pagos@empresa.com" ></asp:TextBox>        
   </div>
    </div><!-- / .control-group -->

<div class="control-group">
    <label class="control-label">Telefono / Celular:<span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txttelefonopagos" required runat="server" class="span4" placeholder="Telefono pagos" ></asp:TextBox>  
        
   </div>
    </div><!-- / .control-group -->

    <div class="control-group">
    <label class="control-label">Día Onomástico: </label>
    &nbsp;<div class="controls">
        <asp:TextBox ID="txtfecha2" class="span4" runat="server" placeholder="Ejem: 01, de Enero"></asp:TextBox>      
   </div>
    </div><!-- / .control-group -->




</div>
</div>


     <span class="title_section_offer">Área de Contabilidad:</span><asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
     <asp:Label ID="Label2" runat="server" Visible="False"></asp:Label>
&nbsp;<div class="title_section_offer_fake"></div>  
    <div class="row">
    <div class="offset2">

   

        
 
    
<div class="control-group">
    <label class="control-label">Apellidos y Nombres: <span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txtcontabilidad" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Encargado de pagos" ></asp:TextBox>        
       
    </div>
</div><!-- / .control-group -->


 <div class="control-group">
    <label class="control-label">Correo: <span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txtcontabilidadmail" runat="server" class="span5"  placeholder="contabilidad@empresa.com" ></asp:TextBox>        
   </div>
    </div><!-- / .control-group -->

<div class="control-group">
    <label class="control-label">Telefono / Celular:<span class="required">*</span></label>
    <div class="controls">
        <asp:TextBox ID="txtcontabilidadfono" runat="server" class="span4" placeholder="Telefono contabilidad" ></asp:TextBox>  
        
   </div>
    </div><!-- / .control-group -->

    <div class="control-group">
    <label class="control-label">Día Onomástico: </label>
    &nbsp;<div class="controls">
        <asp:TextBox ID="txtfechnacconta" class="span4" runat="server" placeholder="Ejem: 01, de Enero"></asp:TextBox>      
   </div>
    </div><!-- / .control-group -->








        </div>
  </div>

<asp:Panel ID="panelActuaizar" runat="server" style="text-align: center">
        <%--<div class="title_section_offer_fake"></div>--%>
        <asp:Button ID="Button2" runat="server" class="btn" Height="40px" OnClick="Button2_Click" Text="Actualizar Datos" Width="300px" />
        <br />
    </asp:Panel>

    <asp:Panel ID="panelregistros" runat="server" style="text-align: center">
        <%--<div class="title_section_offer_fake"></div>--%>
        <asp:Button ID="Button1" runat="server" class="btn" Height="40px" OnClick="Button1_Click" Text="PASO 1: Registrar Cliente" Width="300px" />
        <br />
    </asp:Panel>
<br />
         <hr />
        <asp:Panel ID="pContactosregistrados" runat="server">
            CONTACTOS REGISTRADOS:
            <asp:LinkButton ID="lbtnRegistrarcontacto" runat="server" OnClick="lbtnRegistrarcontacto_Click">REGISTRAR CONTACTO</asp:LinkButton>
            &nbsp;|
            <asp:LinkButton ID="lbnActualizarcontacto" runat="server" OnClick="lbnActualizarcontacto_Click">ACTUALIZAR</asp:LinkButton>
            <asp:GridView ID="gvContacto" runat="server" AutoGenerateColumns="False" class="table table-hover" DataKeyNames="id" DataSourceID="SqlDataSourcecontacto" Width="100%">
                <Columns>
                    
                    <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                    <asp:BoundField DataField="contacto" HeaderText="CONTACTO" SortExpression="contacto" />
                    <asp:BoundField DataField="mail" HeaderText="E-MAIL" SortExpression="mail" />
                    <asp:BoundField DataField="telefono" HeaderText="TELEFONO" SortExpression="telefono" />
                    <asp:BoundField DataField="cargo" HeaderText="CARGO" SortExpression="cargo" />
                    <asp:BoundField DataField="idusuarioRegistra" HeaderText="USU" SortExpression="idusuarioRegistra" />
                    <asp:BoundField DataField="fcumpleanos" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F. NACIMIENTO" SortExpression="fcumpleanos">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                </Columns>
                <EmptyDataTemplate>
                    <span class="btn_news">No registra contactos....</span>
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#E8E8E8" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcecontacto" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id, idcliente, contacto, mail, telefono, cargo, idusuarioRegistra,fcumpleanos from tb_FichaCliente_contacto  where idcliente = @idCliente">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtruc" Name="idCliente" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <hr />
        <asp:LinkButton ID="lbtnNuevoFundo" runat="server" OnClick="lbtnNuevoFundo_Click">Nuevo fundo</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:LinkButton ID="lbtnCancelarfundo" runat="server" OnClick="lbtnCancelarfundo_Click">Cancelar</asp:LinkButton>
        &nbsp;<asp:Panel ID="pregistrarfundo" runat="server" Width="100%" BackColor="#E8F7E8">
            <table class="auto-style4">
                <tr>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtNombrefundo" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtzona" runat="server" Width="200px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server" Width="600px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:ImageButton ID="ibtnRegistrarFundo" runat="server" ImageUrl="~/images/agre.png" OnClick="ibtnRegistrarFundo_Click" Width="30px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="ibtnModificarFundo" runat="server" ImageUrl="~/images/guadar.png" OnClick="ibtnModificarFundo_Click" ToolTip="Actualizar cultivo" Width="30px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="ibtnEliminarFundo" runat="server" ImageUrl="~/images/eliminarr.png" OnClick="ibtnEliminarFundo_Click" ToolTip="Eliminar cultivo" Width="30px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">Nombre fundo:</td>
                    <td class="auto-style8">Zona:</td>
                    <td class="auto-style9">Dirección</td>
                    <td class="auto-style9"></td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <asp:Panel ID="panelFundos" runat="server">
            <span class="auto-style10"><h2>FUNDOS REGISTRADOS: (<asp:Label ID="lblcantcultivos" runat="server"></asp:Label>*)</h2>
            </span>
            <asp:GridView ID="gvfundos" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id,fundo,zona,direccion" DataSourceID="SqlDataSourcefundo" ForeColor="Black" GridLines="Horizontal" OnRowDataBound="gvfundos_RowDataBound" OnSelectedIndexChanged="gvfundos_SelectedIndexChanged" Width="800px" OnRowCommand="gvfundos_RowCommand">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:ButtonField CommandName="edita" ShowHeader="True" Text="Editar" />
                    <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                    <asp:BoundField DataField="idcliente" HeaderText="idcliente" SortExpression="idcliente" Visible="False" />
                    <asp:BoundField DataField="fundo" HeaderText="FUNDO" SortExpression="fundo" />
                    <asp:BoundField DataField="zona" HeaderText="ZONA" SortExpression="zona" />
                    <asp:BoundField DataField="direccion" HeaderText="DIRECCIÓN" SortExpression="direccion" />
                    <asp:CheckBoxField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                </Columns>
                <EmptyDataTemplate>
                    No contiene fundos registrado...
                </EmptyDataTemplate>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#F2F2F2" Font-Bold="True" ForeColor="#339933" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcefundo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from fc_fundo where idcliente = @param">
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtruc" Name="param" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="pCultivosRegistrados" runat="server">
            <br />
            Cultivos Registrados:<asp:Label ID="lblidFundoSelec" runat="server" Visible="False"></asp:Label>
            <asp:GridView ID="gvCultivos" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="id,idcultivo,idTipo,HECTAREA" DataSourceID="SqlDataSourceCultivoFundo" ForeColor="Black" GridLines="Horizontal" Width="800px" OnSelectedIndexChanged="gvCultivos_SelectedIndexChanged">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="id" HeaderText="COD" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                    <asp:BoundField DataField="FUNDO" HeaderText="FUNDO" SortExpression="FUNDO" />
                    <asp:BoundField DataField="idcultivo" HeaderText="idcultivo" SortExpression="idcultivo" Visible="False" />
                    <asp:BoundField DataField="idTipo" HeaderText="TIPO" SortExpression="idTipo" />
                    <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                    <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" />
                    <asp:BoundField DataField="HECTAREA" HeaderText="HECTAREA" SortExpression="HECTAREA" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                </Columns>
                <EmptyDataTemplate>
                    Seleccionar fundo....
                </EmptyDataTemplate>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="Black" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#F2F2F2" Font-Bold="True" ForeColor="#006600" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceCultivoFundo" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="cli_cultivos" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidFundoSelec" Name="idfundo" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <br />
        <asp:Panel ID="pRegistrarCultivos" runat="server" BackColor="#E8F7E8">
            Registrar cultivos :<asp:Label ID="lblidc" runat="server" Visible="False"></asp:Label>
            <asp:LinkButton ID="lbtnNuevoCultivo" runat="server" OnClick="lbtnNuevoCultivo_Click">Nuevo cultivo</asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="lbtnCancelar" runat="server" OnClick="lbtnCancelar_Click">Cancelar</asp:LinkButton>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="lblfundo" runat="server"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlbcultivo" runat="server" DataSourceID="SqlDataSource2" DataTextField="descripcion" DataValueField="idtipocultivo">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlbtipocultivoo" runat="server" Width="150px">
                            <asp:ListItem Selected="True" Value="TRA">Tradicional</asp:ListItem>
                            <asp:ListItem Value="ORG">Organico</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:TextBox ID="txthectarea" runat="server" class="span2" placeholder="Hetárea: 1000.50" step="0.01" type="number" Width="100px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:ImageButton ID="ibtnRegistrarCultivo" runat="server" ImageUrl="~/images/agre.png" OnClick="ibtnRegistrarCultivo_Click" ToolTip="Registrar cultivo" Width="30px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="ibtnActualizarCultivo1" runat="server" ImageUrl="~/images/guadar.png" OnClick="ibtnActualizarCultivo1_Click" ToolTip="Actualizar cultivo" Width="30px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="ibtnEliminarCultivo" runat="server" ImageUrl="~/images/eliminarr.png" OnClick="ibtnEliminarCultivo_Click1" ToolTip="Eliminar cultivo" Width="30px" />
                    </td>
                </tr>
                <tr>
                    <td>Fundo:</td>
                    <td>Cultivo:</td>
                    <td>Tipo:</td>
                    <td>Hectárea:</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                 <asp:Panel ID="Panel1" runat="server">
                            
                <tr>
                    <td>
                       
                    </td>
                    <td>
                        <asp:TextBox ID="txtajefe" runat="server"></asp:TextBox>
                        <br />
                        Jefe / Encargado de cultivo</td>
                    <td>
                        <asp:TextBox ID="txtacel" runat="server"></asp:TextBox>
                        <br />
                        Celular</td>
                    <td>
                        <asp:TextBox ID="txtahono" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
                        <br />
                        Honomástico</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:ImageButton ID="ibtna1" runat="server" ImageUrl="~/images/guadar.png" OnClick="ibtna1_Click" ToolTip="Actualizar cultivo" Width="30px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtbsanidad" runat="server"></asp:TextBox>
                        <br />
                        Responsable de sanidad</td>
                    <td>
                        <asp:TextBox ID="txtbcel" runat="server"></asp:TextBox>
                        <br />
                        Celular</td>
                    <td>
                        <asp:TextBox ID="txtbhono" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
                        <br />
                        Honomástico</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:ImageButton ID="ibtna2" runat="server" ImageUrl="~/images/guadar.png" OnClick="ibtna2_Click" ToolTip="Actualizar cultivo" Width="30px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="txtcriego" runat="server"></asp:TextBox>
                        <br />
                        Responsable de riego</td>
                    <td>
                        <asp:TextBox ID="txtccel" runat="server"></asp:TextBox>
                        <br />
                        Celular</td>
                    <td>
                        <asp:TextBox ID="txtchono" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
                        <br />
                        Honomástico</td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:ImageButton ID="ibtna3" runat="server" ImageUrl="~/images/guadar.png" OnClick="ibtna3_Click" ToolTip="Actualizar cultivo" Width="30px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                </asp:Panel>
            </table>
        </asp:Panel>
         <hr />
        CANTIDAD TOTAL DE CULTIVOS REGISTRADOS:
        <asp:Label ID="lblcantitotalcultRegistrados" runat="server" Font-Bold="True" Text="0"></asp:Label>
        <br />
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_fichatipocultivo]"></asp:SqlDataSource>
        <br />
        <br />
        <table class="auto-style4">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/images/correo.gif" Width="30px" />
                </td>
                <td>
                    <asp:ImageButton ID="ibt_solicitarapro10" runat="server" Height="40px" ImageUrl="~/images/bt_solicitaraprobacion.png" OnClick="ibt_solicitarapro10_Click" Width="400px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <br />
    <br />
     </div>
  </div>

 
</asp:Panel>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        
        Usuario,
        
        <asp:Label ID="lblidvendedor" runat="server"></asp:Label>
    </p>
    <div class="clearfix">
    <span class="required">(1) Ingresar RUC y click en (( verificar ))&nbsp; /&nbsp; * Campo obligatorio </span></div>
</asp:Content>
