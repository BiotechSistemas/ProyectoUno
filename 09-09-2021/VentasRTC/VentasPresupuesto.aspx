<%@ Page Title="" Language="C#" MasterPageFile="~/VentasRTC/rtc.Master" AutoEventWireup="true" CodeBehind="VentasPresupuesto.aspx.cs" Inherits="biotech.VentasRTC.VentasPresupuesto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
   table tr {
  text-align: right;
}
    </style>
    <style type="text/css">
        
        .auto-style100 {
           color:#c1c1c1;
        }
        .negro {
           /*color:#c1c1c1;*/
           font-weight: bold;
        }

    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" runat="server">
    RESUMEN VENTAS
    <asp:Label ID="lblzonaica" runat="server"></asp:Label>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <ol class="breadcrumb">
        <asp:LinkButton ID="lbPrincipal" runat="server" OnClick="lbPrincipal_Click">Principal (Zonal) </asp:LinkButton>
        <asp:LinkButton ID="lbPresupuesto" runat="server" OnClick="lbPresupuesto_Click">/  Presupuestal</asp:LinkButton>
        <asp:LinkButton ID="lbVentPersonales" runat="server" OnClick="lbVentPersonales_Click" Visible="False">/  Independiente</asp:LinkButton>
        
        <asp:Label ID="lblusuario" runat="server" Visible="False"></asp:Label>
</ol>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <asp:Panel ID="PanelEstimado" runat="server">
    <div class="form-group row">
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            PRESUPUESTO AL:
            <asp:TextBox ID="txtporcent" runat="server" Width="40px">20</asp:TextBox>
            %<asp:LinkButton ID="lbEstimProcent" runat="server" CssClass="btn btn-default" OnClick="lbEstimProcent_Click">CALCULAR</asp:LinkButton>
        </asp:Panel>
        <div class="table-responsive">
       <table class="table table-bordered table-hover table-sm">
            <tr  bgcolor="#e2e3e4">
                <td >ZONA:
                    
                    </td>
                <td >ENE</td>
                <td >FEB</td>
                <td >MAR</td>
                <td >ABR</td>
                <td >MAY</td>
                <td >JUN</td>
                <td >JUL</td>
                <td >AGO</td>
                <td >SET</td>
                <td >OCT</td>
                <td >NOV</td>
                <td >DIC</td>
                <td >TOTAL</td>
            </tr>
            <tr>
                <td bgcolor="#e2e3e4"></td>
                <td class="auto-style100">
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="Label2" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="Label3" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="Label4" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="Label5" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="Label6" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="Label7" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="Label8" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="Label9" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="Label10" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="Label11" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="Label12" runat="server" ></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="LabelTotallb" runat="server"></asp:Label>
                    %</td>
            </tr>
           <asp:Panel ID="Panel2017" runat="server" Visible="False">
            <tr>
                <td bgcolor="#e2e3e4">
                    <asp:Label ID="lblzona1" runat="server" Visible="False"></asp:Label>
                    VENTA <asp:Label ID="lblano" runat="server" Text="2017"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje1" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje2" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje3" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje4" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje5" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje6" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje7" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje8" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje9" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje10" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje11" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEje12" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblEjeTT" runat="server"></asp:Label>
                </td>
            </tr>
           </asp:Panel>
            <tr>
                <td bgcolor="#e2e3e4">
                    <asp:Label ID="lblzonaproyectado" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="lblanoNext" runat="server" Visible="False"></asp:Label>
                    PRESUPUESTO</td>
                <td class="text-right">
                    <asp:Label ID="lblpro1" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro2" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro3" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro4" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro5" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro6" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro7" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro8" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro9" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro10" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro11" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblpro12" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblproTT" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#e2e3e4">
                    <asp:Label ID="lblzonaActual" runat="server" Visible="False"></asp:Label>
                    VENTA <asp:Label ID="lblanoactual" runat="server"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblAct1" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblAct2" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblAct3" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblAct4" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblAct5" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblAct6" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblAct7" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblAct8" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblAct9" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblAct10" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblAct11" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblAct12" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
                <td class="negro">
                    <asp:Label ID="lblActTT" runat="server" CssClass="auto-style5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#e2e3e4">CUMPLIMIENTO</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCump1" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCump2" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCump3" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCump4" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCump5" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCump6" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCump7" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCump8" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCump9" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCump10" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCump11" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCump12" runat="server"></asp:Label>
                    %</td>
                <td class="auto-style100">
                    <asp:Label ID="lblCumpTT" runat="server"></asp:Label>
                    %</td>
            </tr>
            <tr>
                <td bgcolor="#e2e3e4">BRECHA</td>
                <td class="text-right">
                    <asp:Label ID="lblBre1" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre2" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre3" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre4" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre5" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre6" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre7" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre8" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre9" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre10" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre11" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBre12" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreTT" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td bgcolor="#e2e3e4">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
                <td class="text-right">&nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#e2e3e4">BRECHA ACUM.</td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum1" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum2" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum3" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum4" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum5" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum6" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum7" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum8" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum9" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum10" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum11" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcum12" runat="server"></asp:Label>
                </td>
                <td class="text-right">
                    <asp:Label ID="lblBreAcumTT" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
            </div>
    </div>
</asp:Panel>
</asp:Content>
