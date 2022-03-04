<%@ Page Title="" Language="C#" MasterPageFile="~/porpagar/porpagar.Master" AutoEventWireup="true" CodeBehind="principal.aspx.cs" Inherits="biotech.porpagar.principal" 


%>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            font-size: x-large;
        }
        .auto-style11 {
            width: 323px;
        }
        .auto-style10 {
        }
        .auto-style12 {
            width: 128px;
        }
        .auto-style16 {
            width: 120px;
            height: 78px;
        }
        .auto-style17 {
            width: 128px;
            height: 78px;
        }
        .auto-style18 {
        }
        .auto-style19 {
            font-size: small;
        }
        .auto-style20 {
            color: #CC3300;
        }




        .auto-style7 {
            font-size: x-large;
        }

        .auto-style8 {
            width: 385px;
            text-align: left;
        }

        


        .auto-style22 {
            font-size: small;
        }

        


    </style>

 




</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style5" style="text-align: center">
        <strong>CUENTAS POR PAGAR&nbsp; </strong>
        <asp:Label ID="lblempresa" runat="server" style="font-weight: 700"></asp:Label>
        </p>
    <center>
    <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
        <div style="max-width:100%;   height: auto;    width: auto/9; text-align: center;">

            
            <asp:Button ID="Button1" runat="server" Height="40px" OnClick="Button1_Click" Text="BIOTECH PERU" Width="300px" />
            <asp:Button ID="Button21" runat="server" Height="40px" Text="BIOTECH" Width="300px" OnClick="Button21_Click" />
        <asp:Button ID="Button2" runat="server" Text="IMPMARK EIRL" OnClick="Button2_Click" Height="40px" Width="200px" Visible="False" />
        <asp:Button ID="Button3" runat="server" Text="INSUAGRO EIRL" OnClick="Button3_Click" Height="40px" Width="300px" />
           </div>
            <asp:Label ID="lblidempresa" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="lbltipo" runat="server" Visible="False"></asp:Label>
            &nbsp;<span class="auto-style19">Categoria:</span><asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="tipo" DataValueField="idTipo" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="font-size: small" Width="120px">
            </asp:DropDownList>
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Listar" />
            &nbsp;&nbsp;<asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click" PostBackUrl="~/porpagar/Regularizarpago.aspx">Regularizar Pagos</asp:LinkButton>
&nbsp; <span class="auto-style19">Fecha:</span>
            <asp:TextBox ID="txtfecha1" runat="server" style="font-size: small" TextMode="Date" Width="120px"></asp:TextBox>
            -<asp:TextBox ID="txtfecha2" runat="server" style="font-size: small" TextMode="Date" Width="120px"></asp:TextBox>
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/caledario.png" OnClick="ImageButton1_Click" Width="25px" />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_tipo]"></asp:SqlDataSource>
           
    </asp:Panel>
    </center>
    <br />
    <asp:Panel ID="Panelxtipo" runat="server">    
        <asp:GridView ID="GridView1"  runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" OnRowDataBound="GridView1_RowDataBound" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" class="table-condensed  table-hover table-sm thead-light" GridLines="Horizontal">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                </asp:CommandField>
                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" >
                </asp:BoundField>
                <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" />
                <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
                <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" >
                <ItemStyle Font-Size="X-Small" />
                </asp:BoundField>
                <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" Visible="False" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="CUOTAS" HeaderText="CUOTAS" SortExpression="CUOTAS" ReadOnly="True" >
                </asp:BoundField>
                <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" ReadOnly="True">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="MCUOTAS" HeaderText="CUOTAS" SortExpression="MCUOTAS" DataFormatString="{0:0,0.00}" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="EMP" HeaderText="EMP" ReadOnly="True" SortExpression="EMP" Visible="False" />
            </Columns>
            
            <HeaderStyle BackColor="#E6E6E6" />
            
        </asp:GridView>




        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="P_PAGOSHASTAELMES_TIPO" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidempresa" Name="empresa" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="lbltipo" DefaultValue=" " Name="tipo" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </asp:Panel>
    <asp:Panel ID="Panelxfechas" runat="server">
        <table class="table table-hover">
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView2_SelectedIndexChanged" OnRowDataBound="GridView2_RowDataBound" Width="100%">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                <ItemStyle HorizontalAlign="Center" />
                </asp:CommandField>
                <asp:BoundField DataField="COD" HeaderText="COD" SortExpression="COD" />
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" >
                </asp:BoundField>
                <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" />
                <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
                <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" >
                </asp:BoundField>
                <asp:BoundField DataField="MONTO" HeaderText="MONTO" SortExpression="MONTO" Visible="False" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="CUOTAS" HeaderText="CUOTAS" SortExpression="CUOTAS" ReadOnly="True" >
                </asp:BoundField>
                <asp:BoundField DataField="FVENCTO" HeaderText="FVENCTO" SortExpression="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="M" HeaderText="M" SortExpression="M" ReadOnly="True">
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="MCUOTAS" HeaderText="MCUOTAS" SortExpression="MCUOTAS" >
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="EMP" HeaderText="EMP" ReadOnly="True" SortExpression="EMP" Visible="False" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="WhiteSmoke" />
            <SelectedRowStyle Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
            </table>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="p_pagosSegFecha" SelectCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="lblidempresa" Name="empresa" PropertyName="Text" Type="Int32" />
                <asp:ControlParameter ControlID="txtfecha1" DbType="Date" Name="fecha1" PropertyName="Text" />
                <asp:ControlParameter ControlID="txtfecha2" DbType="Date" Name="fecha2" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>


    </asp:Panel>

    <center>
        <hr />
    <asp:Panel ID="Panelpagos" runat="server" style="margin-right: 22px">
        <div style="max-width:500px;   height: auto;    width: 500px; text-align:left">
            <strong>Cod. cuenta:&nbsp;<asp:Label ID="lblidpago" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;
            <br />
            Titular:</strong><asp:Label ID="lbltitular" runat="server"></asp:Label>
            <strong>
            <br />
            Categoria:</strong><asp:Label ID="lblcategoria" runat="server"></asp:Label>
            <strong>
            <br />
            Proveedor: </strong>
            <asp:Label ID="lblproveedor" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <strong>Concepto:</strong>
            <asp:Label ID="lblasunto" runat="server"></asp:Label>
            &nbsp;<br /> 
            <hr />
            <strong>Pago/Cuota actual: N°<asp:Label ID="lblncuota0" runat="server" style="font-weight: 700"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Vencimiento:</strong><asp:Label ID="lblfechavencto" runat="server"></asp:Label>
            <strong>
            <br />
            Pagos/Cuotas canceladas:</strong>&nbsp;
            <asp:Label ID="lblcuotaspagadas" runat="server"></asp:Label>
            &nbsp;-
            <asp:Label ID="lblcuotas" runat="server"></asp:Label>
            <strong>&nbsp;<span class="auto-style20">(</span></strong><asp:Label ID="lblcuotasporpagar" runat="server" CssClass="auto-style20"></asp:Label>
            <strong><span class="auto-style20">)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
            <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click" style="font-size: small">Ver pagos</asp:LinkButton>
            <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" style="font-size: small">Reg cuota</asp:LinkButton>
            <br />
            Importe:</strong><asp:Label ID="lblmoneda" runat="server"></asp:Label>
            <strong>
            <asp:Label ID="lblmonto2" runat="server" style="font-size: large"></asp:Label>
            <asp:Label ID="lblmonto" runat="server" Visible="False" style="font-size: large"></asp:Label>
            </strong>
            <br />
            <strong>Deposito</strong>:<%--<asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">Ver pagos</asp:LinkButton>--%><asp:Label ID="lblbanco" runat="server"></asp:Label>
            &nbsp;-&nbsp;<asp:Label ID="lbltpdep" runat="server"></asp:Label>
            &nbsp;-
            <asp:Label ID="lblnrocta" runat="server"></asp:Label>
            <br />
            <hr />
            <strong>Total pagado:</strong>
            <asp:Label ID="lblimportepagadomomento" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp;Interes:</strong>
            <asp:Label ID="lblintereses" runat="server"></asp:Label>
            &nbsp; <strong>Deuda actual:</strong> -<hr /> </div>
    
        <asp:Panel ID="Panel3" runat="server" style="text-align: left">
            <table align="center" class="auto-style11">
                <tr>
                    <td class="auto-style10">N° Cuota:&nbsp;
                        <asp:Label ID="lblncuota" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:Label ID="idmayordetalle" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblmediopagoo" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style16">
                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource4" DataTextField="medioPago" DataValueField="idmediopago" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="100%">
                        </asp:DropDownList>
                        <br />
                        Medio de pago<asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_medioPago]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style17">
                        <asp:TextBox ID="txtnoperacion" runat="server" Width="120px"></asp:TextBox>
                        <br />
                        N° operación</td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:TextBox ID="txtfecharegistrada" runat="server" TextMode="Date" Width="95%"></asp:TextBox>
                        <br />
                        Fecha pago</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtimporte" type="number" step="0.01" runat="server" Width="120px"></asp:TextBox>
                        <br />
                        Importe
                        <asp:Label ID="lblmontodeudor" runat="server" style="color: #CC3300"></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style40" colspan="2">Observación:<asp:TextBox ID="txtobservacion" runat="server" TextMode="MultiLine" Width="95%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10">
                        <asp:Button ID="ButtonREGPAGO" runat="server" Text="Reg. pago" OnClick="ButtonREGPAGO_Click" Width="100%" />
                        <br />

                        </td>
                    <td class="auto-style12">
                        <asp:Button ID="Button7" runat="server" OnClick="Button7_Click" Text="Reg. adelanto" Width="100%" />
                       
                    </td>
                </tr>
                <tr>
                    <td class="auto-style10" colspan="2">
                        <div style="text-align: center">
                            <br />
                            <asp:LinkButton ID="LinkButton9" runat="server" OnClick="LinkButton9_Click">Retornar</asp:LinkButton>
                        </div>
                    </td>
                </tr>
            </table>
            <div style="text-align: center">
                <asp:Label ID="lblmensaje" runat="server" style="color: #CC3300"></asp:Label>
            </div>
        </asp:Panel>
    
    
        <asp:Panel ID="Panel4" runat="server">
            Detalle de movientos realizados<asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource5" ForeColor="Black" GridLines="Horizontal" style="font-size: small" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                <Columns>
                    <asp:CheckBoxField DataField="validar" SortExpression="validar" />
                    <asp:BoundField DataField="CUOTA" HeaderText="CUOTA" SortExpression="CUOTA" />
                    <asp:BoundField DataField="MEDIOPAG" HeaderText="M.PAGO" SortExpression="MEDIOPAG" />
                    <asp:BoundField DataField="NOPERACION" HeaderText="N.OPER" SortExpression="NOPERACION" />
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" />
                    <asp:BoundField DataField="FPAGADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FPAGADA" SortExpression="FPAGADA" />
                    <asp:BoundField DataField="DIASVENC" HeaderText="DV" ReadOnly="True" SortExpression="DIASVENC" />
                    <asp:BoundField DataField="OBSERVACION" HeaderText="OBSERVACION" SortExpression="OBSERVACION" />
                    <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" ReadOnly="True" />
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/editar.png" ShowSelectButton="True">
                    <ControlStyle Height="20px" Width="20px" />
                    </asp:CommandField>
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle Font-Bold="True" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="p_detallepagos" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="lblidpago" Name="idpago" PropertyName="Text" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server">
            <hr />
            <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SqlDataSource6" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" style="font-size: small" Visible="False">
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" Visible="False" />
                    <asp:BoundField DataField="CUOTA" HeaderText="CUOTA" SortExpression="CUOTA" />
                    <asp:BoundField DataField="MEDIOPAG" HeaderText="MEDIOPAG" SortExpression="MEDIOPAG" />
                    <asp:BoundField DataField="NOPERACION" HeaderText="NOPERACION" SortExpression="NOPERACION" />
                    <asp:BoundField DataField="IMPORTE" HeaderText="IMPORTE" SortExpression="IMPORTE" />
                    <asp:BoundField DataField="FPAGADA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FPAGADA" SortExpression="FPAGADA" />
                    <asp:BoundField DataField="DIASVENC" HeaderText="DIASVENC" ReadOnly="True" SortExpression="DIASVENC" />
                    <asp:BoundField DataField="OBSERVACION" HeaderText="OBSERVACION" SortExpression="OBSERVACION" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource6" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="p_detallepagos2ID" SelectCommandType="StoredProcedure">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView3" Name="idDETALLEpago" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            Cuota: N°<asp:Label ID="lblidcuota" runat="server"></asp:Label>
            <asp:Label ID="lblcuota" runat="server" style="font-weight: 700"></asp:Label>
            &nbsp;
            <br />
            <table class="auto-style18">
                <tr>
                    <td>MEDIO PAGO:</td>
                    <td style="text-align: left">
                        <asp:Label ID="lblmediopago" runat="server" style="font-weight: 700" Visible="False"></asp:Label>
                        <asp:DropDownList ID="ddlmediopago" runat="server" DataSourceID="SqlDataSource7" DataTextField="medioPago" DataValueField="idmediopago">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_medioPago]"></asp:SqlDataSource>
                    </td>
                      <td>N°OPERACION:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtopracion" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>IMPORTE:</td>
                    <td>
                        <asp:TextBox ID="txtimport" runat="server"></asp:TextBox>
                    </td>
                      <td>FECHA PAGO:</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtfechapago" runat="server" Enabled="False" Width="80%"></asp:TextBox>
                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/caledario.png" OnClick="ImageButton2_Click" Width="20px" />
                    </td>
                </tr> 
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td colspan="2">
                        <asp:Calendar ID="Calendar1" runat="server" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" Width="200px" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td>Observación:</td>
                    <td colspan="3">
                        <asp:TextBox ID="txtobserva" runat="server" Width="100%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>
                        <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="Actualizar" />
                    </td>
                    <td>
                        <asp:Button ID="Button6" runat="server" OnClick="Button6_Click" Text="Cancelar" />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
               
            </table>
            <br />
            <br />&nbsp;&nbsp;
            <asp:Label ID="lblmensaje2" runat="server" style="color: #CC3300"></asp:Label>
            <br />
            
            <br />
        </asp:Panel>
        <br />
        <br />
    
    
    </asp:Panel>
    </center>
    <center>
    <asp:Panel ID="PanelRegpagoDetalle" runat="server">
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="COD" DataSourceID="SqlDataSource8" ForeColor="Black" GridLines="Horizontal" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" CssClass="auto-style22" Width="100%">
            <Columns>
                <asp:CommandField ButtonType="Image" SelectImageUrl="~/images/buscarr.png" ShowSelectButton="True">
                <ControlStyle Height="20px" Width="20px" />
                </asp:CommandField>
                <asp:BoundField DataField="COD" HeaderText="COD" ReadOnly="True" SortExpression="COD" />
                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                <asp:BoundField DataField="CATEGORIA" HeaderText="CATEGORIA" SortExpression="CATEGORIA" />
                <asp:BoundField DataField="TITULAR" HeaderText="TITULAR" SortExpression="TITULAR" />
                <asp:BoundField DataField="PROVEEDOR" HeaderText="PROVEEDOR" SortExpression="PROVEEDOR" />
                <asp:BoundField DataField="GLOSA" HeaderText="GLOSA" SortExpression="GLOSA" />
                <asp:BoundField DataField="CUOTA" HeaderText="CUOTA" SortExpression="CUOTA" />
                <asp:BoundField DataField="FVENCTO" DataFormatString="{0:dd/MM/yyyy}" HeaderText="FVENCTO" SortExpression="FVENCTO" />
                <asp:BoundField DataField="M" HeaderText="M" ReadOnly="True" SortExpression="M" />
                <asp:BoundField DataField="MCUOTAS" DataFormatString="{0:0,0.00}" HeaderText="IMPORTE" SortExpression="MCUOTAS" Visible="False" />
                <asp:BoundField DataField="MONTOPAGADO" DataFormatString="{0:0,0.00}" HeaderText="I.PAGADO" SortExpression="MONTOPAGADO" Visible="False" />
                <asp:BoundField DataField="XPAGARaprox" HeaderText="POR PAGAR APROX" ReadOnly="True" SortExpression="XPAGARaprox" >
                <HeaderStyle Width="90px" />
                <ItemStyle HorizontalAlign="Right" />
                </asp:BoundField>
                <asp:BoundField DataField="EMP" HeaderText="EMP" ReadOnly="True" SortExpression="EMP" Visible="False" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource8" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="P_REGULARIZARPAGOS" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
        <asp:Panel ID="PanelregpagoDetalle0" runat="server">
            <span class="auto-style7">Detalle de pagos por regularizar:<br /> </span>
            <br />
            <table>
                <tr>
                    <td class="auto-style8"><strong>Item a regularizar:</strong>
                        <asp:Label ID="lblcoddetalle10" runat="server"></asp:Label>
                        <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Empresa: </strong>
                        <asp:Label ID="lblempresa10" runat="server"></asp:Label>
                        &nbsp;<hr /> </td>
                </tr>
                <tr>
                    <td class="auto-style8"><strong>Titular: </strong>
                        <asp:Label ID="lbltitular10" runat="server"></asp:Label>
                        <br />
                        <strong>Categoria:</strong>
                        <asp:Label ID="lblcategoria10" runat="server"></asp:Label>
                        <strong>&nbsp;</strong><br /> <strong>Provedor: </strong>
                        <asp:Label ID="lblproveedor10" runat="server"></asp:Label>
                        <br />
                        <strong>Concepto:</strong>
                        <asp:Label ID="lblconcepto10" runat="server"></asp:Label>
                        <br />
                        <strong>Monto Capital: </strong>
                        <asp:Label ID="lblmonto10" runat="server"></asp:Label>
                        <br />
                        <strong>F. Vencimiento: </strong>
                        <asp:Label ID="lblfvencto10" runat="server"></asp:Label>
                        <br />
                        <strong>Pago/Cuota:</strong> N°
                        <asp:Label ID="lblpagocuota10" runat="server"></asp:Label>
                        <br />
                        <strong>Importe aprox:</strong>
                        <asp:Label ID="lblmoneda10" runat="server"></asp:Label>
                        &nbsp;
                        <asp:Label ID="lblimporte10" runat="server"></asp:Label>
                        <br />
                        <hr />
                        <strong>Monto pagado:&nbsp;</strong>
                        <asp:Label ID="lblmoneda11" runat="server"></asp:Label>
                        &nbsp;<asp:Label ID="lblmontpagado10" runat="server"></asp:Label>
                        <br />
                        <strong>Por pagar aprox:</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="lblmoneda12" runat="server" style="color: #CC3300"></asp:Label>
                        <asp:Label ID="lblapagaraprox10" runat="server" style="color: #CC3300"></asp:Label>
                        <br />
                        <hr />
                        <strong>Observación: </strong>
                        <asp:Label ID="lblobservacion10" runat="server"></asp:Label>
                        <hr />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">Fecha pago:&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtfechapago10" runat="server" TextMode="Date" Width="200px"></asp:TextBox>
                        <br />
                        Tipo de pago:
                        <asp:DropDownList ID="ddltppago10" runat="server" DataSourceID="SqlDataSource9" DataTextField="medioPago" DataValueField="idmediopago" Width="200px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource9" runat="server" ConnectionString="<%$ ConnectionStrings:CorporacionAgroConnectionString %>" SelectCommand="SELECT * FROM [c_medioPago]"></asp:SqlDataSource>
                        <br />
                        N° operacion:
                        <asp:TextBox ID="txtnumerooperacion10" runat="server" Width="200px"></asp:TextBox>
                        <br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Importe:
                        <asp:TextBox ID="txtimportepagado10" runat="server" step="0.01" type="number" Width="200px"></asp:TextBox>
                        <br />
                        Observación:
                        <br />
                        <asp:TextBox ID="txtobservacion10" runat="server" TextMode="MultiLine" Width="300px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">
                        <asp:Button ID="Button10" runat="server" OnClick="Button10_Click" Text="Registrar" Width="60%" />
                        <asp:Button ID="Button20" runat="server" OnClick="Button20_Click" Text="Cancelar" Width="35%" />
                        <br />
                        <asp:Label ID="lblmensaje10" runat="server" style="color: #CC3300"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
    </asp:Panel>
        </center>
    <p>
        &nbsp;</p>
</asp:Content>
