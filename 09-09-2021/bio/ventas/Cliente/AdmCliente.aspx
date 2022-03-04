<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdmCliente.aspx.cs" Inherits="biotech.bio.ventas.Cliente.AdmCliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 630px;
        }
        .auto-style2 {
            width: 97px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      
                <table class="auto-style1">
                    <tr>
                        <td WIDTH="320" ><STRONG>FICHA CLIENTE:</STRONG>
                    <asp:Label ID="lblidruc" runat="server" style="font-weight: 700"></asp:Label>
                        </td>
                        <td WIDTH="100" >
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="VER DATOS" BackColor="#D5EFD1" Width="100%" />

                        </td>
                        <td WIDTH="100" >

        <asp:Button ID="btregistrar" runat="server" BackColor="#D5EFD1" OnClick="btregistrar_Click" Text="REGISTRAR" Width="100%" />
                        </td>
                        <td WIDTH="100" >
        <asp:Button ID="btCerrar" runat="server" OnClick="btCerrar_Click" Text="CERRAR" ForeColor="#990000" Width="100%" />

                        </td>
                    </tr>
                    </table>
              

        <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">Razón social</td>
                <td>:</td>
                <td colspan="5">
                    <asp:TextBox ID="txtrazonsocial" runat="server" Width="98%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Teléfono</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtTelefono" runat="server" Width="200px"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
                <td>E-mail</td>
                <td>:</td>
                <td>
                    <asp:TextBox ID="txtcorreo" runat="server" Width="210px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Dirección Fiscal</td>
                <td>:</td>
                <td colspan="5">
                    <asp:TextBox ID="txtdireccionFiscal" runat="server" Width="98%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Departamento</td>
                <td>:</td>
                <td>
                     <asp:DropDownList ID="ddlp2Departamento" Class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcep2depart" DataTextField="departamento" DataValueField="id" OnSelectedIndexChanged="ddlp2Departamento_SelectedIndexChanged" Width="200px">
                     </asp:DropDownList>
                     <asp:SqlDataSource ID="SqlDataSourcep2depart" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_dDepartamento] WHERE ([idSunat] IS NOT NULL)"></asp:SqlDataSource>
                     
                        </td>
                <td>&nbsp;</td>
                <td>Provincia</td>
                <td>:</td>
                <td>
                          <asp:DropDownList ID="ddlp2Provincia" Class="form-control" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourcep2Prov" DataTextField="provincia" DataValueField="idSunat" Width="200px">
                          </asp:DropDownList>
                     
                        </td>
            </tr>
            <tr>
                <td class="auto-style2">Distrito</td>
                <td>:</td>
                <td>
                          <asp:DropDownList ID="ddlp2Distrito" Class="form-control" runat="server" DataSourceID="SqlDataSourcep2Distrito" DataTextField="ubigeo" DataValueField="idUbigeo" Width="200px">
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSourcep2Distrito" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_dDistritoUbigeo] WHERE ([idProv] = @idProv)">
                              <SelectParameters>
                                  <asp:ControlParameter ControlID="ddlp2Provincia" Name="idProv" PropertyName="SelectedValue" Type="String" />
                              </SelectParameters>
                          </asp:SqlDataSource>
                     
                        </td>
                <td>&nbsp;</td>
                <td>C.Ubigeo</td>
                <td>:</td>
                <td><asp:Label ID="lblIdUbigeoLlegada" runat="server"></asp:Label>
                          </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="5">
                    <asp:Label ID="lblmensaje" runat="server" Font-Size="X-Small" ForeColor="#990000"></asp:Label>
                    <asp:SqlDataSource ID="SqlDataSourcep2Prov" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_dProvincia] WHERE ([idDepartamento] = @idDepartamento)">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="ddlp2Departamento" Name="idDepartamento" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Bancos Referenciales</td>
                <td>:</td>
                <td colspan="5">
                    <asp:ListBox ID="lbBancosReferenciales" runat="server" Width="300px"></asp:ListBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Banco referencial</td>
                <td>:</td>
                <td colspan="5">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSourceBanco" DataTextField="banco" DataValueField="id" Width="200px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSourceBanco" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select id,banco from tb_bancos where id not in (66,100)
"></asp:SqlDataSource>
                    <asp:Button ID="btnagregarbanco" runat="server" Text="+" />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="5">&nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
    </div>
    </form>
</body>
</html>
