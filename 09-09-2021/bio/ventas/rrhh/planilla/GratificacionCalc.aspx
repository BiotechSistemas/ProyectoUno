<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="GratificacionCalc.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.GratificacionCalc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
     <div class="container-fluid">
         <h2>GRATIFICACION - CALCULO
             <asp:Label ID="lbltitulo" runat="server"></asp:Label>
         </h2>
&nbsp;<asp:Panel ID="payuda" runat="server" Visible="False">
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
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Value="1">PRIMERO (ENE-JUN)</asp:ListItem>
                    <asp:ListItem Value="2">SEGUNDO (JUL-DIC)</asp:ListItem>
                </asp:RadioButtonList>
                Periodo:</td>
            <td>
                <asp:Button ID="btngenerar" runat="server" OnClick="btngenerar_Click" Text="GENERAR" />
            </td>
        </tr>
        </table>


                <asp:Label ID="lblmensajeno" runat="server" Font-Size="Small" ForeColor="#CC0000"></asp:Label>
                <asp:Label ID="lblmensajesi" runat="server" Font-Size="Small" ForeColor="#006600"></asp:Label>
            <br />
         


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select distinct ano from rrhh.PlanillaPagos order by ano desc
"></asp:SqlDataSource>

    <div class="table-responsive">
    <asp:GridView ID="gvCalGratificacion" class="table table-striped w-auto" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" Font-Size="Small" DataKeyNames="idUsuario,P1,P2,P3,P4,P5,P6,POBLACION,ASIGFAM,BONIFICACIONPORCENT,IMPBASE" OnSelectedIndexChanged="gvCalGratificacion_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="idUsuario" HeaderText="COD PERSONAL" SortExpression="idUsuario" />
            <asp:BoundField DataField="P1" HeaderText="1er MES" ReadOnly="True" SortExpression="P1" DataFormatString="{0:#,0.00}" >
            <ItemStyle BackColor="#D2FFD2" HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="P2" HeaderText="2do MES" ReadOnly="True" SortExpression="P2" DataFormatString="{0:#,0.00}" >
            <ItemStyle BackColor="#D2FFD2" HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="P3" HeaderText="3er MES" ReadOnly="True" SortExpression="P3" DataFormatString="{0:#,0.00}" >
            <ItemStyle BackColor="#D2FFD2" HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="P4" HeaderText="4to MES" ReadOnly="True" SortExpression="P4" DataFormatString="{0:#,0.00}" >
            <ItemStyle BackColor="#D2FFD2" HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="P5" HeaderText="5to MES" ReadOnly="True" SortExpression="P5" DataFormatString="{0:#,0.00}" >
            <ItemStyle BackColor="#D2FFD2" HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="P6" HeaderText="6to MES" ReadOnly="True" SortExpression="P6" DataFormatString="{0:#,0.0000}" >
            <ItemStyle BackColor="#D2FFD2" HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="TTREMACUM" HeaderText="REM ACUM" ReadOnly="True" SortExpression="TTREMACUM" DataFormatString="{0:#,0.00}" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="POBLACION" HeaderText="N " ReadOnly="True" SortExpression="POBLACION" >
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="REMPROMEDIO" HeaderText="REM. PROM." ReadOnly="True" SortExpression="REMPROMEDIO" DataFormatString="{0:#,0.0000}" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="ASIGFAM" HeaderText="ASIG. FAM." ReadOnly="True" SortExpression="ASIGFAM" DataFormatString="{0:#,0.00}" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="REMBRUTA" HeaderText="REM. BRUTA" ReadOnly="True" SortExpression="REMBRUTA" DataFormatString="{0:#,0.0000}" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="BONIFICACIONPORCENT" HeaderText="BONIF. %" ReadOnly="True" SortExpression="BONIFICACIONPORCENT" DataFormatString="{0:#,0.00}" >
            <ItemStyle ForeColor="#003399" HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="VALBONO" HeaderText="IMP. BONO" ReadOnly="True" SortExpression="VALBONO" DataFormatString="{0:#,0.00}" >
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="TOTALPAGAR" HeaderText="TOTAL PAGAR" ReadOnly="True" SortExpression="TOTALPAGAR" DataFormatString="{0:#,0.0000}" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
             <asp:BoundField DataField="IMPBASE" HeaderText="IMP. BASE" ReadOnly="True" SortExpression="IMPBASE" DataFormatString="{0:#,0.00}" >
            <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
             <asp:ImageField DataImageUrlField="EstadoCese" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ACTIVO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
        </Columns>
        <EmptyDataTemplate>
            * No se encontro ningún registro...
        </EmptyDataTemplate>
        <HeaderStyle BackColor="#E4E4E4" />
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.GratificacionCal" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
            <asp:ControlParameter ControlID="lblPeriodo" Name="idGrupo" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
      
        *
        <asp:Label ID="lblCantidad" runat="server" Text="0"></asp:Label>
        , registros encontrados.</div><asp:Button ID="btnfinalizar" runat="server" Text="REGISTRAR BOLETAS - PAGO GRATIFICACIÓN" OnClick="btnfinalizar_Click" Width="100%" />
         <br />
         <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
</asp:Content>
