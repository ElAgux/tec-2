<!DOCTYPE html>
<html>
<head>
	<script>
	function espe(){
	
		var a;
		a = document.getElementById('curso').value;
		if(a>3){
			console.log(a);
			document.getElementById('xd').style.display = 'block';
		}
		else{
		document.getElementById('xd').style.display = 'none';
		}
	}
	</script>
	<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ARCHIVOS</title>
</head>
<body>
<form action="main.php" method="post" enctype="multipart/form-data">  
	<table align="center" border="1" bgcolor="green">
    <td>Seleccione archivo: <input name="file" type="file" size="150" maxlength="150" required=""></td>
    <td>Curso: <input type="number" id="curso" name="curso" min="1" max="7" required="" onchange="espe();"></td>
	<td width="13%">
	<select name="especialidad" style="display: none" id="xd" required="">
		<option value="programacion">Programacion</option>
		<option value="electronica">Electronica</option>
		<option value="construcciones">Construcciones</option>
	</select>
</td>
    <td>N~Manteria: <input type="number" id="materia" name="materia" min="1" max="10" required=""> </td>
  <td><input name="submit" type="submit" value="SUBIR ARCHIVO"></td>
  <a href="../mostrar/mostrarAdmin.php">Ver Archivos</a>
  </table>
</form> 
</body>
</html>
