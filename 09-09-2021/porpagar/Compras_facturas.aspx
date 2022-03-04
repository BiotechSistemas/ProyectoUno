<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/Newporpagar.Master" AutoEventWireup="true" CodeBehind="Compras_facturas.aspx.cs" Inherits="biotech.porpagar.Compras_facturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 800px;
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
      <div class="container-fluid">
		  <div class="row-fluid">
			<div class="col-md-12">
        <h3>  COMPRAS - FACTURAS REGISTRADAS</h3>

          <br />
          <table class="auto-style1">
              <tr>
                  <td>
                      <asp:Button ID="btnGeneral" runat="server" OnClick="btnGeneral_Click" Text="GENERAL" Height="40px" />
                  </td>
                  <td>
                      <asp:TextBox ID="txtproveedor" placeholder="Proveedor" runat="server" Width="250px"></asp:TextBox>
                      <br />
                      Proveedor:</td>
                  <td>
                      <asp:Button ID="btnProveedor" runat="server" OnClick="btnProveedor_Click" Text="PROVEEDOR" Height="40px" />
                  </td>
                  <td>
                      <asp:TextBox ID="txtncuenta" runat="server" placeholder="Cuenta" Width="100px"></asp:TextBox>
                      <br />
                      Núm. cuenta</td>
                  <td>
                      <asp:Button ID="btncuenta" runat="server" OnClick="btncuenta_Click" Text="Nº CUENTA" Height="40px" />
                  </td>
                  <td>
                    <strong>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/excel.png" Width="25px" OnClick="ImageButton1_Click" />
                         </strong>
                  </td>
              </tr>
              <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
              </tr>
          </table>
          <asp:Panel ID="payuda" runat="server" Visible="False">
              <asp:Label ID="lblop" runat="server"></asp:Label>
              &nbsp;proveedor:
              <asp:Label ID="lblproveedor" runat="server"></asp:Label>
              &nbsp;&nbsp; pagos:
              <asp:Label ID="lblidpago" runat="server"></asp:Label>
          </asp:Panel>
         <%--<h2> COMPRAS - SERVICIOS REALIZADOS:</h2>--%>
                <asp:GridView ID="gvComprasFacturacion" Class="table table-condensed  table-hover table-striped"  runat="server" AutoGenerateColumns="False" DataKeyNames="idpago" DataSourceID="SqlDataSource1" Width="100%">
              <Columns>
                  <asp:BoundField DataField="idpago" HeaderText="idpago" ReadOnly="True" SortExpression="idpago" Visible="False" />
                  <asp:BoundField DataField="idempresa" HeaderText="idempresa" SortExpression="idempresa" Visible="False" />
                  <asp:BoundField DataField="NCTA" HeaderText="Nº CTA" ReadOnly="True" SortExpression="NCTA" >
                  <HeaderStyle Width="70px" />
                  </asp:BoundField>
                  <asp:BoundField DataField="FREGISTRO" HeaderText="F. REGISTRO" SortExpression="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" >
                  <HeaderStyle Width="90px" />
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="idProveedor" HeaderText="idProveedor" SortExpression="idProveedor" Visible="False" />
                  <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
                  <HeaderStyle Width="120px" />
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="RAZONSOCIAL" HeaderText="RAZONSOCIAL" SortExpression="RAZONSOCIAL" />
                  <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" Visible="False" />
                  <asp:BoundField DataField="M" ReadOnly="True" SortExpression="M" />
                  <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE"  >
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>
                     <asp:BoundField DataField="DETRACCION" HeaderText="DETRAC" SortExpression="DETRACCION" >
                  <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                  </asp:BoundField>

                  <asp:BoundField DataField="CUOTAS" HeaderText="CUOTAS" ReadOnly="True" SortExpression="CUOTAS" >
                  <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                  </asp:BoundField>
                  <asp:BoundField DataField="TIPO-CTA" HeaderText="TIPO" ReadOnly="True" SortExpression="TIPO-CTA" >
                  <HeaderStyle Width="200px" />
                  </asp:BoundField>
                  <asp:BoundField DataField="CAT-CTA" HeaderText="CATEGORIA" ReadOnly="True" SortExpression="CAT-CTA" >
                  <HeaderStyle Width="200px" />
                  </asp:BoundField>
                  <asp:BoundField DataField="NDOCUMENTO" HeaderText="Nº FACTURA" SortExpression="NDOCUMENTO" />
                  <asp:BoundField DataField="DOC" HeaderText="DOC" ReadOnly="True" SortExpression="DOC" />
                  <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" ReadOnly="True" SortExpression="GLOSA" >
                  <HeaderStyle Width="350px" />
                  </asp:BoundField>
              </Columns>
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="Pagos_facturas" SelectCommandType="StoredProcedure">
              <SelectParameters>
                  <asp:ControlParameter ControlID="lblop" Name="op" PropertyName="Text" Type="Int32" />
                  <asp:ControlParameter ControlID="lblproveedor" Name="proveedor" PropertyName="Text" Type="String" />
                  <asp:ControlParameter ControlID="lblidpago" Name="idpago" PropertyName="Text" Type="Int32" />
              </SelectParameters>
          </asp:SqlDataSource>
          </div></div></div>
</asp:Content>
