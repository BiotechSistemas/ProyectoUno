<%@ Page Title="" Language="C#" MasterPageFile="~/bio/ventas/MasterVentas.Master" AutoEventWireup="true" CodeBehind="Resum_ensayos.aspx.cs" Inherits="biotech.bio.ventas.AreaTecnica.Resum_ensayos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 850px;
        }
        .auto-style2 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <h1>RESUMEN DE ENSAYOS TÉCNICOS </h1> 
    <asp:LinkButton ID="LinkButton3" CssClass="btn btn-success" runat="server" OnClick="LinkButton3_Click">ACTUALIZAR</asp:LinkButton>
     <asp:Button ID="Button1" runat="server" Text="NUEVO ENSAYO" OnClick="Button1_Click" />
  
    <br />
    <br />
    <asp:Panel ID="Panel2" runat="server" Visible="False">
        <asp:Label ID="lblmensajeatendido" runat="server"></asp:Label>
        <br />
        <asp:Label ID="lblIdUsuario" runat="server"></asp:Label>
        &nbsp; ano:
        <asp:Label ID="lblano" runat="server"></asp:Label>
        &nbsp;num:
        <asp:Label ID="lblnum" runat="server"></asp:Label>
        &nbsp;id ensayo<asp:Label ID="lblidensayo" runat="server"></asp:Label>
    </asp:Panel>
    <asp:Panel ID="PLISTADO" runat="server">
   
    <br />
    <strong>DETALLE DE ENSAYOS TÉCNICOS</strong>
    <br />

    <asp:GridView ID="gvNoclientes" runat="server" AutoGenerateColumns="False" DataKeyNames="idensayo,COD" DataSourceID="SqlDataSourcenoClientes" OnSelectedIndexChanged="gvNoclientes_SelectedIndexChanged" style="font-size: x-small" Width="100%" AllowPaging="True">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    <HeaderStyle Width="22px" />
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:CommandField>
                    <asp:BoundField DataField="idensayo" HeaderText="COD" ReadOnly="True" SortExpression="idensayo" />
                    <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                    <asp:BoundField DataField="FREGISTRO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FREGISTRO" SortExpression="FREGISTRO">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="FREQUERIDA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FREQUERIDA" SortExpression="FREQUERIDA">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="TITULO" HeaderText="TITULO" SortExpression="TITULO" />
                    <asp:BoundField DataField="DNI" HeaderText="DNI" SortExpression="DNI" />
                    <asp:BoundField DataField="REPRESENTANTE" HeaderText="REPRESENTANTE" SortExpression="REPRESENTANTE" />
                    <asp:BoundField DataField="fundoempresa" HeaderText="FUNDO / EMPRESA" SortExpression="fundoempresa" />
                    <asp:BoundField DataField="autor" HeaderText="SOLICITA" SortExpression="autor" />
                    <asp:BoundField DataField="CULTIVO" HeaderText="CULTIVO" SortExpression="CULTIVO" />
                    <asp:BoundField DataField="AREENSAYO" HeaderText="AREENSAYO" SortExpression="AREENSAYO" />
                </Columns>
                <EmptyDataTemplate>
                    No registra ensayos, clientes externos....
                </EmptyDataTemplate>
                <HeaderStyle BackColor="#CCCCCC" />
                <RowStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSourcenoClientes" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="select idensayo,idensayo COD,fecha FREGISTRO, fecharequerida FREQUERIDA,nombre TITULO,dni DNI,responsabletecnicofundo REPRESENTANTE,fundoempresa,autor,cultivo CULTIVO,areaensayo AREENSAYO 
from tb_ensayo order by idensayo desc"></asp:SqlDataSource>

     </asp:Panel>
    <br />

    <asp:Panel ID="pregistrarensayo" runat="server">
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2" colspan="5"><strong>1.-NOMBRE DEL ENSAYO DE EFICACIA:</strong><br />
                <asp:TextBox ID="txtnombreensayo"  runat="server" CssClass="form-control"  Style="text-transform: uppercase" placeholder="Nombre de ensayo" required Width="795px"></asp:TextBox>


            </td>
        </tr>
        <tr>
            <td WIDTH="200">DEPARTAMENTO:</td>
            <td class="auto-style2">
               <asp:TextBox ID="txtdepartamento" runat="server" CssClass="form-control"  Style="text-transform: uppercase" placeholder="Departamento" required Width="200px"></asp:TextBox> 
            </td>
            <td WIDTH="50">&nbsp;</td>
            <td  WIDTH="90">PROVINCIA:</td>
            <td class="auto-style2">
                 <asp:TextBox ID="txtprovincia" runat="server" CssClass="form-control"  placeholder="Provincia" required Style="text-transform: uppercase" Width="200px"></asp:TextBox>

            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>  
                <asp:RadioButtonList ID="RBLcliente" runat="server" RepeatDirection="Horizontal" Width="150px" AutoPostBack="True" OnSelectedIndexChanged="RBLcliente_SelectedIndexChanged" Visible="False">
            <asp:ListItem>SI</asp:ListItem>
            <asp:ListItem>NO</asp:ListItem>
        </asp:RadioButtonList>

            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        </table>


        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_fichatipocultivo]"></asp:SqlDataSource>
    <br />
    <table class="auto-style1">
        <tr>
            <td WIDTH="200" colspan="4"><strong>2.-INFORMACIÓN DE ENSAYO:</strong></td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td WIDTH="200">RUC / DNI:</td>
            <td>
                <asp:TextBox ID="txtdni" runat="server" CssClass="form-control" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>RAZÓN SOCIAL:</td>
            <td colspan="4">
        <asp:TextBox ID="txtnombre" runat="server" CssClass="form-control"  Width="600px" Style="text-transform: uppercase" placeholder="RAZON SOCIAL" MaxLength="50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td colspan="4">&nbsp;</td>
        </tr>
        <tr>
            <td>FUNDO:</td>
            <td colspan="4">
        
        <asp:TextBox ID="txtfundo" runat="server" CssClass="form-control"  Style="text-transform: uppercase" placeholder="Fundo o empresa" required Width="600px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>CULTIVO:</td>
            <td>
        
        <asp:DropDownList ID="ddlCutivoensayo" runat="server" CssClass="form-control"  DataSourceID="SqlDataSource7" DataTextField="descripcion" DataValueField="idtipocultivo" Width="200px">
        </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
            <td>HECTARE A ENSAYAR:</td>
            <td>
        
    <asp:TextBox ID="txthectaraensayo" required runat="server" CssClass="form-control"  type="number" step="0.01" placeholder="Hectárea de ensayo" Width="200px"  ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>PUNTO DE PARTIDA:</td>
            <td colspan="4">
        
    <asp:TextBox ID="txtpuntollegada" required runat="server" CssClass="form-control"  Style="text-transform: uppercase" placeholder="Punto llegada" Width="600px"  ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>FECHA REQUERIDA:</td>
            <td>
        
    <asp:TextBox ID="txtfecharequeridaa" required runat="server" CssClass="form-control"  TextMode="Date" Width="200px"   ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
            <td colspan="2">
        <asp:Button ID="Button3" runat="server" Text="REGISTRAR DETALLE DE SOLICITUD" class="btn btn-success" OnClick="Button3_Click" Width="400px"/>
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <asp:Label ID="lblmensaje" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
    <br />

    <asp:Panel ID="Panel1" runat="server">
  <span class="title_section_offer"><strong>3. TRATAMIENTOS:</strong></span>
        <asp:Label ID="lblmaxtra" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblrowcountproducto" runat="server" Visible="False"></asp:Label>
    <asp:Label class="required" ID="lblmensaje3" runat="server" ForeColor="#CC0000"></asp:Label>

   


   
        
        <table >
            <tr>
                <td class="auto-style2">
                    <asp:DropDownList ID="ddlbProducto" runat="server" Width="100%" DataSourceID="SqlDataSource5" DataTextField="producto" DataValueField="producto" OnSelectedIndexChanged="ddlbProducto_SelectedIndexChanged">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_productodiferentes" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    <br />
                    Producto<asp:Label ID="lblidproducto" runat="server"></asp:Label>
                    -<asp:Label ID="lblprecio" runat="server"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdosis" runat="server" type="number" step="0.01" Width="100px" placeholder="3.00"></asp:TextBox>
                    <br />
                    Dosis / Litros</td>
                <td>
                    <asp:TextBox ID="txtfrecApli" runat="server" type="number" Width="100px"  placeholder="1"></asp:TextBox>
                    <br />
                    N° Frec. Aplicación.</td>
                <td>
                    <asp:TextBox ID="txtCantReq" runat="server" type="number" step="0.01" Width="100px" placeholder="2.00"></asp:TextBox>
                    <br />
                    Cant. Req / L.</td>
                <td>
                    <asp:TextBox ID="txtFechaReque" runat="server" TextMode="Date" Width="150px"></asp:TextBox>
                    <br />
                    Fecha Requerida</td>
                <td>
                    <asp:Button ID="btnRequiere" runat="server" Text="Registrar" Height="29px" OnClick="btnRequiere_Click"/></td>
            </tr>
            </table>

     

  
        Tratamientos registrados:
       
        <asp:GridView ID="gvTratamientos" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" SortExpression="ENSAYO" Visible="False" />
                <asp:BoundField DataField="PRODUCTO" HeaderText="PRODUCTO" SortExpression="PRODUCTO" />
                <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" SortExpression="PRECIO" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="CANT" HeaderText="CANT" SortExpression="CANT" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="APLICACION" HeaderText="APLICACION" SortExpression="APLICACION" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="NUMAPLICACION" HeaderText="NUM/FREC. APLICACION" SortExpression="NUMAPLICACION" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="FREQUERIDA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="F.REQUERIDA" SortExpression="FREQUERIDA" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
            <EmptyDataTemplate>
                Tratamiento por registrar..
            </EmptyDataTemplate>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
   
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_EnsayoTratamiento" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidensayo" Name="idEnsayo" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
   
        <br />
        <br />
        <strong>4. VARIABLES A EVALUAR </strong>
    <asp:Label class="required" ID="lblmensaje4" runat="server" ForeColor="#CC0000"></asp:Label>

  
    
 
        <br />
        <asp:Label ID="lblmaxvarevaluar" runat="server" Visible="False"></asp:Label>

  
    
 
    Variable a evaluar:<span class="required">*
  
        
    <asp:TextBox ID="txtvariableevaluar" runat="server" class="span5" Style="text-transform: uppercase" placeholder="Variable a evaluar" Width="400px" ></asp:TextBox>
                    <asp:Button ID="btnRequiere0" runat="server" Text="Registrar" Height="30px" OnClick="btnRequiere0_Click"/>
  
  
        <br />
  
  
       Variables a evaluar registradas:
      
        <asp:GridView ID="gvVariableEvalular" runat="server" AutoGenerateColumns="False" DataKeyNames="idVariables" DataSourceID="SqlDataSource3" Width="300px">
            <Columns>
                <asp:BoundField DataField="idVariables" HeaderText="idVariables" ReadOnly="True" SortExpression="idVariables" Visible="False" />
                <asp:BoundField DataField="idensayo" HeaderText="idensayo" SortExpression="idensayo" Visible="False" />
                <asp:BoundField DataField="descripcion" HeaderText="DESCRIPCION" SortExpression="descripcion" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:CheckBoxField DataField="estado" HeaderText="ESTADO" SortExpression="estado" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CheckBoxField>
            </Columns>
            <EmptyDataTemplate>
                Variables por registrar.
            </EmptyDataTemplate>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_EnsayoVariables] WHERE ([idensayo] = @idensayo)">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidensayo" Name="idensayo" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
            <br />
        <br />
   
        <strong>5. CRONOGRAMA DE ACTIVIDADES</strong>:<asp:Label class="required" ID="lblmensaje5" runat="server" ForeColor="#CC0000"></asp:Label>

        <br />
        <asp:Label ID="lblmaxcronogramaact" runat="server" Visible="False"></asp:Label>

    <label class="control-label">Indicar actividad:<span class="required">*</span></label>
   
      
        <asp:DropDownList ID="ddlbActividades" runat="server" class="span5" DataSourceID="SqlDataSource1" DataTextField="descripcion" DataValueField="idEnsayoActividades"></asp:DropDownList>  
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [tb_EnsayoAct]"></asp:SqlDataSource>
    
        <asp:TextBox ID="txtfechacrono" runat="server" TextMode="Date"></asp:TextBox>
        <asp:Button ID="btnRequiere1" runat="server" Height="30px" OnClick="btnRequiere1_Click" Text="Registrar" />
    
   
        <br />
    
   
        <label class="control-label">Cronograma de actividades registradas:</label>
        <div class="controls">
        <asp:GridView ID="gvActividades" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" Width="300px" >
            <Columns>
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" Visible="False" />
                <asp:BoundField DataField="ENSAYO" HeaderText="ENSAYO" SortExpression="ENSAYO" Visible="False" />
                <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
                <ItemStyle HorizontalAlign="Left" />
                </asp:BoundField>
                <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FECHA" SortExpression="FECHA" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
            <EmptyDataTemplate>
                Cronograma por registrar...
            </EmptyDataTemplate>
            <HeaderStyle BackColor="#333333" ForeColor="White" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_EnsayoCronoActividades" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidensayo" Name="idensayo" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
            <br />
        </div>
    </div><!-- / .control-group -->    
            

         <div class="control-group">
    <%--<label class="control-label">Punto de llegada:<span class="required">*</span></label>--%>
    <div class="controls">
        <asp:Image ID="Image1" runat="server" Height="40px" Width="40px" ImageUrl="~/images/correo.gif" />
        <asp:Button ID="Button4" runat="server" Text="SOLICITAR MUESTRA" class="bnt btn-success" OnClick="Button4_Click"/>
        <asp:Label ID="lblfinalizado" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblatendido" runat="server" Visible="False"></asp:Label>
    </div>
    </div><!-- / .control-group --> </asp:Panel>
    <br />
    <br />
        </asp:Panel>

</asp:Content>
