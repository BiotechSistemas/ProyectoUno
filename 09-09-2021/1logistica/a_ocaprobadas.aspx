<%@ Page Title="" Language="C#" MasterPageFile="~/1logistica/green.Master" AutoEventWireup="true" CodeBehind="a_ocaprobadas.aspx.cs" Inherits="biotech._1logistica.a_ocaprobadas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 82%;
        }
        .auto-style2 {
            width: 99%;
        }
        .auto-style3 {
            width: 88%;
        }
        .auto-style4 {
            height: 42px;
        }
        .auto-style5 {
            width: 88%;
            height: 42px;
        }
        .auto-style6 {
            width: 118px;
            text-align: right;
        }
        .auto-style7 {
            height: 42px;
            width: 118px;
        }
        .auto-style8 {
            height: 30px;
        }
        .auto-style9 {
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>REGISTRAR COMPRA Nº
        <asp:Label ID="lblidcompra" runat="server"></asp:Label>
    </h1>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">

            <tr>
                <td>Fecha compra:*</td>
                <td>
                    <asp:TextBox ID="txtfechacompra" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="2">
                    <asp:Label ID="lblinfauorizado" runat="server" style="color: #FF3300; font-weight: 700"></asp:Label>
                </td>

            </tr>

              <tr>
                <td class="auto-style8">Ingresar OC:<br />
                  </td>
                <td class="auto-style8">
                    <asp:TextBox ID="txtgrupo" runat="server" type="number" OnTextChanged="txtocbuscar_TextChanged" Width="40%"></asp:TextBox>
                    -<asp:TextBox ID="txtserie" runat="server" type="number" Width="40%"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style8">
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Buscar" Width="100%" />
                  </td>
                <td class="auto-style8">
                    <br />
                </td>
                <td class="auto-style9" colspan="2">
                    <asp:Label ID="lblestadooc" runat="server" style="font-weight: 700"></asp:Label>
                    <asp:Label ID="lblautorizacion" runat="server"></asp:Label>
                  </td>
            </tr>
             <tr>
           <td colspan="3"><strong>Proveedor:</strong>
               <asp:Label ID="lblruc" runat="server"></asp:Label>
               &nbsp;/
               <asp:Label ID="lblproveedor" runat="server"></asp:Label>
               <br />
               <strong>Contacto:</strong>
               <asp:Label ID="lblcontacto" runat="server"></asp:Label>
               &nbsp;<br /> <strong>Empresa:</strong>
               <asp:Label ID="lblempresa" runat="server"></asp:Label>
               <asp:Label ID="lblnomtitular" runat="server"></asp:Label>
               <br />
               <strong>Orden de compra: </strong>
               <asp:Label ID="lblordencompra" runat="server"></asp:Label>
&nbsp;
               <asp:Label ID="lblcentrocosto" runat="server" style="color: #C0C0C0"></asp:Label>
               <br />
               <strong>Moneda:</strong>&nbsp;
               <asp:Label ID="lblmoneda" runat="server" Visible="False"></asp:Label>
               <asp:Label ID="lbldescripmoneda" runat="server"></asp:Label>
               <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Adelanto:</strong>
               <asp:Label ID="lbladelanto" runat="server"></asp:Label>
               <br />
               <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Ver oc</asp:LinkButton>
                 </td>
                 <td>&nbsp;</td>
                 <td class="auto-style3"><strong>Cond / dias:<br /> Valor de Venta:<br /> Impuesto:<br /> Total:</strong></td>

                
                 <td class="auto-style6">
                     <asp:Label ID="lblcondi" runat="server" Visible="False"></asp:Label>
                     <asp:Label ID="lbldias" runat="server" Visible="False"></asp:Label>
                     <asp:Label ID="lblconddescrip" runat="server"></asp:Label>
                     <br />
                     <asp:Label ID="lblvalordeventa" runat="server"></asp:Label>
                     <br />
                     <asp:Label ID="lblimpuesto" runat="server" style="color: #FF0000"></asp:Label>
                     <br />
                     <asp:Label ID="lbltotal" runat="server"></asp:Label>
                 </td>

                
            </tr>

            <tr>
                <td>
                    <asp:Label ID="lblbanco" runat="server" Visible="False"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="lblnumcuenta" runat="server" Visible="False"></asp:Label>
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>


                <td>Factura:*<br />
                    <asp:TextBox ID="txtfactura" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td>Guia Remisión:*<br />
                    <asp:TextBox ID="txtguiarem" runat="server" Width="150px"></asp:TextBox>
                </td>
                <td>Letra:<br />
                    <asp:TextBox ID="txtletra" runat="server" Width="120px"></asp:TextBox>
                    <br />
                </td>
                <td class="auto-style2"><br />
                </td>
                <td class="auto-style3">
                    Imp. a pagar:*<br />
                    <asp:TextBox ID="txtimporteapagar" runat="server" type="number" step="0.01" Width="120px"></asp:TextBox>
                </td>
                <td>Adelanto:*<br />
                    <asp:TextBox ID="txtadeltando" runat="server" type="number" step="0.01" Width="120px"></asp:TextBox>
                </td>
            </tr>
            
            <tr>
                <td colspan="3">Observación:<asp:TextBox ID="txtobservacion" runat="server" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
                <td class="auto-style3">&nbsp;</td>
                 <td>Estado OC:*<br />
                     <asp:RadioButton ID="RadioButton1" runat="server" GroupName="estadooc" Text="PARCIAL" />
                </td>
                <td>
                    <br />
                    <asp:RadioButton ID="RadioButton2" runat="server" GroupName="estadooc" Text="TOTAL" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Button ID="Button3" runat="server" Height="40px" OnClick="Button3_Click" Text="NUEVO" Width="100%" />
                </td>
                <td colspan="2" class="auto-style4">
                    <asp:Button ID="Button1" runat="server" Text="REG. COMPRA" OnClick="Button1_Click" Height="40px" Width="100%" />
                </td>
                <td></td>
                <td class="auto-style5">
                    <asp:Label ID="lblidoc" runat="server" Visible="False"></asp:Label>
                </td>
                <td class="auto-style7">
                    <asp:Label ID="lblidporpagar" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
        </table>
        <asp:Label ID="lblmensaje" runat="server" style="color: #CC3300"></asp:Label>
        <br />
    </asp:Panel>
    <p>
    </p>
</asp:Content>
