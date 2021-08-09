<?php 
include 'config.php';

$file_name = $_FILES['file']['name'];
$file_tmp = $_FILES['file']['tmp_name'];
$ruta = "upload/".$file_name;

move_uploaded_file($file_tmp, $ruta);

$sql = "INSERT INTO archivos(name,type,size) VALUES ('$file_name','".$_FILES['file']['type']."','".$_FILES['file']['size']."')";

$sql_query = mysqli_query($conexion, $sql);

echo "<b>Upload exitoso!. Datos:</b><br>";  
echo "Nombre: <a href=".$ruta.">".$_FILES['file']['name']."</a><br>";  
echo "Type File: <i>".$_FILES['file']['type']."</i><br>";  
echo "Size: <i>".$_FILES['file']['size']." bytes</i><br>";  
echo "<br><hr><br>";  
?>
