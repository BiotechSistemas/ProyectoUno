<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="Visita.aspx.cs" Inherits="biotech.VentasRTC.Visita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 8px;
        }
        /*.auto-style3 {
            width: 10px;
        }*/
        .auto-style5 {
            height: 15px;
        }
        .auto-style6 {
            height: 15px;
            text-align: right;
            width: 162px;
        }
        .auto-style7 {
            width: 162px;
        }
        .auto-style8 {
            text-align: right;
            width: 162px;
        }
        .auto-style9 {
            height: 36px;
        }
        .auto-style10 {
            width: 162px;
            height: 36px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    PLAN DE GESTIÓN SEMANAL
    -
    <asp:Label ID="lblnsemana" runat="server"></asp:Label>
&nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
     <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Registrar Seman Entrante</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Confirmar Visita</asp:LinkButton>
    <br />
    <br />
     <asp:Panel ID="PanelPrincipal" runat="server">
    <span class="title_section_offer">Ingresar datos semana entrante:</span>
    &nbsp
    <asp:Label ID="lbldatoFecha" runat="server"></asp:Label>
    <asp:Label ID="lblsemanaactual" runat="server" Visible="False"></asp:Label>
     <asp:Label ID="lblsemanext" runat="server" Visible="False"></asp:Label>
         <asp:Label ID="lbliniciosemana" runat="server"></asp:Label>
         <asp:Label ID="lblfinalsemana" runat="server" Text="Label"></asp:Label>
     <asp:Label ID="lblidrtc" runat="server" Visible="False">PRUEB</asp:Label>
     <asp:Label ID="lblmaxid" runat="server" Visible="False"></asp:Label>
    &nbsp;<asp:Label ID="lblruc" runat="server" Visible="False"></asp:Label>
     <asp:Label ID="lblmensaje" runat="server"></asp:Label>


     &nbsp;<div class="title_section_offer_fake"></div>
       <table class="auto-style1">
           <tr>
               <td class="auto-style2" rowspan="11">
                   <asp:Calendar ID="Calendar1" runat="server" Height="189px" Width="249px" OnSelectionChanged="Calendar1_SelectionChanged"></asp:Calendar>
                   <br />
                   <asp:Label  class="required" ID="lblinforme" runat="server"></asp:Label>
               </td>
               
               <td class="auto-style7">&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
          <%-- <tr>
               
               <td class="auto-style8"><label class="control-label">Indicar dia:</label></td>
               <td>
        
             <label class="radio inline">   
       

                  <asp:RadioButtonList ID="rbdia" runat="server" RepeatDirection="Horizontal" Width="500px" AutoPostBack="True" OnSelectedIndexChanged="rbconapompanante_SelectedIndexChanged">
            <asp:ListItem Value="1">Lunes</asp:ListItem>
            <asp:ListItem Value="2">Martes</asp:ListItem>
            <asp:ListItem Value="3">Miercoles</asp:ListItem>
            <asp:ListItem Value="4">Jueves</asp:ListItem>
            <asp:ListItem Value="5">Viernes</asp:ListItem>
            <asp:ListItem Value="6">Sabado</asp:ListItem>
        </asp:RadioButtonList>
             </label>
 
               </td>
           </tr>--%>
            <tr>
               
               <td class="auto-style8"><label class="control-label">Dia:</label></td>
               <td>
        
                   <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
               </td>
           </tr>


           <tr>
               
               <td class="auto-style8"><label class="control-label">Tipo Visita:</label></td>
               <td>
        
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>TECNICA COMERCIAL</asp:ListItem>
                <asp:ListItem>COMERCIAL</asp:ListItem>
                <asp:ListItem>OFICINA</asp:ListItem>
                <asp:ListItem Value="OTROS PROCESOS">OTROS PROCESOS</asp:ListItem>
            </asp:DropDownList>
               </td>
           </tr>
           <tr>
               
               <td class="auto-style8"><label class="control-label">Ingresar Cliente:</label></td>
               <td>
        
        <asp:TextBox ID="txtruc" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Ing. Ruc a buscar"  Width="200px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Buscar" Height="30px" Width="80px" OnClick="Button1_Click" />
               </td>
           </tr>
           <tr>
               
               <td class="auto-style6"><label class="control-label">Razón Social:</label></td>
               <td class="auto-style5">
        
        <asp:TextBox ID="txtrazonsocial" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Razón social de la empresa"  Enabled="False" Width="450px"></asp:TextBox>
               </td>
           </tr>
           <tr>
               
               <td class="auto-style10">
        <label class="control-label">
            <asp:Label ID="lblopcion" runat="server"></asp:Label>
                   </label>
               </td>
               <td class="auto-style9">
        
        <asp:TextBox ID="txtcontacto" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Contacto"  ></asp:TextBox>
               </td>
           </tr>
           <tr>
               
               <td class="auto-style8"><label class="control-label">Unidad de Tranporte:</label></td>
               <td>
 
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_empleadoPlaca" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
 
            <asp:DropDownList ID="ddlUnidadtransporte" runat="server" DataSourceID="SqlDataSource2" DataTextField="PERSONAL" DataValueField="ID" Width="400px"></asp:DropDownList>
 
               </td>
           </tr>
           <tr>
               
               <td class="auto-style8"><label class="control-label">Fundo:</label></td>
               <td>
        
        <asp:TextBox ID="txtlugar" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Lugar o ubicación" ></asp:TextBox>
               </td>
           </tr>
           <tr>
               
               <td class="auto-style8"><label class="control-label">Concepto de:</label></td>
               <td>
        
        <asp:TextBox ID="txtmotivo" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Motivo de visita" Height="50px" TextMode="MultiLine" ></asp:TextBox>
               </td>
           </tr>
           <tr>
               
               <td class="auto-style7">&nbsp;</td>
               <td>
        
            <asp:Button ID="Button2" class="btn" runat="server" Text="Registrar" OnClick="Button2_Click" />
               </td>
           </tr>
           <tr>
               <td class="auto-style3">&nbsp;</td>
               <td class="auto-style7">&nbsp;</td>
               <td>&nbsp;</td>
           </tr>
       </table>
     </div>
         

</asp:Panel>

    

    
        

         <span class="title_section_offer">Visita
     <asp:Label ID="lbldescripsemNext" runat="server"></asp:Label>
     :</span>
     
&nbsp;&nbsp;
   

    &nbsp;   <asp:Label ID="lblmensaje1" runat="server"></asp:Label>
     <asp:Label ID="lblidsivitanext" runat="server" Visible="False"></asp:Label>
    &nbsp;<div class="title_section_offer_fake"></div>
     <br />
     <asp:Panel ID="Panel3" runat="server">
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDV" DataSourceID="SqlDataSource1" Width="100%" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
             <Columns>
                 <%--<asp:BoundField DataField="IDV" HeaderText="IDV" SortExpression="IDV" ReadOnly="True" />--%>
                 <asp:BoundField DataField="ANO" HeaderText="ANO" SortExpression="ANO" Visible="False" />
                 <asp:BoundField DataField="PERIDO" HeaderText="PERIDO" SortExpression="PERIDO" Visible="False" />
                 <asp:BoundField DataField="NSEMANA" HeaderText="NSEMANA" SortExpression="NSEMANA" Visible="False" />
                 <asp:BoundField DataField="dia" HeaderText="dia" SortExpression="dia" Visible="False" />
                 <asp:BoundField DataField="dia1" HeaderText="DIA" SortExpression="dia1" ReadOnly="True" />
                 <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" Visible="False" />
                 <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                 <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                 <asp:BoundField DataField="CONTACTO" HeaderText="CONTACTO" SortExpression="CONTACTO" />
                 <asp:BoundField DataField="ACOMPAÑANTE" HeaderText="MOVILIDAD" SortExpression="ACOMPAÑANTE" />
                 <asp:BoundField DataField="TPVISITA" HeaderText="TPVISITA" SortExpression="TPVISITA" ></asp:BoundField>
                 <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                 <asp:BoundField DataField="LUGAR" HeaderText="LUGAR" SortExpression="LUGAR" />
                 <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" Visible="False" />
                 <asp:BoundField DataField="OBSRESULT" HeaderText="OBSRESULT" SortExpression="OBSRESULT" Visible="False" />
                 <asp:BoundField DataField="IDV" HeaderText="IDV" SortExpression="IDV" ReadOnly="True" />
                 <%--<asp:ButtonField CommandName="elimina" ShowHeader="True" Text="Eliminar" ButtonType="Image" ImageUrl="~/images/eliminarr.png" >
                <ControlStyle Height="20px" Width="20px" />
                </asp:ButtonField>
                <asp:ButtonField CommandName="edita" ShowHeader="True" Text="Mofidicar" ButtonType="Image" ImageUrl="~/images/editar1.png" >
          --%><%--<ControlStyle Height="20px" Width="20px" />--%>
                 <asp:ButtonField CommandName="elimina" ShowHeader="True" Text="Eliminar" ButtonType="Image" ImageUrl="~/images/eliminarr.png" >
                 <ControlStyle Height="20px" Width="20px" />
                 </asp:ButtonField>
                 <asp:ButtonField CommandName="edita" ShowHeader="True" Text="Mofidicar" ButtonType="Image" ImageUrl="~/images/editar2.jpg" >
                 <ControlStyle Height="20px" Width="20px" />
                 </asp:ButtonField>
             </Columns>
             <HeaderStyle BackColor="#333333" ForeColor="White" />
         </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_visitaXclientensemanaNext" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidrtc" Name="rucCliente" PropertyName="Text" Type="String" />
                </SelectParameters>
        </asp:SqlDataSource>
         

     Cantidad de registros:&nbsp;&nbsp;&nbsp; <asp:Label ID="lblcantregistros" runat="server"></asp:Label>
     </asp:Panel>

           

   

   

     <asp:Panel ID="PanelModificarDato" runat="server">

         <div class="control-group">
        <label class="control-label">DIA: </label>
        <div class="controls">
        
        <asp:TextBox ID="txtdia2" runat="server" class="span5" Style="text-transform: uppercase"  Enabled="False" ></asp:TextBox>
        &nbsp;</div>
        </div><!-- / .control-group -->


         <div class="control-group">
        <label class="control-label">CLIENTE: </label>
        <div class="controls">
        
        <asp:TextBox ID="txtcliente2" runat="server"  Style="text-transform: uppercase"  Enabled="False" Width="450px" ></asp:TextBox>
        &nbsp;</div>
        </div><!-- / .control-group -->

        
       

        <div class="control-group">
        <label class="control-label">Contacto / Empresa: <span class="required">*</span></label>
        <div class="controls">
        
        <asp:TextBox ID="txtcontacto2" runat="server" class="span5" Style="text-transform: uppercase"  ></asp:TextBox>
        &nbsp;</div>
        </div><!-- / .control-group -->
         <div class="control-group">
        <label class="control-label">Acompañante: <span class="required">*</span></label>
        <div class="controls">
        
        <asp:TextBox ID="txtacompanante2" runat="server" class="span5" Style="text-transform: uppercase"  ></asp:TextBox>
        &nbsp;</div>
        </div><!-- / .control-group -->

         
           <div class="control-group">
        <label class="control-label">Tipo Visita: <span class="required">*</span></label>
       

                <div class="controls">
        
        &nbsp;<asp:DropDownList ID="DropDownList2" runat="server">
                <asp:ListItem>TECNICA COMERCIAL</asp:ListItem>
                <asp:ListItem>COMERCIAL</asp:ListItem>
                <asp:ListItem>OFICINA</asp:ListItem>
                <asp:ListItem Value="OTROS PROCESOS">OTROS PROCESOS</asp:ListItem>
            </asp:DropDownList>
             </div>
        </div><!-- / .control-group -->
         <div class="control-group">
        <label class="control-label">Motivo: <span class="required">*</span></label>
        <div class="controls">
        
        <asp:TextBox ID="txtmotivo2" runat="server" class="span5"  Height="60px" TextMode="MultiLine" ></asp:TextBox>
        &nbsp;</div>
        </div><!-- / .control-group -->

         <div class="control-group">
        <label class="control-label">Lugar: <span class="required">*</span></label>
        <div class="controls">
        
        <asp:TextBox ID="txtlugar2" runat="server" class="span5" Style="text-transform: uppercase"  ></asp:TextBox>
        &nbsp;</div>
        </div><!-- / .control-group -->
        
          <div class="control-group">
        
        <div class="controls">
        
       
        &nbsp;<asp:Button ID="Button3" runat="server" Height="30px" OnClick="Button3_Click" Text="Retornar" Width="150px" />
            <asp:Button ID="Button4" runat="server" Height="30px" OnClick="Button4_Click" Text="Actualizar" Width="150px" />
              </div>
        </div><!-- / .control-group -->


        </asp:Panel>

   

     <br />


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        Usuario,
        <asp:LinkButton ID="LinkButtonIdUsuario" runat="server" OnClick="LinkButtonIdUsuario_Click"></asp:LinkButton>
    </p>
</asp:Content>
