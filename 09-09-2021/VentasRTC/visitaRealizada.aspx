<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="visitaRealizada.aspx.cs" Inherits="biotech.VentasRTC.visitaRealizada" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    Confirmar Visita
    <asp:Label ID="lblDescripsemanaActual" runat="server"></asp:Label>
&nbsp;
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click">Registrar Seman Entrante</asp:LinkButton>
     &nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Confirmar Visita</asp:LinkButton>
      &nbsp;<br />
    <br />

    <asp:Panel ID="Panel1" runat="server">
        <span class="title_section_offer">Cuadro de visitas a realizar:</span>
       
        
        &nbsp;<div class="title_section_offer_fake"></div>


        

        <br />


        

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IDV" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowDataBound="GridView1_RowDataBound" OnRowCommand="GridView1_RowCommand">
            <Columns>
                <%--<asp:BoundField DataField="IDV" HeaderText="IDV" ReadOnly="True" SortExpression="IDV" />--%>
                <%--<asp:ButtonField CommandName="elimina" HeaderText="Elim" ShowHeader="True" Text="Eliminar" />
                <asp:ButtonField CommandName="edita" HeaderText="Modificar" ShowHeader="True" Text="Mofidicar" />--%><%--<asp:BoundField HeaderText="Identificador" DataField="Identificador" />--%>
                <asp:BoundField DataField="ANO" HeaderText="ANO" SortExpression="ANO" Visible="False" />
                <asp:BoundField DataField="PERIDO" HeaderText="PERIDO" SortExpression="PERIDO" Visible="False" />
                <asp:BoundField DataField="NSEMANA" HeaderText="NSEMANA" SortExpression="NSEMANA" Visible="False" />
                <asp:BoundField DataField="NDIA" HeaderText="NDIA" SortExpression="NDIA" Visible="False" />
                <asp:BoundField DataField="DIA" HeaderText="DIA" ReadOnly="True" SortExpression="DIA" />
                <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" Visible="False" />
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                <asp:BoundField DataField="CONTACTO" HeaderText="CONTACTO" SortExpression="CONTACTO" />
                <asp:BoundField DataField="ACOMPAÑANTE" HeaderText="MOVILIDAD" SortExpression="ACOMPAÑANTE" />
                <asp:BoundField DataField="TPVISITA" HeaderText="TPVISITA" SortExpression="TPVISITA" />
                <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                <asp:BoundField DataField="LUGAR" HeaderText="FUNDO" SortExpression="LUGAR" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                <asp:BoundField DataField="OBSRESULTADO" HeaderText="RESULTADO" SortExpression="OBSRESULTADO" />
                <asp:BoundField DataField="IDV" HeaderText="COD" ReadOnly="True" SortExpression="IDV" />

                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/editar1.png" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                </asp:CommandField>


            </Columns>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_visitaXclientensemana" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidRTC" Name="idRTC" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IDV" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="100%">
            <Columns>
                <asp:BoundField DataField="IDV" HeaderText="COD" ReadOnly="True" SortExpression="IDV" />
                <asp:BoundField DataField="ANO" HeaderText="ANO" SortExpression="ANO" Visible="False" />
                <asp:BoundField DataField="PERIDO" HeaderText="PERIDO" SortExpression="PERIDO" Visible="False" />
                <asp:BoundField DataField="NSEMANA" HeaderText="NSEMANA" SortExpression="NSEMANA" Visible="False" />
                <asp:BoundField DataField="DIA" HeaderText="DIA" ReadOnly="True" SortExpression="DIA" />
                <asp:BoundField DataField="RTC" HeaderText="RTC" SortExpression="RTC" Visible="False" />
                <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" Visible="False" />
                <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZON SOCIAL" SortExpression="RAZONSOCIAL" />
                <asp:BoundField DataField="CONTACTO" HeaderText="CONTACTO" SortExpression="CONTACTO" />
                <asp:BoundField DataField="ACOMPAÑANTE" HeaderText="MOVILIDAD" SortExpression="ACOMPAÑANTE" />
                <asp:BoundField DataField="TPVISITA" HeaderText="TP. VISITA" SortExpression="TPVISITA" />
                <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" />
                <asp:BoundField DataField="LUGAR" HeaderText="FUNDO" SortExpression="LUGAR" />
                <asp:BoundField DataField="ESTADO" HeaderText="ESTADO" SortExpression="ESTADO" />
                <asp:BoundField DataField="OBSTRESULT" HeaderText="OBSTRESULT" SortExpression="OBSTRESULT" Visible="False" />
            </Columns>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_visitaXclientensemanaID" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="idvISITA" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Label ID="lblsemanaActual" runat="server" Visible="False"></asp:Label>
        <br />
        Cantidad de registros:&nbsp;&nbsp;
        <asp:Label ID="lbltotalvisitas" runat="server"></asp:Label>
        &nbsp;&nbsp; |&nbsp;&nbsp; Visitas realizadas:&nbsp;&nbsp;
        <asp:Label ID="lblvisitassi" runat="server"></asp:Label>
        <span class="btn_news">&nbsp; </span><span class="auto-style1">&nbsp;&nbsp; |&nbsp;&nbsp;&nbsp;&nbsp; Visitas canceladas:&nbsp;&nbsp;
        <asp:Label ID="lblvisicanceladas" runat="server"></asp:Label>
        &nbsp;&nbsp; |&nbsp; </span><span class="btn_news">&nbsp;&nbsp; Visitas sin realizar</span>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblvisitasno" runat="server"></asp:Label>
        <br />
        <br />
        <br />
    </asp:Panel>

    <asp:Panel ID="Panelprincipal" runat="server">
        <span class="title_section_offer">Resultado de visita seleccionada:</span>
       
        <asp:Label ID="lblidRTC" runat="server" Visible="False">PRUEB</asp:Label>
        <asp:Label ID="lblcodigoVisita" runat="server" Visible="False"></asp:Label>
        <asp:Label class="required" ID="lblmensaje" runat="server"></asp:Label>
        &nbsp;<div class="title_section_offer_fake"></div>


    <div class="row">
    <div class="offset2">
    
         <div class="control-group">
    <label class="control-label">Realizó visita:<span class="required">*</span></label>
    <div class="controls">
        
        <label class="radio inline">
        <asp:RadioButtonList ID="rbrealizVisita" runat="server"  RepeatDirection="Horizontal" Width="250px">
            <asp:ListItem Value="1">EJECUTADO</asp:ListItem>
            <asp:ListItem Value="2">CANCELADO</asp:ListItem>
        </asp:RadioButtonList>
        </label>
    </div>
    </div><!-- / .control-group -->

    <div class="control-group">
    <label class="control-label">Resultado Obtenido:<span class="required">*</span></label>
    <div class="controls">
        
        <asp:TextBox ID="txtresultado" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Ingresar resultado obtenido ó asunto"  Height="60px" TextMode="MultiLine"></asp:TextBox>
    </div>
    </div><!-- / .control-group -->

     <div class="control-group">
    
    <div class="controls">
        <asp:Button ID="Button1"  runat="server" Text="RETORNAR" Height="40px" OnClick="Button1_Click" Width="160px" /> <asp:Button ID="Button2" class="btn" runat="server" Text="REGISTRAR" OnClick="Button2_Click" />
        
         
        </div>
    </div><!-- / .control-group -->
          
    </DIV>
</DIV>
        </asp:Panel>
 

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
        Usuario,
        <asp:LinkButton ID="LinkButtonIdUsuario" runat="server" OnClick="LinkButtonIdUsuario_Click"></asp:LinkButton>
    </p>
</asp:Content>
