<?php
/* hace conexion con la base de datos */

include '../config.php';

$nombre=$_POST["nombre"];
$apellido=$_POST["apellido"];
$dni=$_POST["dni"];
$email=$_POST["email"];
$pass=$_POST["pass"];


   
$sql = "INSERT INTO usuario(nombre,apellido,mail,dni,password) VALUES ('$nombre','$apellido','$email','$dni','$pass')";

$consulta="SELECT * FROM `usuario` WHERE `mail`='$email'";  /*  valida si el usuario ya esta registrado */
$resul=mysqli_query($conexion,$consulta);                                                      
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
if(mysqli_query($conexion,$sql))
{
    echo '
    <script>
    alert("USUARIO REGISTRADO CON EXITO");
    window.location="../login/login.html";
    </script>
    ';
}
}
                                                             



?>