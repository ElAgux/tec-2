<!DOCTYPE html>
<html>
<head>
	<title>mostrar datos</title>
</head>
<body>
		<table align="center" border="1" bgcolor="green">
		<td>ID</td>
		<td>File</td>
		<td>Type</td>
		<td>Size</td>
	<?php
		include 'config.php';
		$sql = "select * from archivos";
		$query = mysqli_query($conexion, $sql);
		while ($registro= mysqli_fetch_array ($query)){?>
			<?php
			$file_name = $registro['name'];
			$file_name_final = trim ($file_name);
			$ruta = "upload/".$file_name_final; 
			?>
			<tr>
				<td><?php echo $registro['id']; ?></td>
				<td><?php echo "<a href=".$ruta.">$file_name</a>";?></td>
                <td><?php echo $registro['type']; ?></td>
                <td><?php echo $registro['size']; ?></td>
              
              
              </tr>


		<?php } ?>
		  <form action="main.php">
       	 		<input type="submit" value="Subir Archivo" />
		</form>
	</table>
</body>
</html>
