<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="RegDescuentos.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.RegDescuentos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 21px;
            width: 786px;
        }
        .auto-style3 {
            height: 21px;
            width: 176px;
        }
        .auto-style4 {
            height: 21px;
            width: 972px;
        }
        .auto-style8 {
            height: 21px;
            width: 10px;
        }
        .auto-style9 {
        }
        .auto-style11 {
            width: 10px;
        }
        .auto-style12 {
            width: 786px;
        }
        .auto-style13 {
            height: 88px;
        }
        .auto-style14 {
            width: 10px;
            height: 88px;
        }
        .auto-style15 {
            width: 786px;
            height: 88px;
        }
        .auto-style16 {
            width: 600px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src="../../../js/sweetalert.min.js" type="text/javascript"></script>
    <link href="../../../css/sweetalert.css" rel="stylesheet" type="text/css" />


    <div class="container">
            <div class="row">  
      <h2>DESCUENTOS EPS&nbsp; <asp:Label ID="lblidUsuario" runat="server" Visible="False"></asp:Label>
                          <asp:Label ID="lblano" runat="server" Visible="False"></asp:Label>
                  <asp:Label ID="lblmes" runat="server" Visible="False"></asp:Label>
                          </h2>
                <ol class="breadcrumb">
 
  <li>
      <asp:LinkButton ID="lbtnRegistrarDescuento" runat="server" OnClick="lbtnRegistrarDescuento_Click">Resumen</asp:LinkButton></li>
                     <li>
      <asp:LinkButton ID="lbtnMostrarDescuentos" runat="server" OnClick="lbtnMostrarDescuentos_Click">Registrar EPS</asp:LinkButton></li>

</ol>
        
                <asp:Panel ID="pregistrar" runat="server">
             
         <table class="auto-style4">
             <tr>
                 <td class="auto-style9">AÑO</td>
                 <td class="auto-style11">:</td>
                
                 <td class="auto-style12">
                     <asp:RadioButtonList ID="rbAno" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="400px" AutoPostBack="True" OnSelectedIndexChanged="rbAno_SelectedIndexChanged">
                     </asp:RadioButtonList>
                 </td>
                
             </tr>
             <tr>
                 <td class="auto-style9">MES</td>
                 <td class="auto-style11">:</td>
               
                 <td class="auto-style12">
                     <asp:DropDownList ID="ddlMes" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceMes" DataTextField="mes" DataValueField="idmes" Width="320px" AutoPostBack="True" OnSelectedIndexChanged="ddlMes_SelectedIndexChanged">
                     </asp:DropDownList>
                 </td>
               
             </tr>
             <tr>
                 <td class="auto-style3"></td>
                 <td class="auto-style8"></td>
              
                 <td class="auto-style1"></td>
              
             </tr>
             <tr>
                 <td colspan="3">Personal habilitado:<br />

         <asp:DropDownList ID="ddlpersonal5categoria" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceeps" DataTextField="PERSONAL" DataValueField="codTrabajador" Width="500px"></asp:DropDownList>





                     <asp:SqlDataSource ID="SqlDataSourceeps" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="PlanillaPersonalEPS" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:Parameter DefaultValue="1" Name="op" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>





                 </td>
                 
             </tr>
             <tr>
                 <td class="auto-style13">IImporte Unitario EPS:<asp:TextBox ID="txtimporteEPS" placeholder="0.00"   type="number" step="0.0001" CssClass="form-control" runat="server" Width="150px"></asp:TextBox>





                 </td>
                 <td class="auto-style14">&nbsp;</td>
                
                 <td class="auto-style15">
                     Cantidad de asegurados:<asp:TextBox ID="txtNpersonas" type="number" step="0.0001" CssClass="form-control" runat="server" Width="80px"></asp:TextBox>





                 </td>
                
             </tr>
             <tr>
                 <td class="auto-style9" colspan="3">Detalle de asegurados:<asp:TextBox ID="txtdescripOtros" Style="text-transform: uppercase" placeholder="Nombre 1 - edad 1, Nombre 2 - edad 2 ... " CssClass="form-control" runat="server" Width="100%" Rows="4" TextMode="MultiLine"></asp:TextBox>





                 </td>
                
             </tr>
             <tr>
                 <td colspan="3">

                     <asp:Button ID="Button2" runat="server" Height="50px" OnClick="Button2_Click" Text="NUEVO" Width="18%" />

                     <asp:Button ID="Button1" runat="server" Text="REGISTRAR DESCUENTO" Height="50px" OnClick="Button1_Click" Width="80%" />





                 </td>
             </tr>
             <tr>
                 <td colspan="3">
                     <asp:Label ID="lblmensaje" runat="server" Font-Size="Small" ForeColor="#990000"></asp:Label>
                 </td>
             </tr>
         </table>
                <hr />
         <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM tb_ano WHERE estado=1"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSourceMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_mes
"></asp:SqlDataSource>

                </asp:Panel>
               


                <table class="auto-style16">
                    <tr>
                        <td>AÑO:
                            <asp:RadioButtonList ID="rblano10" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="400px">
                            </asp:RadioButtonList>
                        </td>
                        <td>MES:<br />
                            <asp:DropDownList ID="ddlMes10" runat="server" DataSourceID="SqlDataSourceMes" DataTextField="mes" DataValueField="idmes" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="ddlMes10_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
                        <td>
                            <br />
                            <asp:Button ID="btnfiltrar10" runat="server" Text="FILTRAR" OnClick="btnfiltrar10_Click" />
                        </td>
                    </tr>
                </table>





            Detalle de descuentos registrados:<br />
                <asp:GridView ID="GridView1" class="table table-striped table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idEPS" DataSourceID="SqlDataSourceEPSlistar" OnRowDataBound="GridView1_RowDataBound" Font-Size="X-Small" ShowFooter="True">
                    <Columns>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                        <asp:BoundField DataField="idEPS" HeaderText="COD" ReadOnly="True" SortExpression="idEPS" Visible="False" />
                        <asp:BoundField DataField="EPS" HeaderText="COD. EPS" ReadOnly="True" SortExpression="EPS" />
                        <asp:BoundField DataField="ano" HeaderText="ano" SortExpression="ano" Visible="False" />
                        <asp:BoundField DataField="mes" HeaderText="mes" SortExpression="mes" Visible="False" />
                        <asp:BoundField DataField="DESCUENTO" HeaderText="PERIODO" ReadOnly="True" SortExpression="DESCUENTO" />
                        <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" SortExpression="idUsuario" Visible="False" />
                        <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                        <asp:BoundField DataField="concepto" HeaderText="DETALLE" SortExpression="concepto" />
                        <asp:BoundField DataField="npersonas" HeaderText="N° ASEGURADOS" SortExpression="npersonas">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="importe" DataFormatString="{0:0,0.00}" HeaderText="IMP. TOTAL EPS" SortExpression="importe">
                        <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="MONEDA" HeaderText="MONEDA" ReadOnly="True" SortExpression="MONEDA" />
                        <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado" Visible="False">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:BoundField>
                        <asp:BoundField DataField="sistemaregpor" HeaderText="sistemaregpor" SortExpression="sistemaregpor" Visible="False" />
                        <asp:BoundField DataField="sistemaFecha" HeaderText="sistemaFecha" SortExpression="sistemaFecha" Visible="False" />
                        <asp:ImageField DataImageUrlField="Estado2" ReadOnly="True"  DataImageUrlFormatString="~/images/Z{0}.png">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
                    </Columns>
                </asp:GridView><small>
                Cantidad de registros:&nbsp;
                <asp:Label ID="lblnregistros" runat="server"></asp:Label>
&nbsp;&nbsp; /&nbsp;&nbsp; 
                Estado: Activo =
                <asp:Image ID="Image2" runat="server" Height="10px" ImageUrl="~/images/Z1.png" Width="10px" />
&nbsp;, Anulado = <asp:Image ID="Image3" runat="server" Height="10px" ImageUrl="~/images/Z4.png" Width="10px" />
                    </small>
&nbsp;<asp:SqlDataSource ID="SqlDataSourceEPSlistar" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" DeleteCommand="DELETE [rrhh].[DesctoEPS]  WHERE idEPS=@idEPS" SelectCommand="Planilla_EPSlistar" SelectCommandType="StoredProcedure" UpdateCommand="UPDATE [rrhh].[DesctoEPS]  SET concepto=@concepto, npersonas=@npersonas, importe=@importe WHERE idEPS=@idEPS">
                    <DeleteParameters>
                        <asp:Parameter Name="idEPS" />
                    </DeleteParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="rblano10" Name="ano" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="ddlMes10" Name="mes" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="concepto" />
                        <asp:Parameter Name="npersonas" />
                        <asp:Parameter Name="importe" />
                        <asp:Parameter Name="idEPS" />
                    </UpdateParameters>
                </asp:SqlDataSource>

         <br />

        </div>
    
    </div>  
</asp:Content>
