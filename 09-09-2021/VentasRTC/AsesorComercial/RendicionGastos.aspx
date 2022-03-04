<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RendicionGastos.aspx.cs" Inherits="biotech.VentasRTC.AsesorComercial.RendicionGastos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">


.control-group {
  margin-bottom: 10px;
}



        .auto-style1 {
            width: 100%;

background: linear-gradient(white, #EFEFEF); /* Standard syntax */
        }
        .auto-style3 {
            width: 100px;
        }
        .auto-style4 {
            color: #990000;
            font-size: small;
        }
        .auto-style5 {
            color: #006600;
        }
        .auto-style6 {
            font-weight: normal;
            font-size: medium;
            text-align: right;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h2>
            <table class="auto-style1" style="filter:progid:DXImageTransform.Microsoft.Gradient(endColorstr='#cc0000', startColorstr='#FFFFFF', gradientType='0'); background-color: #F2F2F2;">
                <tr>
                    <td class="auto-style3">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/logoicono.png" Width="64px" Height="54px" />
                    </td>
                    <td><span class="auto-style5">RENDICIÓN DE GASTOS
                        </span>
                        <asp:Label ID="lblperidodescrip" runat="server" CssClass="auto-style5"></asp:Label>
&nbsp; 
     
     <asp:Label ID="lblcodVendedor" runat="server" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style6">&nbsp;<asp:LinkButton ID="LinkButton3" runat="server" style="color: #006600" OnClick="LinkButton3_Click">REND. REGISTRADAS</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" style="color: #006600">PRINCIPAL</asp:LinkButton>
                    </td>
                </tr>
                </table>
        </h2>
        <asp:Panel ID="Panel1" runat="server">
            <p>
                Base Viatico:
                <asp:Label ID="lblbaseviatico" runat="server"></asp:Label>
                &nbsp;,&nbsp; Gasto Actual:
                <asp:Label ID="lblgastototal" runat="server"></asp:Label>
                &nbsp;,&nbsp;&nbsp; Diferencia:
                <asp:Label ID="lblviaticodisponible" runat="server"></asp:Label>
            </p>
        </asp:Panel>
<div class="control-group" >
    


    <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource7" OnRowDataBound="GridView6_RowDataBound" ShowFooter="True" Width="500px" GridLines="Horizontal" BackColor="White" BorderColor="#CCCCCC" BorderStyle="Solid" BorderWidth="1px" CellPadding="4" ForeColor="Black">
        <Columns>
            <asp:BoundField DataField="idcategoria" HeaderText="idcategoria" SortExpression="idcategoria" Visible="False" />
            <asp:BoundField DataField="DESCAT" HeaderText="Para cubrir gastos de:" ReadOnly="True" SortExpression="DESCAT">
            <HeaderStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" ReadOnly="True" SortExpression="IMPORTE">
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
        </Columns>
        <FooterStyle ForeColor="Black" />
        <HeaderStyle ForeColor="#006600" Font-Bold="True" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rgSumRendGastos" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblidreg" Name="idrendicion" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    


    <span class="auto-style4">Resumen de gastos total, no incluye PETROTHOR.</span><br />
    


    <asp:Label ID="lblmensaje" runat="server" style="color: #990000; font-size: small"></asp:Label>
    <br />
     
    <asp:Label ID="lblidreg" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblmaxid" runat="server" Visible="False"></asp:Label>
    &nbsp;<asp:Label ID="lblidregdetalle" runat="server" Visible="False"></asp:Label>
    
</div>
        <span class="auto-style5">
        <strong>1.-GASTOS DE MOVILIDAD:</strong></span><asp:Label ID="lblmensaje1" runat="server" style="color: #990000; font-size: small"></asp:Label>
    
&nbsp;<div class="offset2">
                                
    <asp:TextBox ID="txtfecha1" runat="server"  placeholder="Fecha Reg." TextMode="Date" Width="125px" ></asp:TextBox>
        <asp:TextBox ID="txtruc1" runat="server" class="span2" placeholder="RUC"  type="number" MaxLength="15" ToolTip="RUC de la empresa" Width="100px"></asp:TextBox>
        <asp:TextBox ID="txtdescripcion1" runat="server" class="span2" placeholder="Origen - Destino" Width="190px" ></asp:TextBox>
        <asp:TextBox ID="txtmotivo1" runat="server" class="span2" placeholder="Motivo" Width="200px" ></asp:TextBox>
        <asp:TextBox ID="txtcomprobante1" runat="server" class="span2" placeholder="Nro. comprobante" ></asp:TextBox>
        <asp:TextBox ID="txtimporte1" runat="server" class="span1" placeholder="Importe" type="number" step="0.01" Width="80px" ></asp:TextBox>
        &nbsp;
 <asp:Button ID="Button1" runat="server"  Text="Registrar" OnClick="Button1_Click" Height="30px"></asp:Button>
       
               
<div class="control-group">
    
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1000px" DataKeyNames="COD" ShowFooter="True"  OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
            <ControlStyle Height="20px" Width="20px" />
            <HeaderStyle Width="20px" />
            </asp:CommandField>
            <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" ReadOnly="True" Visible="False" />
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" >
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
            <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMP" SortExpression="COMPROBANTE" >
            <HeaderStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
            <HeaderStyle Width="10px" />
            </asp:CheckBoxField>
        </Columns>
        <FooterStyle BackColor="WhiteSmoke" />
        <HeaderStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="WhiteSmoke" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
            <asp:Parameter DefaultValue="1" Name="idcategoria" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</div> 
        <!-- / .control-group -->

        </div>
        <p>
            <span class="auto-style5">
            <strong>2.- GASTOS DE COMBUSTIBLE:</strong></span>  <span class="required" ><asp:Label ID="lblmensaje2" runat="server" style="color: #990000; font-size: small"></asp:Label></span> 
        </p>
            <div class="offset2">
                <asp:TextBox ID="txtfecha2" runat="server"  placeholder="Fecha Reg." TextMode="Date" Width="125px"></asp:TextBox>
                <asp:TextBox ID="txtruc2" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>
                <asp:TextBox ID="txtdescripcion2" runat="server" class="span2" placeholder="Combustible" ToolTip="Tipo de combustible" Width="180px"></asp:TextBox>
                <asp:TextBox ID="txtkilometrosfact2" runat="server" placeholder="Kms Fact." step="0.001" type="number" Width="90px"></asp:TextBox>
                <asp:TextBox ID="txtgalonesfact2" runat="server" placeholder="Galones Fact" step="0.01" type="number" Width="90px"></asp:TextBox>
                <asp:DropDownList ID="ddlbtppago" runat="server" Width="100px">
                    <asp:ListItem Selected="True" Value="CRED">Credito</asp:ListItem>
                    <asp:ListItem Value="CONT">Contado</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox ID="txtcomprobante2" runat="server" placeholder="Nro. comprobante" Width="90px"></asp:TextBox>
                <asp:TextBox ID="txtimporte2" runat="server" class="span1" placeholder="Importe" step="0.01" type="number" Width="80px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button2" runat="server"  OnClick="Button2_Click" Text="Registrar" Height="30px" />

                <br />
        <!-- / .control-group -->
        <div class="control-group">
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource2" Width="1000px" ShowFooter="True" OnRowDataBound="GridView2_RowDataBound" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" GridLines="Horizontal">
                <Columns>
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    </asp:CommandField>
                  <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" ReadOnly="True"  Visible="False"/>
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
                    <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
                    <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                    <asp:BoundField DataField="KMFACT" HeaderText="Kms FACT" SortExpression="KMFACT" />
                    <asp:BoundField DataField="GALONESFACT" HeaderText="GALONES FACT" SortExpression="GALONESFACT" />
                    <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMP" SortExpression="COMPROBANTE" >
                    <HeaderStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                    <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                    <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                    <HeaderStyle Width="20px" />
                    </asp:CheckBoxField>
                </Columns>
                <FooterStyle BackColor="WhiteSmoke" />
                <HeaderStyle BackColor="#CCCCCC" />
                <RowStyle BackColor="WhiteSmoke" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                    <asp:Parameter DefaultValue="2" Name="idcategoria" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <!-- / .control-group -->
        </div>
        <p>
            <span class="auto-style5">
            <strong>3.- GASTOS DE ALIMENTACIÓN:</strong></span>  <span class="required">
        <asp:Label ID="lblmensaje4" runat="server" style="color: #990000; font-size: small"></asp:Label>
        </span>
        </p>
            <div class="offset2">
                <asp:TextBox ID="txtfecha4" runat="server" Width="125px" placeholder="Fecha Reg." TextMode="Date"></asp:TextBox>
                <asp:TextBox ID="txtruc4" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>
                <asp:TextBox ID="txtdescripcion4" runat="server" class="span4" placeholder="Descripción" Width="400px"></asp:TextBox>
                <asp:TextBox ID="txtcomprobante4" runat="server" class="span2" placeholder="Nro. comprobante" Width="130px"></asp:TextBox>
                <asp:TextBox ID="txtimporte4" runat="server" class="span1" placeholder="Importe" type="number" step="0.01" Width="120px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button4" runat="server"  OnClick="Button4_Click" Text="Registrar" Height="30px" />

                <br />
                <div class="control-group">
                    <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource4" Width="1000px" ShowFooter="True" OnRowDataBound="GridView4_RowDataBound" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" GridLines="Horizontal">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="20px" />
                            </asp:CommandField>
                           <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" ReadOnly="True" />
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                             <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMP" SortExpression="COMPROBANTE" >
                            <HeaderStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                            <HeaderStyle Width="20px" />
                            </asp:CheckBoxField>
                        </Columns>
                        <FooterStyle BackColor="WhiteSmoke" />
                        <HeaderStyle BackColor="#CCCCCC" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                            <asp:Parameter DefaultValue="4" Name="idcategoria" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                    <span class="auto-style5">
                    <strong>4.- GASTOS DE REPRESENTACIÓN:</strong></span>
        <asp:Label ID="lblmensaje6" runat="server" style="color: #990000; font-size: small"></asp:Label>
        </span>
                    <br />
         <div class="offset2">
                                
             &nbsp;<asp:TextBox ID="txtfecha6" runat="server" Width="125px" placeholder="Fecha Reg." TextMode="Date"></asp:TextBox>
             <asp:TextBox ID="txtruc6" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>
        <asp:TextBox ID="txtdescripcion6" runat="server" class="span4" placeholder="Descripción" Width="400px"></asp:TextBox>
        <asp:TextBox ID="txtcomprobante6" runat="server" class="span2" placeholder="Nro. comprobante" Width="160px"></asp:TextBox>
        <asp:TextBox ID="txtimporte6" runat="server" class="span1" placeholder="Importe" type="number" step="0.01" Width="80px"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button8" runat="server" Text="Registrar" OnClick="Button8_Click" Height="30px"></asp:Button>
             <br />

                <div class="control-group">
                    <asp:GridView ID="GridView66" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource66" OnRowDataBound="GridView66_RowDataBound" OnSelectedIndexChanged="GridView66_SelectedIndexChanged" ShowFooter="True" Width="1000px" GridLines="Horizontal">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="20px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="COD" HeaderText="COD" Visible="False" SortExpression="COD" ReadOnly="True" />
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                             <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMP" SortExpression="COMPROBANTE" >
                            <HeaderStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                            <HeaderStyle Width="20px" />
                            </asp:CheckBoxField>
                        </Columns>
                        <FooterStyle BackColor="WhiteSmoke" />
                        <HeaderStyle BackColor="#CCCCCC" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource66" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                            <asp:Parameter DefaultValue="6" Name="idcategoria" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
             </div>
                </div>
                <!-- / .control-group -->
            </div>
        <p>
            <span class="auto-style5">
            <strong>5.-&nbsp; GASTOS PASAJES: </strong></span>&nbsp;<asp:Label ID="lblmensaje7" runat="server" style="color: #990000; font-size: small"></asp:Label>
        </span>
        </p>
           <div class="offset2">
                <asp:TextBox ID="txtfecha7" runat="server"  placeholder="Fecha Reg." TextMode="Date" Width="125px" ></asp:TextBox>
                <asp:TextBox ID="txtruc7" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>
                <asp:TextBox ID="txtdescripcion7" runat="server" class="span2" placeholder="Origen - Destino" Width="200px" ></asp:TextBox>
                <asp:TextBox ID="txtmotivo7" runat="server" class="span2" placeholder="Motivo" Width="200px" ></asp:TextBox>
                <asp:TextBox ID="txtcomprobante7" runat="server" class="span2" placeholder="Nro. comprobante" ></asp:TextBox>
                <asp:TextBox ID="txtimporte7" runat="server" class="span1" placeholder="Importe" type="number" step="0.01" Width="80px" ></asp:TextBox>
                &nbsp;
                    <asp:Button ID="Button7" runat="server"  Text="Registrar" OnClick="Button7_Click" Height="30px"></asp:Button>



                <br />


                <div class="control-group">

                    <asp:GridView ID="GridView77" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource77" OnRowDataBound="GridView77_RowDataBound" OnSelectedIndexChanged="GridView77_SelectedIndexChanged" ShowFooter="True" Width="1000px" GridLines="Horizontal">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="20px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" Visible="False" ReadOnly="True" />
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION">
                            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                             <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMP" SortExpression="COMPROBANTE" >
                            <HeaderStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                            <HeaderStyle Width="20px" />
                            </asp:CheckBoxField>
                        </Columns>
                        <FooterStyle BackColor="WhiteSmoke" />
                        <HeaderStyle BackColor="#CCCCCC" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource77" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                            <asp:Parameter DefaultValue="7" Name="idcategoria" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                 </div>
        </div>
        <p>
            <strong><span class="auto-style5">6.- GASTOS ALOJAMIENTO :</span> </strong>
        <asp:Label ID="lblmensaje3" runat="server" style="color: #990000; font-size: small"></asp:Label>
        </span>
        </p>
            <div class="offset2">
                &nbsp;<asp:TextBox ID="txtfecha3" runat="server" Width="125px" placeholder="Fecha Reg." TextMode="Date"></asp:TextBox>
                <asp:TextBox ID="txtruc3" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>
                <asp:TextBox ID="txtdescripcion3" runat="server" class="span4" placeholder="Descripción" Width="400px"></asp:TextBox>
                <asp:TextBox ID="txtcomprobante3" runat="server" class="span2" placeholder="Nro. comprobante"></asp:TextBox>
                <asp:TextBox ID="txtimporte3" runat="server" class="span1" placeholder="Importe" type="number" step="0.01" Width="80px"></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button3" runat="server"  OnClick="Button3_Click" Text="Registrar" Height="30px" />
                <br />
                <div class="control-group">
                    <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="COD" DataSourceID="SqlDataSource3" OnSelectedIndexChanged="GridView3_SelectedIndexChanged" Width="1000px" ShowFooter="True" OnRowDataBound="GridView3_RowDataBound" GridLines="Horizontal">
                        <Columns>
                            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
                            <ControlStyle Height="20px" Width="20px" />
                            <HeaderStyle Width="20px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="COD" HeaderText="COD" Visible="False" SortExpression="COD" ReadOnly="True" />
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
                            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" />
                            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
                            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
                            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
                             <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMP" SortExpression="COMPROBANTE" >
                            <HeaderStyle Width="100px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
                            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
                            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
                            </asp:BoundField>
                            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
                            <HeaderStyle Width="20px" />
                            </asp:CheckBoxField>
                        </Columns>
                        <FooterStyle BackColor="WhiteSmoke" />
                        <HeaderStyle BackColor="#CCCCCC" />
                        <RowStyle BackColor="WhiteSmoke" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
                            <asp:Parameter DefaultValue="3" Name="idcategoria" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <!-- / .control-group -->
            </div>
        <span class="auto-style5">
        <strong>7.- OTROS GASTOS:</strong></span>   <span class="required">
        <asp:Label ID="lblmensaje5" runat="server" style="color: #990000; font-size: small"></asp:Label>
        </span>&nbsp;<div class="offset2">
                                
        &nbsp;<asp:TextBox ID="txtfecha5" runat="server" Width="125px" placeholder="Fecha Reg." TextMode="Date"></asp:TextBox>
        <asp:TextBox ID="txtruc5" runat="server" class="span2" MaxLength="15" placeholder="RUC" ToolTip="RUC de la empresa" type="number" Width="100px"></asp:TextBox>
        <asp:TextBox ID="txtdescripcion5" runat="server" class="span4" placeholder="Descripción" Width="400px"></asp:TextBox>
        <asp:TextBox ID="txtcomprobante5" runat="server" class="span2" placeholder="Nro. comprobante"></asp:TextBox>
        <asp:TextBox ID="txtimporte5" runat="server" class="span1" placeholder="Importe" type="number" step="0.01" Width="80px"></asp:TextBox>
&nbsp;
        <asp:Button ID="Button5" runat="server" Text="Registrar" OnClick="Button5_Click" Height="30px"></asp:Button>
            <br />

<div class="control-group">
    
    <asp:GridView ID="GridView5" runat="server"  AutoGenerateColumns="False" DataSourceID="SqlDataSource5" DataKeyNames="COD" ShowFooter="True" Width="1000px" OnRowDataBound="GridView5_RowDataBound" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" GridLines="Horizontal">
        <Columns>
            <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/eliminarr.png" ShowSelectButton="True">
            <ControlStyle Height="20px" Width="20px" />
            <HeaderStyle Width="20px" />
            </asp:CommandField>
            <asp:BoundField DataField="COD" HeaderText="COD" Visible="False" SortExpression="COD" ReadOnly="True" />
            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" DataFormatString="{0:dd/MM/yyyy}" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="RUC" HeaderText="RUC" SortExpression="RUC" >
            <HeaderStyle Width="70px" />
            </asp:BoundField>
            <asp:BoundField DataField="DESCRIPCION" HeaderText="DESCRIPCION" SortExpression="DESCRIPCION" >
            <ItemStyle HorizontalAlign="Left" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="MOTIVO" HeaderText="MOTIVO" SortExpression="MOTIVO" Visible="False" />
            <asp:BoundField DataField="KMFACT" HeaderText="KMFACT" SortExpression="KMFACT" Visible="False" />
            <asp:BoundField DataField="GALONESFACT" HeaderText="GALONESFACT" SortExpression="GALONESFACT" Visible="False" />
             <asp:BoundField DataField="COMPROBANTE" HeaderText="N° COMPROB" SortExpression="COMPROBANTE" >
            <HeaderStyle Width="100px" />
            </asp:BoundField>
            <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" DataFormatString="{0:0,0.00}" >
            <HeaderStyle HorizontalAlign="Right" VerticalAlign="Middle" Width="60px" />
            <ItemStyle HorizontalAlign="Right" VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:CheckBoxField DataField="ESTADO" HeaderText="EST" SortExpression="ESTADO" >
            <HeaderStyle Width="20px" />
            <ItemStyle Width="20px" />
            </asp:CheckBoxField>
        </Columns>
        <FooterStyle BackColor="WhiteSmoke" />
        <HeaderStyle BackColor="#CCCCCC" />
        <RowStyle BackColor="WhiteSmoke" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="st_rggrupo" SelectCommandType="StoredProcedure">
        <SelectParameters>
            <asp:ControlParameter ControlID="lblidreg" Name="id" PropertyName="Text" Type="Int32" />
            <asp:Parameter DefaultValue="5" Name="idcategoria" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
    
</div><!-- / .control-group -->
        </div>
        <br />
    
    </div>
    </form>
</body>
</html>
