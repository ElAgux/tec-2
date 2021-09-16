<?php
$host='localhost';
$usuario='root';
$db='proyecto';
$conexion=mysqli_connect($host,$usuario,'','proyecto');
	if($conexion){
		echo "Se ha conectado al servidor<br>";
	}
	else{
		echo "no se pudo conectar";}
?>