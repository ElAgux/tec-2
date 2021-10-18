<?php
/* hace conexion con la base de datos */

include '../config.php';

$nombre=$_POST["nombre"];
$apellido=$_POST["apellido"];
$dni=$_POST["dni"];
$email=$_POST["email"];
$pass=$_POST["pass"];



                                                             
require 'sendgrid/vendor/autoload.php'; // If you're using Composer (recommended)
// Comment out the above line if not using Composer
// require("<PATH TO>/sendgrid-php.php");
// If not using Composer, uncomment the above line and
// download sendgrid-php.zip from the latest release here,
// replacing <PATH TO> with the path to the sendgrid-php.php file,
// which is included in the download:
// https://github.com/sendgrid/sendgrid-php/releases


$emails = new \SendGrid\Mail\Mail(); 
$emails->setFrom("soporte_registrotecnica2@hotmail.com", "Tecnica 2 Inscripciones"); //desde
$emails->setSubject("Confirmar Registro"); //asunto 
$emails->addTo($email, $nombre); //ccorreo y nombre destinatario
$emails->addContent("text/plain", ""); // texto plano
$emails->addContent( 
//texto con html
    "text/html", 
	"<h1>Bienvenido al Sistema de Inscripciones de la Técnica 2</h1>
		<h4>Hola, '.$nombre.'. Te enviamos este correo para verificar tu registro.</h4>
	
	"
);
$sendgrid = new \SendGrid("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");
try {
    $response = $sendgrid->send($emails);
 //   print $response->statusCode() . "\n";
   // print_r($response->headers());
    //print $response->body() . "\n";
} catch (Exception $e) {
    echo 'Caught exception: '. $e->getMessage() ."\n";
}

?>