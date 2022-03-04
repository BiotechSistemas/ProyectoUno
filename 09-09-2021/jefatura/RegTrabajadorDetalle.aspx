<%@ Page Title="" Language="C#" MasterPageFile="~/jefatura/clientes.Master" AutoEventWireup="true" CodeBehind="RegTrabajadorDetalle.aspx.cs" Inherits="biotech.jefatura.RegTrabajadorDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

   

        .marco1 {
        border-radius: 0px 0px 25px 25px;
        -moz-border-radius: 0px 0px 25px 25px;
        -webkit-border-radius: 0px 0px 25px 25px;
          border: 2px solid  rgb(131, 186, 63);
            width: 450px;
           
        }


         .marco {
             color:rgb(250, 250, 250);
           border-radius: 25px 25px 0px 0px;
-moz-border-radius: 25px 25px 0px 0px;
-webkit-border-radius: 25px 25px 0px 0px;
          border: 2px solid  rgb(131, 186, 63);
            width: 450px;  
             background:   rgb(131, 186, 63);
   
        }


        button:hover {
 background: rgba(0,0,0,0);
 color: #3a7999;
 box-shadow: inset 0 0 0 3px #3a7999;
}



        .auto-style3 {
            width: 400px;
        }
        .auto-style8 {
        }
        .auto-style13 {
        }
        .auto-style14 {
            width: 233px;
        }
        .auto-style15 {}
        .auto-style16 {
            height: 59px;
        }
        .auto-style17 {
            width: 233px;
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <center>
        <div class="marco"><h2><strong>ACTUALIZAR LINEA VENTAS</strong></h2></div>
    <div class="marco1">
    <asp:Panel ID="Panel1" runat="server" CssClass="auto-style15" Width="439px" >
        <br />
        <table align="center" class="auto-style3">
            <tr>
                <td class="auto-style16">Empresa:</td>
                <td class="auto-style17">
                    <asp:DropDownList ID="ddlGrupo" runat="server" Width="100%" AutoPostBack="True" OnSelectedIndexChanged="ddlGrupo_SelectedIndexChanged" DataSourceID="SqlDataSource2" DataTextField="Descripcion" DataValueField="idplanilla">
                        <asp:ListItem Value="PLANILLA BIOTECH">Categoria A</asp:ListItem>
                        <asp:ListItem Value="PLANILLA EIRL">Categoria B</asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEmpresas]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">
                    &nbsp;</td>
            </tr>
            
            <tr>
                <td class="auto-style13">Personal:</td>
                <td class="auto-style14">
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="EMPLEADO" DataValueField="COD" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="100%">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT codTrabajador COD , CONCAT(apellidos,', ',nombres) EMPLEADO FROM [tb_PlanillaTrabajadores] WHERE GRUPO = @PARAM">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlGrupo" Name="PARAM" PropertyName="SelectedValue" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style13" colspan="2">
                    <asp:Label ID="lblmensaje" runat="server" style="font-size: x-small; color: #800000" Visible="False"></asp:Label>
                    <asp:Label ID="lblcodtrabajador" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Sueldo Base:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtbase" runat="server" Width="100%" type="number" step="0.01"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Bono por Cumplimiento:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtcumplimiento" runat="server" Width="100%" type="number" step="0.01"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8" colspan="2"><strong>META EN VENTAS</strong></td>
            </tr>
            <tr>
                <td class="auto-style13">Linea Nutrición:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtmetaNutricion" runat="server" Width="100%" type="number" step="0.01"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">Linea Quimicos:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtmetaQuimico" runat="server" Width="100%" type="number" step="0.01"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style13">Por nivelar:</td>
                <td class="auto-style14">
                    <asp:TextBox ID="txtporNivelar" runat="server" Width="100%" type="number" step="0.01"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">&nbsp;</td>
                <td class="auto-style14"></td>
            </tr>
            <tr>
                <td class="auto-style13">
                    <asp:Button  ID="ButtonNuevo" runat="server" Text="NUEVO" Height="40px" Width="150px" OnClick="ButtonNuevo_Click" />
                </td>
                <td class="auto-style14">
                    <asp:Button ID="ButtonRegistrar" runat="server" Text="REGISTRAR" Height="40px" OnClick="ButtonRegistrar_Click" Width="100%" />
                </td>
            </tr>
        </table>
        <br />
    </asp:Panel>

        </div>
        </center>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
