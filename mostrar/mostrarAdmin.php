<?php
session_start();
//
	$id_usuario = $_SESSION["id_usuario"];

    $sesion_iniciada = $_SESSION['sesion_iniciada'];

if($sesion_iniciada == true)
{
?>
<html>
<head>
	<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>mostrar datos</title>
</head>
<body>
	<div  align="right" >
	<a href="../login/logout.php">
                    Cerrar Sesi&oacute;n
    </a>
</div>
		<table align="center" border="1" bgcolor="green">
		<td>ID</td>
		<td>File</td>
		<td>Type</td>
		<td>Size</td>
	<?php
		include '../config.php';
		$sql = "select * from archivos where mostrar = '1'";
		$query = mysqli_query($conexion, $sql);
		 
		while ($registro= mysqli_fetch_array ($query)){?>
			<?php
			$file_name = $registro['name'];
			$file_name_final = trim ($file_name);
			$ruta = "../upload/".$file_name_final; 
			?>
			<tr>
				<td><?php echo $registro['id']; ?></td>
				<td><?php echo $registro['name']; ?></td>
                <td><?php echo $registro['type']; ?></td>
                <td><?php echo $registro['size']; ?></td>
                 <td><?php echo $registro['mostrar']; ?></td>
              	<td><?php echo "<a href=".$ruta."><IMG SRC=download.png WIDTH=30 HEIGHT=30></a>";?></td>
				<td><?php echo $registro['fecha_upload']; ?></td>
              </tr>
          <?php } ?>
		  <form action="../sis_upload/subir.php">
       	 		<input type="submit" value="Subir Archivo" />
		</form>
	</table>
      </body>
      </html>
<?php } ?>

