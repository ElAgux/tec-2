<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ARCHIVOS</title>
</head>
<body>
<form action="index.php" method="post" enctype="multipart/form-data">  
	<table align="center" border="1" bgcolor="green">
    <td>Seleccione archivo: <input name="file" type="file" size="150" maxlength="150"></td>
    <td>Curso: <input type="number" id="curso" name="curso" min="1" max="7" required=""> </td>
  <td><input name="submit" type="submit" value="SUBIR ARCHIVO"></td>
  <a href="mostrar.php">Ver Archivos</a>
  </table>
</form> 
</body>
</html>
