<?php 
include '../config.php';

function str_cat() {
  $args = func_get_args() ;
   
  // Asserts that every array given as argument is $dim-size.
  // Keys in arrays are stripped off.
  // If no array is found, $dim stays unset.
  foreach($args as $key => $arg) {
    if(is_array($arg)) {
      if(!isset($dim))
        $dim = count($arg) ;
      elseif($dim != count($arg))
        return FALSE;
      $args[$key] = array_values($arg) ;
    }
  }
       
  // Concatenation
  if(isset($dim)) {
    $result = array() ;
    for($i=0;$i<$dim;$i++) {
      $result[$i] = '' ;
      foreach($args as $arg)
        $result[$i] .= ( is_array($arg) ? $arg[$i] : $arg ) ;
    }
    return $result ;
  } else {
    return implode($args) ;
  }
}


$file_name = str_replace(' ','_',$_FILES['file']['name']);
$file_tmp = $_FILES['file']['tmp_name'];
$ruta = "../upload/".$file_name;
$n_curso = $_POST['curso'];
$espe=$_POST['especialidad'];
$n_materia = $_POST['materia'];
$fecha = DATE('Y-m-d');
$n_espe;
switch($espe){
//case "default": $n_espe= '0';break;
case "programacion": $n_espe= '1';break;
case "electronica": $n_espe= '2';break;
case "construcciones": $n_espe= '3';break;
default:$n_espe='0';break;
}
if($n_curso<='3'){
  $n_espe='0';
}
//$curso_m = str_cat($n_curso,$n_materia);

move_uploaded_file($file_tmp, $ruta);

$sql = "INSERT INTO archivos(name,type,size,curso,materia,n_especialidad,fecha_upload,mostrar) VALUES ('$file_name','".$_FILES['file']['type']."','".$_FILES['file']['size']."','$n_curso','n_materia','$n_espe','$fecha','1')";

$sql_query = mysqli_query($conexion, $sql);

echo "<b>Upload exitoso!. Datos:</b><br>";  
echo "Nombre: <a href=".$ruta.">".$_FILES['file']['name']."</a><br>";  
echo "Type File: <i>".$_FILES['file']['type']."</i><br>";  
echo "Size: <i>".$_FILES['file']['size']." bytes</i><br>"; 
echo "Curso: $n_curso"; 
echo "<br>curso_materia: $n_materia";
echo "<br>N_espe: $n_espe";
echo "<br><hr><br>";  
?>
