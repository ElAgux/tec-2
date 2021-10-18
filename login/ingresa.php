<?php
session_start();

$mail=$_POST['email'];
$contra=$_POST['pass'];
include ('../config.php');

$consulta="SELECT * FROM `usuario` WHERE `mail`='$mail' AND `password`='$contra'"; 
$sql=mysqli_query($conexion,$consulta);  
$valida=mysqli_num_rows($sql); 
$filas = mysqli_fetch_assoc($sql);

    $_SESSION['id_usuario'] = $filas['id_usuario'];

if($valida){
        $sesion_iniciada = true;
        $_SESSION['sesion_iniciada'] = $sesion_iniciada;
        header('Location: ../mostrar/mostrarAdmin.php');
}

else{
    /* aqui consulta si el correo esta registrado pero se equivoco en la contraseña y le dice si esta registrado o contraseña incorrecta*/
    $consulta2="SELECT * FROM `usuario` WHERE `mail`='$mail'";
    $resul2=mysqli_query($conexion,$consulta2);
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
mysqli_free_result($sql);
mysqli_close($conexion);
?>