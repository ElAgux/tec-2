
//aca se realiza el cierre de sesion

<?php
    session_start();
    session_destroy();
    header('location: (index.php');
?>
