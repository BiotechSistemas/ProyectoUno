<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Activo.aspx.cs" Inherits="biotech.bio.ventas.Activos.Activo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

   <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
   
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Ficha del activo</title>
    
     <!-- Bootstrap Core CSS -->
    <link href="../../vendorF/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="../../vendorF/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../../dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="../../vendorF/morrisjs/morris.css" rel="stylesheet">
    <!-- Custom Fonts -->
    <link href="../../vendorF/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">



    </head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid">

      
                
                   
      <asp:Label ID="lblpersonal" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lblcodpersonal" runat="server" Text="RICAR" Visible="False"></asp:Label>
                        <asp:Label ID="lblnivel10" runat="server" Visible="False"></asp:Label></small>

                   <br />
   

                                <div class="col-md-6 centered">
           <div class="panel panel-success">
                <div class="panel-heading">
                        <i class="fa fa-file-text-o"></i>   DETALLE DEL BIEN / ACTIVO COD: <asp:Label ID="lblcodactivo" runat="server"></asp:Label>
                        &nbsp;</div>

                <div class="panel-body">

                    <div class="row">
                      <div class="col-sm-2  col-xs-2">
                          <strong>ACTIVO</strong>
                      </div>
                      <div class="col-sm-4  col-xs-10">
                          <asp:Label ID="lblactivo" runat="server"></asp:Label>
                      </div>
                        <div class="col-sm-2  col-xs-2">
                            <strong>ESTADO</strong>
                      </div>
                      <div class="col-sm-4  col-xs-10">
                          <asp:Label ID="lbldisponibilidad" runat="server"></asp:Label>
                      </div>
                    </div>

                   

                      
                    <div class="row">
                  <div class="col-sm-2">
                      <strong>DETALLE</strong>
                      </div>
                  <div class="col-sm-9">
                      <asp:Label ID="lbldescripcion" runat="server"></asp:Label>
                    </div>
                      </div>
                    
                    <div class="row">
                  <div class="col-sm-2">
                      <strong>TIPO
                      </strong>
                      </div>
                  <div class="col-sm-4">
                      <asp:Label ID="lbltipo" runat="server"></asp:Label>
                      <asp:Label ID="lblidtipo" runat="server" Visible="False"></asp:Label>
                    </div>
                        <div class="col-sm-2">
                            <strong>TITULAR</strong>
                      </div>
                  <div class="col-sm-4">
                      <asp:Label ID="lbltitular" runat="server"></asp:Label>
                    </div>
                      </div>
                    

                      <div class="row">
                  <div class="col-sm-2">
                      <strong>MARCA</strong>
                      </div>
                  <div class="col-sm-4">
                      <asp:Label ID="lblmarca" runat="server"></asp:Label>
                     </div>
                          <div class="col-sm-2">
                              <strong>MODELO</strong>
                      </div>
                  <div class="col-sm-4">
                      <asp:Label ID="lblmodelo" runat="server"></asp:Label>
                     </div>
                      </div>
                     

                    <div class="row">
                  <div class="col-sm-2">
                      <strong>AÑO</strong>
                      </div>
                  <div class="col-sm-4">
                      <asp:Label ID="lblano" runat="server"></asp:Label>
                     </div>
                        <div class="col-sm-2">
                            <strong>N°CONTRATO</strong>
                      </div>
                  <div class="col-sm-4">
                      <asp:Label ID="lblncontrato" runat="server"></asp:Label>
                     </div>
                      </div>
                       <br />
                     <div class="row">
                  <div class="col-sm-4">
                      <strong>PROCESADOR / MOTOR / SIM
                      </strong>
                      </div>
                  <div class="col-sm-8">
                      <asp:Label ID="lblprocesador" runat="server"></asp:Label>
                     </div>
 </div>
                 
                     <div class="row">
                     <div class="col-sm-4">
                            <strong>RAM / CHASIS / IMEI
                      </strong>
                      </div>
                  <div class="col-sm-8">
                      <asp:Label ID="blram" runat="server"></asp:Label>
                     </div>
                      </div>
                   
                     <div class="row">
                  <div class="col-sm-4">
                      <strong>PLAN DE LINEA</strong>
                      </div>
                  <div class="col-sm-8">
                      <asp:Label ID="lblplanlinea" runat="server"></asp:Label>
                    </div>
                      </div>
 <hr />
                    <asp:Panel ID="Panelgrupo3" runat="server">
                    <div class="row">
                  <div class="col-sm-2">
                      <strong>SEGURO</strong>
                      </div>
                  <div class="col-sm-4">
                      <asp:Label ID="lbleguro" runat="server"></asp:Label>
                     </div>
                        <div class="col-sm-2">
                            <strong>GPS</strong>
                      </div>
                  <div class="col-sm-4">
                      <asp:Label ID="lblgps" runat="server"></asp:Label>
                     </div>
                      </div>


                    <div class="row">
                  <div class="col-sm-2">
                      <strong>LUNAS OSCURAS
                      </strong>
                      </div>
                  <div class="col-sm-9">
                      <asp:Label ID="lblnlunasOscuras" runat="server"></asp:Label>
                    </div>
                      </div>

                    <div class="row">
                  <div class="col-sm-2">
                      <strong>LLANTAS / AROS</strong>
                      </div>
                  <div class="col-sm-9">
                      <asp:Label ID="lblllantas" runat="server"></asp:Label>
                    </div>
                      </div>

                     <div class="row">
                  <div class="col-sm-2">
                      <strong>COMBUSTIBLE</strong>
                      </div>
                  <div class="col-sm-9">
                      <asp:Label ID="lblcombustible" runat="server"></asp:Label>
                    </div>
                      </div>

</asp:Panel>
                  </div>
              
               <div class="panel-heading">
                         <i class="fa fa-stack-overflow"></i>  Imágenes referenciales:</div>
              
                <asp:Image ID="Image1" runat="server" class="img-thumbnail" Height="236px" ImageAlign="AbsMiddle" alt="Imagen N°1,No registra" Width="33%" />
               <asp:Image ID="Image2" runat="server" class="img-thumbnail" Height="236px" ImageAlign="AbsMiddle" alt="Imagen N°2,No registra" Width="33%" />
               <asp:Image ID="Image3" runat="server" class="img-thumbnail" Height="236px" ImageAlign="AbsMiddle" alt="Imagen N°3,No registra"  Width="33%" />
               <asp:Image ID="Image4" runat="server" class="img-thumbnail" Height="236px" ImageAlign="AbsMiddle" alt="Imagen N°4,No registra" Width="33%" />
               <asp:Image ID="Image5" runat="server" class="img-thumbnail" Height="236px" ImageAlign="AbsMiddle" alt="Imagen N°5,No registra" Width="33%" />
              <asp:Image ID="Image6" runat="server" class="img-thumbnail" Height="236px" ImageAlign="AbsMiddle" alt="Imagen N°6,No registra" Width="33%" />




                <br />
                <asp:Label ID="lblmensaje" runat="server" ForeColor="#990000"></asp:Label>






                    <br />
                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-default" runat="server" OnClick="LinkButton1_Click">SALIR</asp:LinkButton>






                    </div>
               </div>
    
                                    </div>
         </div>
    </div>
    </form>
</body>
</html>
