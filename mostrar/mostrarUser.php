<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>mostrar datos</title>
</head>
<body>
		<table align="center" border="1" bgcolor="green">
		<td>ID</td>
		<td>File</td>
		<td>Type</td>
		<td>Size</td>
		<td>Curso</td>
	<?php
		include 'config.php';
		$condicion = $_GET['curso_materia'];
		$sql = "select * from archivos where mostrar = '1' AND curso = '$condicion'";
		$query = mysqli_query($conexion, $sql);
		//echo "1: $condicion";
		 
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
				<td><?php echo $registro['curso']; ?></td>
              	<td><?php echo "<a href=".$ruta."><IMG SRC=download.png WIDTH=30 HEIGHT=30></a>";?></td>
				<td><?php echo $registro['fecha_upload']; ?></td>
              </tr>
          <?php } ?>
	</table>
      </body>
      </html>
