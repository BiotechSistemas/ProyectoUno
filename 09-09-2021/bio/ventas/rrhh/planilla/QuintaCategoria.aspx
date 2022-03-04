<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="QuintaCategoria.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.QuintaCategoria" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            width: 600px;
        }
    </style>

    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
            <div class="row">  
      <h2>IMPUESTO A LA RENTA<asp:Label ID="lblidUsuario" runat="server" Visible="False"></asp:Label>
                          <asp:Label ID="lblano" runat="server" Visible="False"></asp:Label>
                  <asp:Label ID="lblmes" runat="server" Visible="False"></asp:Label>
                          </h2>

         <hr />

                <asp:Panel ID="PanelResumen" runat="server">
                    <asp:GridView ID="GridView1" runat="server" class="table table-condensed table-bordered table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSource5taresumen" Width="100%" OnRowDataBound="GridView1_RowDataBound" ShowFooter="True">
                        <Columns>
                            <asp:BoundField DataField="idUsuario" HeaderText="COD" SortExpression="idUsuario" >
                            <ItemStyle Font-Size="X-Small" />
                            </asp:BoundField>
                            <asp:BoundField DataField="USUARIO" HeaderText="PERSONAL" ReadOnly="True" SortExpression="USUARIO" >
                            <ItemStyle Font-Size="X-Small" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ENERO" DataFormatString="{0:0,0.00}" HeaderText="ENE" ReadOnly="True" SortExpression="ENERO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="FEBRERO" DataFormatString="{0:0,0.00}" HeaderText="FEB" ReadOnly="True" SortExpression="FEBRERO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MARZO" DataFormatString="{0:0,0.00}" HeaderText="MAR" ReadOnly="True" SortExpression="MARZO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="ABRIL" DataFormatString="{0:0,0.00}" HeaderText="ABR" ReadOnly="True" SortExpression="ABRIL">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MAYO" DataFormatString="{0:0,0.00}" HeaderText="MAY" ReadOnly="True" SortExpression="MAYO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="JUNIO" DataFormatString="{0:0,0.00}" HeaderText="JUN" ReadOnly="True" SortExpression="JUNIO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="JULIO" DataFormatString="{0:0,0.00}" HeaderText="JUL" ReadOnly="True" SortExpression="JULIO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="AGOSTO" DataFormatString="{0:0,0.00}" HeaderText="AGO" ReadOnly="True" SortExpression="AGOSTO">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="SEPTIEMBRE" DataFormatString="{0:0,0.00}" HeaderText="SEP" ReadOnly="True" SortExpression="SEPTIEMBRE">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="OCTUBRE" DataFormatString="{0:0,0.00}" HeaderText="OCT" ReadOnly="True" SortExpression="OCTUBRE">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="NOVIEMBRE" DataFormatString="{0:0,0.00}" HeaderText="NOV" ReadOnly="True" SortExpression="NOVIEMBRE">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="DICIEMBRE" DataFormatString="{0:0,0.00}" HeaderText="DIC" ReadOnly="True" SortExpression="DICIEMBRE">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Column1" DataFormatString="{0:0,0.00}" HeaderText="TOTAL IMPUESTO RENTA" ReadOnly="True" SortExpression="Column1">
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                            </asp:BoundField>
                        </Columns>
                        <FooterStyle BackColor="#EFEFEF" Font-Size="XX-Small" />
                        <HeaderStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource5taresumen" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Planilla_Resumen5ta" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </asp:Panel>

         <table class="auto-style1">
             <tr>
                 <td>AÑO</td>
                 <td>:</td>
                
                 <td>
                     <asp:RadioButtonList ID="rbAno" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="400px" AutoPostBack="True" OnSelectedIndexChanged="rbAno_SelectedIndexChanged">
                     </asp:RadioButtonList>
                 </td>
                
                 <td>
                     &nbsp;</td>
                
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>MES</td>
                 <td>:</td>
               
                 <td>
                     <asp:DropDownList ID="ddlMes" CssClass="form-control" runat="server" DataSourceID="SqlDataSourceMes" DataTextField="mes" DataValueField="idmes" Width="400px" AutoPostBack="True" OnSelectedIndexChanged="ddlMes_SelectedIndexChanged">
                     </asp:DropDownList>
                 </td>
               
                 <td>
                     &nbsp;</td>
               
                 <td>
                     &nbsp;</td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
              
                 <td>&nbsp;</td>
              
                 <td>&nbsp;</td>
              
                 <td>&nbsp;</td>
             </tr>
             <tr>
                 <td colspan="3">Personal habilitado:<br />

         <asp:DropDownList ID="ddlpersonal5categoria" CssClass="form-control" runat="server" DataSourceID="SqlDataSource5ta" DataTextField="PERSONAL" DataValueField="codTrabajador" Width="460px"></asp:DropDownList>





         <asp:SqlDataSource ID="SqlDataSource5ta" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="planilla_personal5Categoria" SelectCommandType="StoredProcedure"></asp:SqlDataSource>





                 </td>
                 
                 <td>

                     Importe de renta :<br />
                     <asp:TextBox ID="txtImporte" placeholder="0.00" required  type="number" step="0.0001" CssClass="form-control" runat="server" Width="150px"></asp:TextBox>





                 </td>
                 
                 <td>

                     <asp:Button ID="Button1" runat="server" Text="REGISTRAR" Height="50px" OnClick="Button1_Click" Width="150px" />





                 </td>
             </tr>
             <tr>
                 <td>&nbsp;</td>
                 <td>&nbsp;</td>
                
                 <td>
                     &nbsp;</td>
                
                 <td>
                     &nbsp;</td>
                
                 <td>
                     &nbsp;</td>
             </tr>
         </table>
         <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM tb_ano WHERE estado=1"></asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSourceMes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_mes
"></asp:SqlDataSource>



</div>  

         <br />


         <div class="row">
             LISTADO DE RETENCIÓN IMPUESTO A LA RENTA:
             <div class="table-responsive" >
                 <asp:GridView ID="gvQuinta" class="table table-condensed table-bordered table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="ano,mes,idUsuario" DataSourceID="SqlDataSource1" OnRowDataBound="gvQuinta_RowDataBound" OnRowDeleted="gvQuinta_RowDeleted" ShowFooter="True">
                     <Columns>
                         <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/images/eliminarr.png" >
                         <ControlStyle Height="20px" Width="20px" />
                         </asp:CommandField>
                         <asp:BoundField DataField="ano" HeaderText="ano" ReadOnly="True" SortExpression="ano" Visible="False" />
                         <asp:BoundField DataField="mes" HeaderText="mes" ReadOnly="True" SortExpression="mes" Visible="False" />
                         <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" ReadOnly="True" SortExpression="PERIODO" >
                         <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="idUsuario" HeaderText="idUsuario" ReadOnly="True" SortExpression="idUsuario" Visible="False" />
                         <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" ReadOnly="True" SortExpression="PERSONAL" />
                         <asp:BoundField DataField="idcargo" HeaderText="idcargo" SortExpression="idcargo" Visible="False" />
                         <asp:BoundField DataField="CARGO" HeaderText="CARGO" SortExpression="CARGO" />
                         <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                         <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                         </asp:BoundField>
                         <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" Visible="False" />
                     </Columns>
                     <EmptyDataTemplate>
                         No se encotro registro alguno...
                     </EmptyDataTemplate>
                     <FooterStyle BackColor="#F0F0F0" Font-Size="X-Small" />
                     <HeaderStyle BackColor="WhiteSmoke" />
                 </asp:GridView>
                 *
                 <asp:Label ID="lblcountFilas" runat="server"></asp:Label>
&nbsp;Items.<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Planilla_5categoria" SelectCommandType="StoredProcedure" DeleteCommand="delete tb_Planilla_RentaQuinta where ano=@ano and mes=@mes and idUsuario=@idUsuario
">
                     <DeleteParameters>
                         <asp:Parameter Name="ano" />
                         <asp:Parameter Name="mes" />
                         <asp:Parameter Name="idUsuario" />
                     </DeleteParameters>
                     <SelectParameters>
                         <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" Type="Int32" />
                         <asp:ControlParameter ControlID="lblmes" Name="mes" PropertyName="Text" Type="Int32" />
                     </SelectParameters>
                 </asp:SqlDataSource>
             </div>

         </div>


         </div>
   
</asp:Content>
