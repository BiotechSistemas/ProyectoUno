<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rpt_Productos.aspx.cs" Inherits="biotech.reporte.Rpt_Productos" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        LISTADO DE PRODUCTOS<br />
        <br />
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" Width="666px">
            <LocalReport ReportEmbeddedResource="biotech.reporte.Report1.rdlc" DisplayName="Report1.rdlc" ReportPath="reporte/Report1.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="DataSet1" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="GetData" TypeName="biotech.CorporacionAgroDataSetTableAdapters.st_productoInventarioTableAdapter" OldValuesParameterFormatString="original_{0}"></asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
