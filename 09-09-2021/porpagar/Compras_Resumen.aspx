<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/Newporpagar.Master" AutoEventWireup="true" CodeBehind="Compras_Resumen.aspx.cs" Inherits="biotech.porpagar.Compras_Resumen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
          <h2><span class="glyphicon glyphicon-check"></span> RESUMEN GENERAL<asp:Label ID="lblusuario" runat="server" Text="ACHAC" Visible="False"></asp:Label>
            <asp:Label ID="lblnivel" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lblop" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lbldato" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lblperido2" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lblperido" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lblano2" runat="server" Visible="False"></asp:Label>
              <asp:Label ID="lblidcategoria" runat="server" Visible="False"></asp:Label>
         </h2>

         <asp:Panel ID="PanelGeneral" class="row" runat="server">
           <h3> RESUMEN GENERAL 
               <asp:Label ID="lblResumenAno" runat="server"></asp:Label><small>
               <asp:Label ID="lbltpcambio" runat="server" Text="3.25" Visible="False"></asp:Label>
               <asp:Label ID="lblidempresa" runat="server" Text="1" Visible="False"></asp:Label>
               </small></h3>

              <div class="row">
                <div class="form-group">
                  <label class="control-label col-sm-2 col-md-offset-7" for="txtruc">AÑO:</label>
                    <div class="col-sm-3 ">
                       
                          <asp:RadioButtonList ID="rbAno" runat="server" DataSourceID="SqlDataSourceano" DataTextField="ano" DataValueField="ano" RepeatDirection="Horizontal" Width="100%" OnSelectedIndexChanged="rbAno_SelectedIndexChanged" AutoPostBack="True">
                             </asp:RadioButtonList>
                             <asp:SqlDataSource ID="SqlDataSourceano" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select * from tb_ano"></asp:SqlDataSource>

                         </div>

                 </div>

              </div>

            <asp:GridView ID="gvanual" runat="server" Class="table table-striped table-bordered table-hover table-sm" AutoGenerateColumns="False" DataKeyNames="IDMES,MES" DataSourceID="SqlDataSourceAnoGeneral" OnSelectedIndexChanged="gvanual_SelectedIndexChanged">
                <Columns>
                    <asp:TemplateField HeaderText="MES" ShowHeader="False">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Select" Text='<%# Bind("MES") %>'></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="IDMES" HeaderText="IDMES" ReadOnly="True" SortExpression="IDMES" Visible="False" />
                    <asp:BoundField DataField="MES" HeaderText="MES" SortExpression="MES" Visible="False" />
                    <asp:BoundField DataField="DOLARES" HeaderText="DOLARES" ReadOnly="True" SortExpression="DOLARES" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="SOLES" HeaderText="SOLES" ReadOnly="True" SortExpression="SOLES" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTALSOLES" HeaderText="TOTAL SOLES" ReadOnly="True" SortExpression="TOTALSOLES" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TOTALDOLARES" HeaderText="TOTAL DOLARES" ReadOnly="True" SortExpression="TOTALDOLARES" DataFormatString="{0:0,0.00}" >
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>

                </Columns>
                <EmptyDataTemplate>
                    No se entraron registros...
                </EmptyDataTemplate>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSourceAnoGeneral" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Compras_ResumAno" SelectCommandType="StoredProcedure">
                <SelectParameters>
                     <asp:ControlParameter ControlID="lblperido" Name="mes" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblResumenAno" Name="ano" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lblidempresa" Name="idempresa" PropertyName="Text" Type="Int32" />
                    <asp:ControlParameter ControlID="lbltpcambio" Name="tpcambio" PropertyName="Text" Type="Decimal" />
                </SelectParameters>
            </asp:SqlDataSource>

        </asp:Panel>



        <asp:Panel ID="Panel3" class="row" runat="server">
             <H4>RESUMEN CATEGORIZADO:
                 <asp:Label ID="lblmesDescrip" runat="server"></asp:Label>
             </H4>
             
             <asp:GridView ID="gvGastosCategoizados" Class="table table-striped table-bordered table-hover table-sm " runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSourcerESdET" OnRowDataBound="gvGastosCategoizados_RowDataBound" ShowFooter="True" OnSelectedIndexChanged="gvGastosCategoizados_SelectedIndexChanged">
                 <Columns>
                     <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" />
                     <asp:BoundField DataField="CATEGORIA" HeaderText="TIPO DE GASTO" SortExpression="CATEGORIA" />
                     <asp:BoundField DataField="DOLARES" HeaderText="DOLARES" ReadOnly="True" SortExpression="DOLARES" DataFormatString="{0:0,0.00}" Visible="False" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="SOLES" HeaderText="SOLES" ReadOnly="True" SortExpression="SOLES" DataFormatString="{0:0,0.00}" Visible="False" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                     <asp:BoundField DataField="TOTALSOLES" HeaderText="TOTAL SOLES" ReadOnly="True" SortExpression="TOTALSOLES" DataFormatString="{0:0,0.00}" >
                     <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                     </asp:BoundField>
                 </Columns>
             </asp:GridView>
             <asp:SqlDataSource ID="SqlDataSourcerESdET" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Compras_ResumDetTipo" SelectCommandType="StoredProcedure">
                 <SelectParameters>
                     <asp:ControlParameter ControlID="lblperido2" Name="mes" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblano2" Name="ano" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lblidempresa" Name="idempresa" PropertyName="Text" Type="Int32" />
                     <asp:ControlParameter ControlID="lbltpcambio" Name="tpcambio" PropertyName="Text" Type="Decimal" />
                 </SelectParameters>
             </asp:SqlDataSource>
             &nbsp;</asp:Panel>

   </div>




</asp:Content>
