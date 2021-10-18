<?php

session_start();
//
/*
    $id_usuario = $_SESSION["id_usuario"];
    $codigo_perfil = $_SESSION["codigo_perfil"];
    $nombre_usuario = $_SESSION["nombre_usuario"];
    $email_usuario = $_SESSION['email_usuario'];
    $nombre_perfil = $_SESSION["nombre_perfil"];
    $nombre_persona = $_SESSION["nombre_persona"];
    $apellido_persona = $_SESSION["apellido_persona"];
    $dni_persona = $_SESSION["dni_persona"];
*/
    //
    $sesion_iniciada = $_SESSION['sesion_iniciada'];
    //En esta sección no se utiliza ninguna de las variables anteriores,
    //solo $sesion_iniciada.
//
/*******************************************************/

//Verifica si se ha iniciado una sesiòn de usuario.
if($sesion_iniciada == true)
{
    session_destroy();
    header("Location: ../index.html");
}
else
{
    header("Location: login.php");
}
?>