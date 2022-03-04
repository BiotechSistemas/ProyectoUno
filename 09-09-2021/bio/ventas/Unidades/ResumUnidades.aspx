﻿<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="ResumUnidades.aspx.cs" Inherits="biotech.bio.ventas.Unidades.ResumUnidades" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style type="text/css">
    th
    {
        text-align:center;
    }
    </style>

    <style type="text/css">


        .auto-style1 {
            width: 34px;
        }
        .auto-style2 {
            width: 514px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
			<h2><i class="fa fa-paste"></i> RESUMEN GV. POR UNIDADES:
                <asp:Label ID="lblidusuario" runat="server" Visible="False"></asp:Label>       
                <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
                
                    
                     </h2>
        </div>

     <div class="row">    
                    <ol class="breadcrumb">
                        <li>
                        <asp:LinkButton ID="lbtnPrincipal" runat="server" PostBackUrl="~/bio/ventas/Unidades/UnidadesLista.aspx" >Principal</asp:LinkButton>
                        </li>
                       <li>
                        <asp:LinkButton ID="lbtnrtecnico" runat="server" PostBackUrl="~/bio/ventas/Unidades/RTecnico.aspx" >R.Técnico</asp:LinkButton>
                        </li>
                        
                        <li>
                        <asp:LinkButton ID="lbtnResumenTecnico" runat="server" PostBackUrl="~/bio/ventas/Unidades/ResumenTecnico.aspx">Resumen GV. General</asp:LinkButton>
                        </li>
                        <li>
                        <asp:LinkButton ID="lbtnResumenAsesor" runat="server" PostBackUrl="~/bio/ventas/Unidades/ResumUnidades.aspx">Resumen GV. por unidades</asp:LinkButton>
                        </li>
                        
                        
                    </ol>
            </div>

    
    
    <asp:Panel ID="Panel2" runat="server">
        <asp:Panel ID="Panel21" runat="server" Visible="False">
            <asp:Label ID="lbl2op" runat="server"></asp:Label>
        <asp:Label ID="lbl2f1" runat="server"></asp:Label>
        <asp:Label ID="lbl2f2" runat="server"></asp:Label>
        <asp:Label ID="lbl2seccion" runat="server"></asp:Label>
        </asp:Panel>
        &nbsp;SEGÚN FECHA AGRUPADOS POR SECCIÓN TÉCNICA:<br />&nbsp;
        <asp:TextBox ID="txt2f1" runat="server" TextMode="Date"></asp:TextBox>
        &nbsp;HASTA
        <asp:TextBox ID="txt2f2" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Button ID="btn2Generar" runat="server" OnClick="btn2Generar_Click" Text="GENERAR" />
        <asp:DropDownList ID="ddl2Seccion" runat="server" DataSourceID="SqlDataSourceseccion" DataTextField="secciones" DataValueField="idSecciones" Width="200px" Height="30px">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourceseccion" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_PlanillaEquipos_Secciones]"></asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SECCION" />
        <br />
        <asp:GridView ID="GridView2" runat="server" class="table table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSourcexFECHASECC">
            <Columns>
                <asp:BoundField DataField="FECHA" HeaderText="FECHA" ReadOnly="True" SortExpression="FECHA" />
                <asp:BoundField DataField="SECCION" HeaderText="SECCION" SortExpression="SECCION" />
                <asp:BoundField DataField="TOTAL" HeaderText="TOTAL" ReadOnly="True" SortExpression="TOTAL" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle BackColor="WhiteSmoke" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSourcexFECHASECC" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="GASTOSTEC_FECHA" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lbl2op" Name="op" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lbl2f1" DbType="Date" Name="f1" PropertyName="Text" />
                <asp:ControlParameter ControlID="lbl2f2" DbType="Date" Name="f2" PropertyName="Text" />
                <asp:ControlParameter ControlID="lbl2seccion" Name="idSeccion" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panel30" runat="server">
        <asp:Panel ID="Panel31" runat="server" Visible="False">
            <asp:Label ID="lbl3idUnidad" runat="server"></asp:Label>
        </asp:Panel>
        <table class="nav-justified">
            <tr>
                <td class="auto-style1">AÑO:</td>
                <td class="auto-style2">
                    <asp:RadioButtonList ID="rbtn3Anual" runat="server" DataSourceID="SqlDataSource1" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="200px">
                    </asp:RadioButtonList>
                </td>
                <td>
                    <asp:DropDownList ID="ddl3Unidad" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceunidades" DataTextField="PLACA" DataValueField="IdEquipo" Height="30px" OnSelectedIndexChanged="ddl3Unidad_SelectedIndexChanged" Width="100%">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Button ID="btn3Generar" runat="server" OnClick="btn3Generar_Click" Text="POR UNIDAD" />
                </td>
            </tr>
        </table>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="ano_gv" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSourceunidades" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Unidades_listar" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:GridView ID="gvRemmes" runat="server" class="table table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataKeyNames="idrendicion,ANO,IDMES,ASESOR,IDPLACA,APELLIDOS,SUMTT" DataSourceID="SqlDataSourceunidad" OnSelectedIndexChanged="gvRemmes_SelectedIndexChanged" OnRowDataBound="gvRemmes_RowDataBound" ShowFooter="True">
            <Columns>
                <asp:TemplateField HeaderText="PERIODO" ShowHeader="False">
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("PERIODO") %>'></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="idrendicion" HeaderText="idrendicion" SortExpression="idrendicion" Visible="False" />
                <asp:BoundField DataField="ANO" HeaderText="ANO" SortExpression="ANO" Visible="False" ReadOnly="True" />
                <asp:BoundField DataField="IDMES" HeaderText="IDMES" SortExpression="IDMES" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="PERIODO" HeaderText="PERIODO" SortExpression="PERIODO" ReadOnly="True" Visible="False" />
                <asp:BoundField DataField="PLACA" HeaderText="PLACA" SortExpression="PLACA">
                <HeaderStyle HorizontalAlign="Center" Width="120px" />
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="120px" />
                </asp:BoundField>
                <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" ReadOnly="True" SortExpression="ASESOR" Visible="False" />
                 <asp:BoundField DataField="APELLIDOS" HeaderText="ASESOR" ReadOnly="True" SortExpression="APELLIDOS" />
                <asp:BoundField DataField="IDPLACA" HeaderText="IDPLACA" SortExpression="IDPLACA" Visible="False" >
                </asp:BoundField>
                <asp:BoundField DataField="ZONA" HeaderText="ZONA" SortExpression="ZONA" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IMPVIAT" DataFormatString="{0:0,0.00}" HeaderText="GV.VIÁTICOS" ReadOnly="True" SortExpression="IMPVIAT">
                <HeaderStyle BackColor="#ECFFEC" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="IMPTEC" DataFormatString="{0:0,0.00}" HeaderText="GV.TÉCNICOS" ReadOnly="True" SortExpression="IMPTEC">
                <HeaderStyle BackColor="#E1F2FB" />
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="SUMTT" DataFormatString="{0:0,0.00}" HeaderText="IMP.TOTAL" ReadOnly="True" SortExpression="SUMTT">
                <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                </asp:BoundField>
            </Columns>
            <HeaderStyle BackColor="WhiteSmoke" />
        </asp:GridView>
       <asp:SqlDataSource ID="SqlDataSourceunidad" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_MENSUAL_ANO" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblano3" Name="ano" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lbl3idUnidad" Name="idunidad" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <small> GV. VIÁTICOS = (GASTOS DE COMBUSTIBLE&nbsp; + UNIDAD VEHICULAR)</small>
    </asp:Panel>

    <hr />
    <asp:Panel ID="panelGrupo4" runat="server">
                
         <div class="row">
            
              <div class="panel-body">

            <div class="col-md-7">
                <div class="panel panel-success">
                  <div class="panel-heading"> A.- GV. REGISTRADOS EN VIÁTICOS: <asp:Label ID="lblasesor1" runat="server" Visible="False"></asp:Label>
                 <asp:Label ID="lblnom1" runat="server"></asp:Label>
                 
                 &nbsp;&nbsp;<strong>IMP.TT:</strong> 
                 <asp:Label ID="lblimpTTAsesor" runat="server" Font-Bold="True"></asp:Label>
                  <asp:Label ID="lblidRendicionSelec" runat="server" Visible="False"></asp:Label>
                      <asp:Label ID="lblidunidad1" runat="server" Visible="False"></asp:Label>
                    </div>
                  <div class="panel-body">
                <div class="table-responsive">
                     <asp:GridView ID="gvGrupoViaticos" runat="server" class="table table-striped table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSourceGrupoviaticos" DataKeyNames="IDCATEGORIA" Font-Size="X-Small">
                         <Columns>
                             <asp:BoundField DataField="IDCATEGORIA" HeaderText="IDCATEGORIA" SortExpression="IDCATEGORIA" Visible="False" />
                             <asp:BoundField DataField="UNIDAD" HeaderText="UNIDAD" SortExpression="UNIDAD" >
                             <HeaderStyle Width="100px" />
                             </asp:BoundField>
                             <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                             <asp:BoundField DataField="IMPORTE" HeaderText="IMP. VIÁTICOS" ReadOnly="True" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                             <HeaderStyle ForeColor="#006600" />
                             <ItemStyle ForeColor="#006600" HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" />
                             </asp:BoundField>
                         </Columns>
                         <EmptyDataTemplate>
                             No registra gastos...
                         </EmptyDataTemplate>
                         <HeaderStyle BackColor="#ECFFEC" />
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSourceGrupoviaticos" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_InfViaticosAgrupadosXidRend" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lblidRendicionSelec" Name="idrendicion" PropertyName="Text" Type="Int32" />
                             <asp:ControlParameter ControlID="lblidunidad1" Name="idunidad" PropertyName="Text" Type="Int32" />
                         </SelectParameters>
                     </asp:SqlDataSource>
            <asp:GridView ID="gvDetalleMEs1" class="table table-bordered table-sm  table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="idRGdetalle" DataSourceID="SqlDataSourceMEsDEt1" Font-Size="XX-Small" OnRowDataBound="gvDetalleMEs1_RowDataBound" ShowFooter="True" OnSelectedIndexChanged="gvDetalleMEs1_SelectedIndexChanged" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="idRGdetalle" HeaderText="idRGdetalle" ReadOnly="True" SortExpression="idRGdetalle" Visible="False" />
                    <asp:BoundField DataField="idRG" HeaderText="idRG" SortExpression="idRG" Visible="False" />
                    <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" Visible="False" />
                    <asp:BoundField DataField="CATEGORIA" HeaderText="DETALLE DE GASTOS" SortExpression="CATEGORIA" />
                    <asp:BoundField DataField="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.REGISTRO" SortExpression="FREGISTRO">
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                    <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                    <asp:BoundField DataField="KMFACT" DataFormatString="{0:0,0}" HeaderText="KMFACT" SortExpression="KMFACT">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="GALONES" HeaderText="GALONES" SortExpression="GALONES">
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="NDOC" HeaderText="NDOC" SortExpression="NDOC" Visible="False">
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPORTE" DataFormatString="{0:0,0.00}" HeaderText="IMP. VIÁTICOS" SortExpression="IMPORTE">
                    <HeaderStyle ForeColor="#006600" Width="100px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" Font-Bold="True" ForeColor="#006600" />
                    </asp:BoundField>
                </Columns>
                <HeaderStyle BackColor="#ECFFEC" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourceMEsDEt1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_InfMesDetalle" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <%--<asp:ControlParameter ControlID="gvDetMEs1" Name="idRendicion" PropertyName="SelectedValue" Type="Int32" />--%>
                    <asp:ControlParameter ControlID="lblidRendicionSelec" Name="idrendicion" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidunidad1" Name="idunidad" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
           </div>

            </div>
                </div>
             </div>
            
            <div class="col-md-5">
                <div class="panel panel-info">
                  <div class="panel-heading"> B.- GV. GASTOS TÉCNICOS:&nbsp;<strong>PLACA</strong>:<asp:Label ID="lblnplaca" runat="server"></asp:Label>
                     &nbsp;<asp:Label ID="lblidtransporte1" runat="server" Visible="False"></asp:Label>
                     &nbsp;&nbsp; &nbsp;<asp:Label ID="lblano3" runat="server"></asp:Label>
                      <asp:Label ID="lblmes3" runat="server"></asp:Label>
                     <asp:Label ID="lblidunidad3" runat="server"></asp:Label>
                     <asp:Label ID="lblidasesor3" runat="server"></asp:Label></div>
                 <div class="panel-body">
                 <div class="table-responsive">
                    
                     <asp:GridView ID="gvTecnicos" runat="server" class="table table-info table-striped table-bordered table-sm  table-hover" AutoGenerateColumns="False" DataSourceID="SqlDataSourceplacaAsesor" Font-Size="X-Small" OnRowDataBound="gvTecnicos_RowDataBound" ShowFooter="True" DataKeyNames="IDSOL" OnSelectedIndexChanged="gvTecnicos_SelectedIndexChanged">
                         <Columns>
                             <asp:TemplateField HeaderText="SOLICITUD" ShowHeader="False">
                                 <ItemTemplate>
                                     <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("SOLICITUD") %>'></asp:LinkButton>
                                 </ItemTemplate>
                             </asp:TemplateField>
                            
                             <asp:BoundField DataField="IDEQUIPO" HeaderText="IDEQUIPO" SortExpression="IDEQUIPO" Visible="False" />
                             <asp:BoundField DataField="PLACA" HeaderText="PLACA" SortExpression="PLACA" Visible="False" />
                             <asp:BoundField DataField="ASESOR" HeaderText="ASESOR" SortExpression="ASESOR" Visible="False" />
                            <asp:BoundField DataField="IDSOL" HeaderText="IDSOL" SortExpression="IDSOL" Visible="False" />
                             <asp:BoundField DataField="SOLICITUD" HeaderText="SOLICITUD" SortExpression="SOLICITUD" DataFormatString="{0:dd/MM/yyyy}" >
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>
                           <%--  <asp:BoundField DataField="FECHASOL" HeaderText="F.SOLICITUD" SortExpression="FECHASOL" DataFormatString="{0:dd/MM/yyyy}" >
                             <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                             </asp:BoundField>--%>
                             <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                             <ItemStyle Font-Size="X-Small" />
                             </asp:BoundField>
                             
                             <asp:BoundField DataField="IMPTT" HeaderText="IMP. TÉCNICO" ReadOnly="True" SortExpression="IMPTT" DataFormatString="{0:0,0.00}" >
                             <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="100px" />
                             <ItemStyle Font-Bold="True" HorizontalAlign="Right" VerticalAlign="Middle" />
                             </asp:BoundField>
                         </Columns>
                         <EmptyDataTemplate>
                             No registra gastos técnicos...
                         </EmptyDataTemplate>
                         <HeaderStyle BackColor="#E1F2FB" />
                     </asp:GridView>
                     <asp:SqlDataSource ID="SqlDataSourceplacaAsesor" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Servicio_PlacaAsesor" SelectCommandType="StoredProcedure">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lblano3" Name="ano" PropertyName="Text" Type="Int32" />
                             <asp:ControlParameter ControlID="lblmes3" Name="mes" PropertyName="Text" Type="Int32" />
                             <asp:ControlParameter ControlID="lblidunidad3" Name="idplaca" PropertyName="Text" Type="Int32" />
                             <asp:ControlParameter ControlID="lblidasesor3" Name="idassesor" PropertyName="Text" Type="String" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                 </div>
                     </div>
                </div>

             </div>
                  
                  </div>
            </div>

       
             </asp:Panel>

</asp:Content>
