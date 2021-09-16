<?php
/* hace concecion con la base de datos */ 
$conectar=mysqli_connect('localhost','root','','proyecto');

/* pasa las variables del formulario a php*/
$nombre=$_POST['nombre'];
$correo=$_POST['mail'];
$contraseña =$_POST['contraseña'];
$id=uniqid(); /* crea un valor aleatorio */

   
/*$guarda es la variable que contiene el codigo que guarda los daatos en la base de datos  */
$guarda="INSERT INTO usuario(`nombre`, `correo`, `contraseña`,`id`) VALUES ('$nombre','$correo','$contraseña','$id')";


$consulta="SELECT * FROM `usuario` WHERE `correo`='$correo'";  /*  valida si el usuario ya esta registrado */
$resul=mysqli_query($conectar,$consulta);                                                      
$valida=mysqli_num_rows($resul);                                                               
                                                                                                      
if($valida)
{                                                                                   
    echo                                                                                       
    '                                                                                        
    <script>
    alert("ESTE USUARIO YA ESTA REGISTRADO");
    window.location="register.html";
    </script>
    ';      
}else{                                                                                                 
/*funcio que guarda los datos *importante* */
if(mysqli_query($conectar,$guarda))
{
    echo '
    <script>
    alert("USUARIO REGISTRADO CON EXITO");
    window.location="login.html";
    </script>
    ';
}
}




?>