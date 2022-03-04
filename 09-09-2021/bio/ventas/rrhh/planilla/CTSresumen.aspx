<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="CTSresumen.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.CTSresumen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
          .auto-style1 {
            width: 700px;
        }
          </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
        .auto-style2 {
            width: 600px;
        }
    </style>
        <script src="../../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../../css/sweetalert.css" rel="stylesheet" type="text/css" />


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
         <h2>
             <asp:Label ID="lbltitulo" runat="server" style="font-size: x-large"></asp:Label>
             <asp:Label ID="lblidUsuario" runat="server" Visible="False"></asp:Label>
         </h2>
         <asp:Panel ID="payuda" runat="server" Visible="False">
        <asp:Label ID="lblano" runat="server"></asp:Label>
        &nbsp;-
        <asp:Label ID="lblPeriodo" runat="server"></asp:Label>
    </asp:Panel>
           <table class="auto-style1">
        <tr>
            <td>
                <asp:DropDownList ID="ddlAno" runat="server" DataSourceID="SqlDataSource1" DataTextField="ano" DataValueField="ano" Width="150px">
                </asp:DropDownList>
                <br />
                Año:</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="400px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Value="1">PRIMERO (NOV-ABR)</asp:ListItem>
                    <asp:ListItem Value="2">SEGUNDO (MAY-OCT)</asp:ListItem>
                </asp:RadioButtonList>
                Periodo:</td>
            <td>
                <br />
            </td>
        </tr>
        <tr>
            <td>
                <asp:LinkButton ID="lbtnAdministrar" runat="server" OnClick="lbtnAdministrar_Click">Administrar</asp:LinkButton>
            </td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        </table>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select distinct ano from rrhh.PlanillaPagos order by ano desc
"></asp:SqlDataSource>



         <asp:Panel ID="pAdministrar" runat="server">
             <asp:Panel ID="pinteres" runat="server">
                 <strong>ADMINISTRAR&nbsp; CUENTA CTS:</strong>&nbsp; COD
                 <asp:Label ID="lblidSeleccts" runat="server"></asp:Label>
                 &nbsp;<asp:Label ID="lblnombreselect" runat="server"></asp:Label>
                 <br />
                 <table class="auto-style2">
                     <tr>
                         <td>
                             <asp:TextBox ID="txtneto" runat="server" Enabled="False"></asp:TextBox>
                             <br />
                             Rem. neta:</td>
                         <td>
                             <asp:TextBox ID="txtdiasinteres" runat="server"></asp:TextBox>
                             <br />
                             Dias interes:</td>
                         <td>
                             <asp:TextBox ID="txtimporteinteres" runat="server"></asp:TextBox>
                             <br />
                             Imp. total interes:</td>
                         <td>
                             <asp:Button ID="btnRegistrarInteres" runat="server" OnClick="btnRegistrarInteres_Click" Text="REGISTRAR INTERES" />
                         </td>
                     </tr>
                 </table>
             </asp:Panel>
             <asp:GridView ID="GridView2" runat="server" class="table-striped w-auto" DataSourceID="SqlDataSourcePLANILLArESUMEN" AutoGenerateColumns="False" DataKeyNames="id,RemNeta,diasinteres,ImpInteres,APELLIDOS" Font-Size="Small" Width="100%" OnRowCommand="GridView2_RowCommand" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                 <Columns>
                     <asp:CommandField ShowSelectButton="True" SelectText="Ver" />
                     <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" />
                     <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                     <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                     <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="APELLIDOS" HeaderText="PERSONAL" SortExpression="APELLIDOS" />
                 
                     <asp:BoundField DataField="RemNeta" HeaderText="REM. NETA" SortExpression="RemNeta" DataFormatString="{0:#,0.00}" >
                     <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="diasinteres" HeaderText="DIAS INTERES" ReadOnly="True" SortExpression="diasinteres">
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="ImpInteres" HeaderText="IMPORTE INTERES" ReadOnly="True" SortExpression="ImpInteres">
                     <HeaderStyle Width="100px" />
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="TT" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE CTS" ReadOnly="True" SortExpression="TT">
                     <HeaderStyle Width="100px" />
                     <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="BANCO" HeaderText="CTS BANCO" SortExpression="BANCO" >
                     <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="CTScuenta" HeaderText="CTS CUENTA" SortExpression="CTScuenta" />
                     <asp:BoundField DataField="CTSCCI" HeaderText="CTS CCI" SortExpression="CTSCCI" Visible="False" />
                      <asp:BoundField DataField="ESTADOPAGADO" HeaderText="ESTADO DE PAGO" SortExpression="ESTADOPAGADO" >
                  <HeaderStyle Width="80px" />
                 <ItemStyle BackColor="#F3F3F3" HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                  <asp:BoundField DataField="cese" HeaderText="ACTIVO" SortExpression="cese" >
                 <ItemStyle BackColor="#F0F0F0" HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                     <asp:ButtonField CommandName="administrar" HeaderText="ADMINISTRAR" ShowHeader="True" Text="Administrar" ButtonType="Button" >
                     <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                     <ControlStyle CssClass="btn btn-default btn-sm"/>
                     </asp:ButtonField>
                     <asp:ButtonField CommandName="confirmar" HeaderText="CONFIRMAR PAGO" ShowHeader="True" Text="confirmar" ButtonType="Button" >
                     <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                     <ControlStyle CssClass="btn btn-success btn-sm"/>
                     </asp:ButtonField>

                      <asp:ButtonField CommandName="porpagar" HeaderText="POR CONFIRMAR" ShowHeader="True" Text="por confirmar" ButtonType="Button" >
                     <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="50px" />
                     <ControlStyle CssClass="btn btn-warning btn-sm"/>
                     </asp:ButtonField>
                 </Columns>
                 <HeaderStyle BackColor="#E4E4E4" />
             </asp:GridView>
         </asp:Panel>



         <asp:GridView ID="GridView1" runat="server" class="table-striped w-auto" DataSourceID="SqlDataSourcePLANILLArESUMEN" AutoGenerateColumns="False" DataKeyNames="id" Font-Size="Small" Width="100%" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
             <Columns>
              <%--   <asp:ImageField DataImageUrlField="ESTADOPAGADO" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ESTADO DE PAGO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="100px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>

                  <asp:ImageField DataImageUrlField="cese" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ACTIVO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>--%>

                 <asp:CommandField ShowSelectButton="True" SelectText="Ver" />
                 <asp:BoundField DataField="id" HeaderText="COD" ReadOnly="True" SortExpression="id" />
                 <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" />
                 <asp:BoundField DataField="idPersonal" HeaderText="idPersonal" SortExpression="idPersonal" Visible="False" />
                 <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                  <asp:BoundField DataField="APELLIDOS" HeaderText="APELLIDOS" SortExpression="APELLIDOS" />
     
                 <asp:BoundField DataField="RemNeta" HeaderText="REM. NETA" SortExpression="RemNeta" DataFormatString="{0:#,0.00}" >
                 <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>

                  <asp:BoundField DataField="diasinteres" HeaderText="DIAS INTERES" ReadOnly="True" SortExpression="diasinteres" >
                  <HeaderStyle Width="70px" />
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                  <asp:BoundField DataField="ImpInteres" HeaderText="IMPORTE INTERES" ReadOnly="True" SortExpression="ImpInteres" >
                 <HeaderStyle Width="100px" />
                 <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="TT" HeaderText="IMPORTE CTS" ReadOnly="True" SortExpression="TT" DataFormatString="{0:0,0.00}" >
                 <HeaderStyle Width="100px" />
                 <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="BANCO" HeaderText="CTS BANCO" SortExpression="BANCO" >
                 <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                 <asp:BoundField DataField="CTScuenta" HeaderText="CTS CUENTA" SortExpression="CTScuenta" />
                 <asp:BoundField DataField="CTSCCI" HeaderText="CTS CCI" SortExpression="CTSCCI" Visible="False" />

                        <asp:BoundField DataField="ESTADOPAGADO" HeaderText="ESTADO DE PAGO" SortExpression="ESTADOPAGADO" >
                  <HeaderStyle Width="80px" />
                 <ItemStyle BackColor="#F3F3F3" HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
                  <asp:BoundField DataField="cese" HeaderText="ACTIVO" SortExpression="cese" >
                 <ItemStyle BackColor="#F0F0F0" HorizontalAlign="Center" VerticalAlign="Middle" />
                 </asp:BoundField>
             </Columns>
             <HeaderStyle BackColor="#E4E4E4" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSourcePLANILLArESUMEN" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.CTSPlanillaResumen" SelectCommandType="StoredProcedure">
             <SelectParameters>
                 <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                 <asp:ControlParameter ControlID="lblPeriodo" Name="periodo" PropertyName="Text" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>
         *<asp:Label ID="lblitems2" runat="server"></asp:Label>
&nbsp;<strong __designer:mapid="c2c">, REM. GENERAL:
         <asp:Label ID="lblimpott2" runat="server" Text="0.00"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="iBtnExcel" runat="server" ImageUrl="~/images/excel.png" OnClick="iBtnExcel_Click" Visible="False" Width="20px" />
             <br />
             </strong>
         <asp:Panel ID="Panel1" runat="server">
             <br />
             <asp:Label ID="Label1" runat="server" style="font-size: large; font-weight: 700" Text="DISTRIBUCIÓN BANCARIA:"></asp:Label>
             :<br />
             <asp:GridView ID="gvbancos" runat="server" DataSourceID="SqlDataSource2banco" AutoGenerateColumns="False" Width="400px" OnRowDataBound="gvbancos_RowDataBound" ShowFooter="True">
                 <Columns>
                     <asp:BoundField DataField="BANCO" HeaderText="BANCO" SortExpression="BANCO" />
                     <asp:BoundField DataField="IMPORTETT" DataFormatString="{0:#,0.00}" HeaderText="IMPORTE TOTAL" ReadOnly="True" SortExpression="IMPORTETT">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                       <asp:BoundField DataField="INTERES" DataFormatString="{0:#,0.00}" HeaderText="TOTAL INTERES" ReadOnly="True" SortExpression="INTERES">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                       <asp:BoundField DataField="TOTAL" DataFormatString="{0:#,0.00}" HeaderText="TOTAL GENERAL" ReadOnly="True" SortExpression="TOTAL">
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                 </Columns>
                 <EmptyDataTemplate>
                     No indica....
                 </EmptyDataTemplate>
                 <HeaderStyle BackColor="#E4E4E4" />
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSource2banco" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="RRHH.CTSPlanillaBanco" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblPeriodo" Name="periodo" PropertyName="Text" Type="Int32" />
                 </SelectParameters>
             </asp:SqlDataSource>
         </asp:Panel>



         </div>
</asp:Content>
