<?php
/* hace conexion con la base de datos */

include 'config.php';

$nombre=$_POST["nombre"];
$apellido=$_POST["apellido"];
$dni=$_POST["dni"];
$email=$_POST["email"];
$pass=$_POST["pass"];
$pass_cifrado=password_hash($pass,PASSWORD_DEFAULT);

   
$sql = "INSERT INTO usuario(nombre,apellido,mail,dni,password) VALUES ('$nombre','$apellido','$email','$dni','$pass_cifrado')";

$sql_query = mysqli_query($conexion, $sql);

?>