<!DOCTYPE html>
<html>
<head>
	<title>mostrar datos</title>
</head>
<body>
		<table align="center" border="1" bgcolor="green">
		<td>name</td>
		<td>type</td>
		<td>size</td>
	<?php
		include 'config.php';
		include 'index.php';
		$sql = "select * from archivos where id ";
		$query = mysqli_query($conexion, $sql);
		while ($registro= mysqli_fetch_array ($query)){?>
			<tr>
				<td><?php echo "<a href=".$ruta.">".$_FILES['file']['name']."</a>;"?> </td>
				
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
