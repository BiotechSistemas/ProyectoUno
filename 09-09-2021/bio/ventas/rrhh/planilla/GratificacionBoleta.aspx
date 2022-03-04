<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/rrhh/planilla/MpPlanilla.Master" AutoEventWireup="true" CodeBehind="GratificacionBoleta.aspx.cs" Inherits="biotech.bio.ventas.rrhh.planilla.GratificacionBoleta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 700px;
        }
         .auto-style2 {
             width: 700px;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container-fluid">
         <h2>GRATIFICACIÓN 
           <asp:Label ID="lbltitulo" runat="server"></asp:Label>
         &nbsp; BOLETAS</h2>
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
         


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select distinct ano from rrhh.PlanillaPagos order by ano desc
"></asp:SqlDataSource>
          <div class="table-responsive">
          <asp:GridView ID="GridView1" class="table table-striped w-auto" runat="server" AutoGenerateColumns="False" DataKeyNames="COD,CODPERSONAL" DataSourceID="SqlDataSource2" Width="100%" Font-Size="Small" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
              <Columns>
                  <asp:CommandField ShowSelectButton="True" />
                  <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                  <asp:BoundField DataField="ANO" HeaderText="PERIODO" SortExpression="ANO" />
                  <asp:BoundField DataField="PERIODO" HeaderText="" SortExpression="PERIODO" />
                  <asp:BoundField DataField="CODPERSONAL" HeaderText="CODPERSONAL" SortExpression="CODPERSONAL" Visible="False" />
                  <asp:BoundField DataField="PERSONAL" HeaderText="PERSONAL" SortExpression="PERSONAL" ReadOnly="True" >
                  <ItemStyle Font-Size="X-Small" />
                  </asp:BoundField>
                  <asp:BoundField DataField="M1" HeaderText="1er MES" SortExpression="M1" DataFormatString="{0:#,0.00}" >
                  <ItemStyle BackColor="#D2FFD2" HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="M2" HeaderText="2do MES" SortExpression="M2" DataFormatString="{0:#,0.00}" >
                  <ItemStyle BackColor="#D2FFD2" HorizontalAlign="Right" />
                  </asp:BoundField>
                  <asp:BoundField DataField="M3" HeaderText="3ER MES" SortExpression="M3" DataFormatString="{0:#,0.00}" >
                  <ItemStyle BackColor="#D2FFD2" HorizontalAlign="Right" />
                  </asp:BoundField>
                  <asp:BoundField DataField="M4" HeaderText="4to MES" SortExpression="M4" DataFormatString="{0:#,0.00}" >
                  <ItemStyle BackColor="#D2FFD2" HorizontalAlign="Right" />
                  </asp:BoundField>
                  <asp:BoundField DataField="M5" HeaderText="5to MES" SortExpression="M5" DataFormatString="{0:#,0.00}" >
                  <ItemStyle BackColor="#D2FFD2" HorizontalAlign="Right" />
                  </asp:BoundField>
                  <asp:BoundField DataField="M6" HeaderText="6to MES" SortExpression="M6" DataFormatString="{0:#,0.00}" >
                  <ItemStyle BackColor="#D2FFD2" HorizontalAlign="Right" />
                  </asp:BoundField>
                  <asp:BoundField DataField="N" HeaderText="N" SortExpression="N" >
                  </asp:BoundField>
                  <asp:BoundField DataField="REMPROMEDIO" HeaderText="PROM. " SortExpression="REMPROMEDIO" DataFormatString="{0:#,0.0000}" >
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="ASIGFAM" HeaderText="ASIG FAM" SortExpression="ASIGFAM" DataFormatString="{0:#,0.00}" >
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="REMBRUTA" HeaderText="REM BRUTA" SortExpression="REMBRUTA" DataFormatString="{0:#,0.0000}" >
                  <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="BONO" HeaderText="BONO %" SortExpression="BONO" DataFormatString="{0:#,0.00}" >
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="TTPAGAR" DataFormatString="{0:#,0.0000}" HeaderText="TT PAGAR" SortExpression="TTPAGAR">
                  <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="IMPBASE" DataFormatString="{0:#,0.0000}" HeaderText="IMP. BASE" SortExpression="IMPBASE" Visible="False">
                  <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                   <asp:BoundField DataField="IDCARGO" HeaderText="CC" SortExpression="IDCARGO" Visible="False" >
                  </asp:BoundField>
                  <asp:CheckBoxField DataField="ESTADO" SortExpression="ESTADO" Visible="False" />
                 <asp:ImageField DataImageUrlField="cese" DataImageUrlFormatString="~/images/Z{0}.png" HeaderText="ACTIVO">
                            <ControlStyle Height="18px" Width="18px" />
                            <HeaderStyle HorizontalAlign="Center" Width="20px" />
                            <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                        </asp:ImageField>
              </Columns>
              <EmptyDataTemplate>
                  No se encontraron registros....
              </EmptyDataTemplate>
          </asp:GridView>
              *<asp:Label ID="lblItemRegistrados" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp; <strong __designer:mapid="c2c"> <asp:ImageButton ID="iBtnExcel" runat="server" ImageUrl="~/images/excel.png" OnClick="iBtnExcel_Click" Visible="False" Width="20px" />
             </strong>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="rrhh.gratificacionPBoletas" SelectCommandType="StoredProcedure">
                  <SelectParameters>
                      <asp:ControlParameter ControlID="lblano" Name="ano" PropertyName="Text" />
                      <asp:ControlParameter ControlID="lblPeriodo" Name="periodo" PropertyName="Text" />
                  </SelectParameters>
              </asp:SqlDataSource>
              </div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#EFEFEF">
                <strong>MODIFICAR GRATIFICACIÓN: </strong>COD:
                <asp:Label ID="lblCodigo" runat="server"></asp:Label>
                &nbsp;-
                <asp:Label ID="lblsub" runat="server"></asp:Label>
                <table class="auto-style2">
                    <tr>
                        <td>
                            <asp:TextBox ID="TextBox1" type="number" step="0.0001" runat="server" Width="100px"></asp:TextBox>
                            <br />
                            1er importe:</td>
                        <td>
                            <asp:TextBox ID="TextBox2" type="number" step="0.0001" runat="server" Width="100px"></asp:TextBox>
                            <br />
                            2do importe:</td>
                        <td>
                            <asp:TextBox ID="TextBox3" type="number" step="0.0001" runat="server" Width="100px"></asp:TextBox>
                            <br />
                            3er importe:</td>
                        <td>
                            <asp:TextBox ID="TextBox4" type="number" step="0.0001" runat="server" Width="100px"></asp:TextBox>
                            <br />
                            4to importe:</td>
                        <td>
                            <asp:TextBox ID="TextBox5" type="number" step="0.0001" runat="server" Width="100px"></asp:TextBox>
                            <br />
                            5to importe:</td>
                        <td>
                            <asp:TextBox ID="TextBox6" type="number" step="0.0001" runat="server" Width="100px"></asp:TextBox>
                            <br />
                            6to importe:</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:TextBox ID="txtImpBase" runat="server" BackColor="White" step="0.0001" type="number" Width="100px"></asp:TextBox>
                            <br />
                            Sueldo básico:<br />
                            </td>
                        <td>
                            <br />
                            <br />
                            </td>
                        <td>
                            <asp:TextBox ID="txtasigFamiliar" runat="server" step="0.01" type="number" Width="100px"></asp:TextBox>
                            <br />
                            Asignación fam.<br />
                            </td>
                        <td>
                            <asp:TextBox ID="txtbonificacion" runat="server" step="0.01" type="number" Width="100px"></asp:TextBox>
                            <br />
                            Bonificación %</td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td colspan="3">
                            <asp:DropDownList ID="ddlCargo" runat="server" DataSourceID="SqlDataSource3" DataTextField="Descripcion" DataValueField="idCargo" Width="350px">
                            </asp:DropDownList>
                            <br />
                            Cargo:</td>
                        <td>
                            <asp:Button ID="btnActualizar" runat="server" OnClick="btnActualizar_Click" OnClientClick="return confirm('Actualizar, desea modificar los cálculos registrados?');" Text="ACTUALIZAR" Width="100%" />
                        </td>
                        <td>
                            <asp:Button ID="btnEliminar" runat="server" ForeColor="#CC0000" OnClick="btnEliminar_Click" OnClientClick="return confirm('Desea ELIMINAR gratificación seleccionada?');" Text="ELIMINAR" Width="100%" />
                            <br />
                        </td>
                        <td>
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="CERRAR" />
                            <br />
                        </td>
                    </tr>
                </table>
                <asp:Label ID="lblmensajeupdate" runat="server" Font-Size="Small" ForeColor="#CC0000"></asp:Label>
          </asp:Panel>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idCargo,Descripcion from tb_PlanillaTrabCargos order by orden"></asp:SqlDataSource>
            <br />
         
          </div>
</asp:Content>
