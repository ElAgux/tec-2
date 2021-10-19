<?php
    
    $servidor = "localhost";
    $usuario  = "root";
    $password = "";
    $base_de_datos = "proyecto";

    $conexion = new mysqli($servidor, $usuario, $password, $base_de_datos);

    if(mysqli_connect_errno()){
        echo 'Conexion Fallida : ', mysqli_connect_error();
        exit();
    }

?>