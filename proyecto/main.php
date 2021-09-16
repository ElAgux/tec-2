<?php 
include 'config.php';

$file_name = str_replace(' ','_',$_FILES['file']['name']);
$file_tmp = $_FILES['file']['tmp_name'];
$ruta = "upload/".$file_name;
$n_curso = $_POST['curso'];
$fecha = DATE('Y-m-d');




move_uploaded_file($file_tmp, $ruta);

$sql = "INSERT INTO archivos(name,type,size,curso,fecha_upload,mostrar) VALUES ('$file_name','".$_FILES['file']['type']."','".$_FILES['file']['size']."','$n_curso','$fecha','1')";

$sql_query = mysqli_query($conexion, $sql);

echo "<b>Upload exitoso!. Datos:</b><br>";  
echo "Nombre: <a href=".$ruta.">".$_FILES['file']['name']."</a><br>";  
echo "Type File: <i>".$_FILES['file']['type']."</i><br>";  
echo "Size: <i>".$_FILES['file']['size']." bytes</i><br>"; 
echo "Curso: $n_curso"; 
echo "<br><hr><br>";  
?>
