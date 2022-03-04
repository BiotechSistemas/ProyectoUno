<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmarCargo.aspx.cs" Inherits="biotech.bio.ventas.Unidades.ConfirmarCargo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

    

       <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css">
  <!-- Bootstrap core CSS -->

  <link href="../../a_lib/css/bootstrap.min.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="../../a_lib/css/mdb.min.css" rel="stylesheet">
  <!-- Your custom styles (optional) -->
  <link href="../../a_lib/css/style.css" rel="stylesheet">
    
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


    <title>CARGO UNIDADES</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <div class="container">
		  <div class="row-fluid">

              <br />
           
               <div class="card" >
 <div class="card-body">
      
         <h3 class="card-header"> <asp:Image ID="Image2" runat="server" Height="40px" ImageUrl="~/images/logoicono.png" Width="40px" />
                          <strong>&nbsp;ACTA DE ENTREGA Y RECEPCIÓN DE UNIDAD </strong></h3>
         <asp:Panel ID="Panel2" runat="server" Visible="False">
             <h3>
                 <asp:Label ID="lblidcargo" runat="server"></asp:Label>
                 estado asesor:
                 <asp:Label ID="lblAsesorEstado" runat="server"></asp:Label>
                 &nbsp;fechasesor:
                 <asp:Label ID="lblasesorFecha" runat="server"></asp:Label>
                 &nbsp;<asp:Label ID="lblidPuestoCargoAsesor" runat="server"></asp:Label>
                 &nbsp;idasesor:<asp:Label ID="lblidpersonal" runat="server" Visible="False"></asp:Label>
                 &nbsp;&nbsp; idusuariosesion :
                 <asp:Label ID="lblusuario" runat="server"></asp:Label>
             </h3>
         </asp:Panel>
    
    <%--<h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>--%>
         <asp:Label ID="lblmensaje" runat="server" Font-Size="Small" ForeColor="#990000"></asp:Label>
      <br />
    <p class="text-justify">
       
        En la ciudad de Lima&nbsp;
        <asp:Label ID="lblfecha1" runat="server"></asp:Label>
&nbsp;, siendo las
        <asp:Label ID="lblhora1" runat="server"></asp:Label>
&nbsp;horas, presentes el Sr. Christian Alberto Rueda Matta, 
        que para los siguientes efectos representa a la Empresa <strong>BIOTECH CORP S.A.C.</strong>, identificada con RUC. N° 20601613396 
        y el(la) Sr.(Srta.) <asp:Label ID="lblpersonal" runat="server" style="font-weight: 700"></asp:Label>&nbsp;,&nbsp; identificado con el DNI(PTP) : <asp:Label ID="lblDNI" runat="server" style="font-weight: 700"></asp:Label>, ocupando el cargo de: 
        <asp:Label ID="lblCargo" runat="server" style="font-weight: 700"></asp:Label>

        , a quien en este Acto se le hace entrega formal de un (a) camioneta, marca 
        <asp:Label ID="lblmarca" runat="server" style="font-weight: 700"></asp:Label>
        , modelo
        <asp:Label ID="lblmodelo" runat="server" style="font-weight: 700"></asp:Label>
        , color
        <asp:Label ID="lblcolor" runat="server" style="font-weight: 700"></asp:Label>
        , Placa de Rodaje N°
        <asp:LinkButton ID="lbtnPlaca" runat="server" OnClick="lbtnPlaca_Click"></asp:LinkButton>
        <asp:Label ID="lblplaca" runat="server" Visible="False"></asp:Label>
        <asp:Label ID="lblidplaca" runat="server" Visible="False"></asp:Label>
        ;
         dejando constancia que el <strong>VEHICULO</strong> se encuentra en perfecto estado de Mantenimiento y Funcionamiento, con su respectiva documentación vigente, el cual se detalla en la respectiva hoja que se anexa; con la finalidad de realizar trabajos de campo, trámites y todo tipo de actividades que se requiera para el desarrollo de nuestras actividades comerciales del rubro.<br />
        

        Por el presente documento, <strong>EL COLABORADOR</strong> acepta y se hace responsable voluntariamente bajo los <strong>TERMINOS Y CONDICIONES</strong> en las que se hace la entrega del <strong>VEHICULO</strong>
         identificado en el encabezado del presente documento, así como también asume toda responsabilidad respecto a asegurar en forma oportuna el mantenimiento
         preventivo y correctivo que se requiera para la buena conservación y funcionamiento del <strong>VEHICULO</strong>, teniendo en consideración el kilometraje recorrido; 
        para lo cual deberá cumplir con los procedimientos internos de la empresa en concordancia con las normas legales vigentes.
En este sentido, en caso exista algún tipo de desperfecto, falla mecánica o incidente, deberá ser evaluado previamente para determinar si estas fueron 
        propias del desgaste de la unidad en condiciones normales de uso o de responsabilidad atribuible al <strong>COLABORADOR</strong>.
    
        </p>
      

     <p class="text-right"><asp:LinkButton ID="lbManualProcedimiento" runat="server" OnClick="lbManualProcedimiento_Click">MANUAL DE PROCEDIMIENTOS DE UNIDADES</asp:LinkButton></p>
       
         <u><H5> <strong>TERMINOS Y CONDICIONES DE LA ACEPTACIÓN: </strong></H5></u>
        <ol  class="text-justify">
            <li>
                <strong>EL COLABORADOR</strong> deberá usar <strong>EL VEHICULO</strong> exclusivamente para realizar trabajos de campo, trámites y todo tipo de actividades que se requiera para el desarrollo de nuestras actividades comerciales del rubro.
            </li>
            <li>
                <strong>EL COLABORADOR</strong>, tiene prohibido prestar el <strong>VEHICULO</strong> a terceros, que no tengan relación directa con la empresa, en caso el <strong>COLABORADOR</strong> incumpla con esta disposición, será el único responsable, haciéndose cargo de todos los daños y perjuicios que pueda sufrir el <strong>VEHICULO</strong>, así como también será responsabilidad del <strong>COLABORADOR</strong>, todos daños causado a un tercero. Del mismo modo, en caso extraordinario sea necesario entregar en forma temporal el <strong>VEHICULO</strong> a un tercero, se deberá contar con la autorización expresa de la Gerencia General o por encargo el área de Asistencia de Operaciones y/o la Analista Administrativo y elaborarse la documentación pertinente, informando a los canales superiores. 
            </li>
            <li><strong>EL COLABORADOR</strong>, tiene completamente prohibido conducir en estado Etílico y /o bajo algún tipo de Sustancias Estupefacientes y Psicotrópicas, en cumplimiento de la normatividad vigente en nuestro Ordenamiento Jurídico Peruano, por lo que, a su incumplimiento, éste será considerado como Falta Grave y por ende será responsable 
ante cualquier tipo de infracción impuesta y/o accidente que ocasione, toda vez que <strong>LA EMPRESA</strong>, se desliga de toda responsabilidad que atañe a su comportamiento y/o estado en el que se encuentre a la fecha de ocurrido los hechos; por tal motivo <strong>LA EMPRESA</strong>, se reserva el derecho de iniciar las acciones legales correspondientes, así como a imponer las sanciones y/o correctivos según el reglamento y demás disposiciones internas.

            </li>

            <li>
                <strong>EL COLABORADOR</strong>, en caso de accidente, pérdida, robo parcial o total y/o algún tipo de siniestro relacionado, será responsable de <strong>AVISAR INMEDIATAMENTE</strong> a <strong>LA EMPRESA</strong> (Asistente de Operaciones, Analista Administrativo, Gestion y Desarrollo Humano y Gerencia General) así como de presentar la denuncia policial en la jurisdicción correspondiente dentro de un plazo máximo de 24 horas de ocurrido el hecho, a fin de efectuarse los trámites respectivos, según sea el caso. En ese orden de ideas, <strong>EL COLABORADOR</strong>, por ningún motivo, deberá suscribir y/o comprometer a la empresa a un acuerdo extrajudicial y/o contractual con terceros, sin previo conocimiento, coordinación y autorización de las áreas correspondientes, debiendo ceñirse a cumplir con las obligaciones y/o manual de procedimientos establecidos en <strong>LA EMPRESA</strong>, así como también en cumplimiento de todas las normas legales vigentes según correspondan.
 <ul>
            <li>	En el caso que el <strong>VEHÍCULO</strong>, se vea involucrado en algún tipo de accidente y/o siniestro que <strong>NO</strong> se encuentre justificada laboralmente y/o se determine que se encontraba expuesto algún tipo de riesgo permanente-latente, sin haber tomado las medidas preventivas del caso, que sea fuera de los horarios de trabajo y/o jurisdicción laboral, será de total responsabilidad del <strong>COLABORADOR</strong>, todos los gastos que se originen por pago de daños, reparaciones, deducibles o reposición del <strong>VEHICULO</strong>. 
 </li>

            <li>	En caso de accidente en donde no exista lesión personal, deberá registrar la denuncia y realizar el dosaje etílico cuantitativo dentro de las 24 horas; caso contrario se presumirá estado etílico; por lo que, el daño o pérdida del vehículo será asumido por el <strong>COLABORADOR</strong>.
 </li>

            <li>	En caso se compruebe que el trabajador estuvo conduciendo en estado de ebriedad, se le iniciara su procedimiento de despido, por vulnerar el Articulo 25, inciso a) y e) del D.S. 003-97-TR.
 </li>
     </ul>
                 </li>

            <li>
                <strong>EL COLABORADOR</strong>, será responsable de mantener en buenas condiciones <strong>EL VEHICULO</strong>, tomando en consideración las siguientes recomendaciones: 
 <ul>
            <li>
	Reportar oportunamente al área de Asistencia de Operaciones las fallas mecánicas que presente la unidad a su cargo, caso contrario serán responsables del pago por causas del mayor deterioro que sufra el vehículo.
 </li>
 <li>	
     Mantenimiento preventivo y/o correctivo, previo conocimiento y autorización del área de Asistencia de Operaciones dentro de los procedimientos del área: Formato S-1, Formato S-2, Cotización, Autorización de mantenimiento, Factura original c/ placa incluida, Informe técnico con fotos adjuntas y un acta de conformidad de recepción de los trabajos realizados. Todo documento con firma, nombre y DNI de usuario. 
 </li>
 <li>Para los casos de reembolsos, deberán cumplirse los mismos procedimientos establecidos en el punto anterior.
 </li>
 <li>Comunicar con anterioridad el vencimiento de los documentos adheridos al buen manejo del vehículo (Brevete, SOAT, Certificado de Inspección Técnica Vehicular, Kit de Seguridad, etc.).
     </li></ul>
            </li>

             <li>
                En caso de producirse cualquier accidente por negligencia, imprudencia o impericia por parte del <strong>COLABORADOR</strong> que afecte la integridad del vehículo entregado, incluyendo las infracciones de tránsito y/o cualquier tipo de daño no declarado oportunamente, será responsabilidad absoluta del <strong>COLABORADOR</strong>; comprometiéndose voluntariamente a aceptar el descuento automático de su remuneración, liquidación u otro documento en el que pueda estar inmerso un valor económico, de acuerdo a nuestro Manual de Procedimientos establecidos para dicho efecto. 
 </li>
             <li>	Solo serán amparados los siniestros que se hayan desencadenado durante la jornada laboral (horas y días de trabajo establecidos por la empresa mediante documentos internos en concordancia con las disposiciones pertinentes según sea el caso); salvo que exista una previa coordinación realizada formalmente con el Jefe inmediato informando al área de Asistencia de Operaciones, Analista Administrativo, Gestion y Desarrollo Humano y/o Gerencia General, en ese sentido; NO serán amparados los sucesos reiterativos, eventualidades del mismo tipo ocasionados por el mismo usuario durante la periodicidad anual de la póliza de Seguro, quedando sujeto a la aplicación Manual de Procedimientos de Unidades y otras disposiciones pertinentes en cuanto le sean aplicables.
 </li>
             <li>En caso de cambio de unidad vehicular, deberá realizarse según procedimientos establecidos y formalmente, mediante un documento similar, 
                 en el cual se deberá especificar los Nombres de quién recibe y quien otorga y deberá de contar con el respectivo Visto Bueno de la 
                 Gerencia General  y/o Área inmediata superior, comunicando previamente a través de correo electrónico a la Analista Administrativo 
                 con atención a la colaboradora <a href="mailto:#">luz.huillca@biotechcorp.com.pe</a> y también al área de Asistencia de Operaciones atención al colaborador 
                 <a href="mailto:#">gdh@biotechcorp.com.pe</a>. Para la asignación y uso de toda unidad vehicular es imprescindible contar con la autorización formal de las Gerencias y Jefaturas respectivas considerando los documentos que acrediten el manejo adecuado de la unidad: respectiva licencia de conducir requerida por la autoridad de tránsito para cada tipo de vehículo las mismas que deberán de encontrarse vigentes, en caso de estar suspendido y/o caduco o haber sido objeto de suspensión, se suspenderá inmediatamente la posesión y uso del vehículo, hasta la regularización del mismo; fuera de las medidas y acciones a tomarse por no comunicar y/o haber sorprendido o faltado a la verdad al momento de su asignación o durante el periodo de uso.   
 </li>
             <li>En los casos de colocación, reincidencia y acumulación excesiva de papeletas de infracción, <strong>EL COLABORADOR</strong>,  asume el pago de las mismas, así como también los gastos que se generen del mal uso y manejo del mismo  y/o de todas las fallas reiterativas que se haya generado; de igual modo, asumirá todos los gastos que genere el deterioro del bien, así como todos aquellos gastos en los cuales  <strong>LA EMPRESA</strong> haya incurrido a causa de la irresponsabilidad del <strong>COLABORADOR</strong>; adicionalmente <strong>EL COLABORADOR</strong> será sujeto a evaluación por parte del área de Asistencia de Operaciones, respecto a la suspensión temporal y/o definitiva del uso del <strong>VEHÍCULO</strong>.
 </li>
             <li>	<strong>EL COLABORADOR</strong>, en caso haga uso de sus vacaciones reglamentarias, permisos, licencias u otro beneficio laboral, deberá entregar en forma inmediata el vehículo a la Gerencia General en coordinación con el área de Asistencia de Operaciones, debiendo cumplir con el procedimiento establecido para la formulación del acta de recepción. 
 </li>
             <li>Las cláusulas del presente documento se rigen bajo las normas del Usufructo y de todo lo que a este le atribuya, de conformidad con el <strong>ARTÍCULO 999º DEL CÓDIGO CIVIL</strong>.</li>
            <li>
                <p class="MsoNormal">
                    <![if !supportLists]><![endif]><span lang="ES-PE">En caso <b>LA EMPRESA</b>, en su calidad de propietaria del vehículo, se encuentre en la obligación de pagar alguna papeleta, indemnización por daños y perjuicios, honorario de abogado, o cualquier otro gasto originado por algún incidente, choque, omisión u otro causado por <b>EL COLABORADOR</b>, ésta procederá a pagar el monto adeudado al acreedor, el mismo que luego será cobrado y/o descontado del sueldo o liquidación de beneficios sociales de <b>EL COLABORADOR</b>. <o:p></o:p></span>
                </p>
&nbsp;</li>
          
        
        </ol>
         <p class="text-justify">
Finalmente, agradeceremos a Ud. el cumplimiento de los términos y condiciones establecidos en el presente documentos con el fin de mantener en buen estado del <strong>VEHICULO</strong> entregado, y así evitar algún tipo de descuento innecesario que perjudique a su persona, así mismo solicitamos su compromiso y toda la responsabilidad necesaria a fin de contar con los siguientes documentos y accesorios de obligatorio cumplimiento, frente a cualquier eventualidad en la cual se lo soliciten.


    </p>
      <table align="center" class="w-100">
          <tr>
              <td>
                  <asp:Image ID="Image4" runat="server" ImageUrl="~/_archivos/FirmasPersonal/RUEDA.jpg" Width="300px" />
              </td>
              <td>
                  <asp:Image ID="Image3" runat="server" Width="300px" />
              </td>
          </tr>
          <tr>
              <td>&nbsp;</td>
              <td>&nbsp;</td>
          </tr>
      </table>
    
            
            <div class="card-footer">
            <asp:CheckBox ID="CheckBox1" runat="server" Text="He revisado y aceptado los acuerdos referentes a la conformidad de recepción de unidad." />
   </div>
</div> </div>

              <asp:Panel ID="Panel1" runat="server">
                <asp:Button ID="Button1" CssClass="btn btn-green btn-lg" runat="server" Text="REGISTRAR CONFORMIDAD" Width="40%" OnClick="Button1_Click" OnClientClick=" return confirm('RECEPCIÓN DE UNIDADES, Desea dar conformidad referentes a los terminos en mención?');" />
              <asp:Button ID="Button2" CssClass="btn btn-danger btn-lg" runat="server" Text="OBSERVAR" Width="40%" OnClick="Button2_Click" OnClientClick=" return confirm('RECHAZAR CONFORMIDAD DE RECEPCIÓN DE UNIDADES, Ud. rechazar conformidad ?');" />

    
                  <asp:Button ID="BTNCERRAR" runat="server" OnClick="BTNCERRAR_Click" Text="CERRAR" Width="15%" Height="50px" />

    
       </asp:Panel>



             
  <asp:Panel ID="Panel3" runat="server">
      <asp:LinkButton ID="lbtncerrar2" runat="server" Font-Size="X-Large" OnClick="lbtncerrar2_Click">Cerrar formulario</asp:LinkButton>
           
        </asp:Panel>
             
      </div>
              
             </div>
        
    
    </div>
       
    </form>
</body>
</html>
