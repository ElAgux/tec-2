<?php
session_start();

$mail=$_POST['email'];
$contra=$_POST['pass'];
$conectar=mysqli_connect('localhost','root','','proyecto');
$consulta="SELECT * FROM `usuario` WHERE `mail`='$mail' AND `password`='$contra' "; /*consulta si exite el usuario y contraseña esta condicion se evalua en el if($valida) */
$resul=mysqli_query($conectar,$consulta);  /* esta funcion hace la consulta de arriba*/

$valida=mysqli_num_rows($resul); /*esta funcion devuelve el numero de filas de un resultado es decir si es mayor a 1 existe en la base de datos  */
/* aqui si el correo y contraseña son correcto */
if($valida){
$idsesion="SELECT * FROM `usuario` WHERE `mail`= '$mail' ";  /* para encontrar el id correspondiente al correo que seria la sesion */
$resul2=mysqli_query($conectar,$idsesion);
$valida2=mysqli_fetch_array($resul2);
$_SESSION['usuario']=$valida2[6];    /*el id del correo "usuario" es el ide de la sesion */

   /* esto valida si el usuario es admin o no le da los privilegios */

    echo"llego super";
    header('Location: ../mostrar/mostrarAdmin.php');

}


else{

    /* aqui consulta si el correo esta registrado pero se equivoco en la contraseña y le dice si esta registrado o contraseña incorrecta*/
    $consulta2="SELECT * FROM `usuario` WHERE `mail`='$mail'";
    $resul2=mysqli_query($conectar,$consulta2);
    $valida2=mysqli_num_rows($resul2);
   if($valida2){
    echo
    '
    <script>
    alert("CONTRASEÑA O USUARIO INCORRECTO");
    window.location="login.html";
    </script>
    
    ';
   }else
   {
    echo
    '
    <script>
    alert("USUARIO NO REGISTRADO");
    window.location="../register/register.html";
    </script>
    ';
   }

    
}

?>