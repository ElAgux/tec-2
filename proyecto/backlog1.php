<?php
include 'config.php';

$contrasenia=$_POST['pass'];
$nombre=$_POST['nombre'];


session_start();
//include_once "index.php"; //ver esto

function verificar_login($nombre,$contrasenia,$result) {
    $sql = "SELECT * FROM usuario WHERE usuario = '$nombre' and password = '$contrasenia'";
    $rec = mysqli_query($sql);
    $count = 0;

    while($row = mysqli_fetch_object($rec))
    {
        $count++;
        $result = $row;
    }

    if($count == 1) {
        return 1;
    }

    else
    {
        return 0;
    }
}

if(!isset($_SESSION['userid']))//ver esto
{
    if(isset($_POST['login']))//ver esto
    {
        if(verificar_login($_POST['nombre'],$_POST['contrasenia'],$result) == 1)
        {
            $_SESSION['userid'] = $result->dni;
            header("location:index.php");
        }
        else
        {
            echo '<div class="error">Su usuario es incorrecto, intente nuevamente.</div>';
        }
    }
?>
