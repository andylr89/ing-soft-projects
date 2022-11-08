<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/newStyles3.css">
<!--Font Awesome-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!--Boxicons-->
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="shortcut icon" href="img/Recurso2.png" type="image/x-icon" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
<title>Registro Empleador</title>
<body>

<div class="hide-sidebar">
		<input type="checkbox" id="check"> <label for="check">
			<i class="fa-solid fa-bars" id="cancel2"></i>
		</label>

		<div class="sidebar">
			<ul>
				<input type="checkbox" id="check">
				<label for="check"> <i class="fa-regular fa-circle-xmark"
					id="cancel"></i>
				</label>
				<li><img src="/img/Recurso2.png" alt="Logo sidetapp" id="logo"></li>
				<li><a href="index.html">Inicio</a></li>
				<li><a href="login.jsp">Iniciar Sesión</a></li>
				<li><a href="empleado.jsp">Registrar Empleado</a></li>
				<li><a href="empleador.jsp">Registrar Empleador</a></li>
				<li><a href="oferta.jsp">Buscar Oferta</a></li>
			</ul>
		</div>
	</div>
	
	<div class="container-form sign-up">
		<form class="formulario">
			<h2 class="create-account">Registrarse como Empleador</h2>
			<div class="tipop">
				<select type="text" name="firstname" placeholder="Ciudad"
					id="Ciudad">
					<option value="value1">Seleccione tipo persona</option>
					<option></option>
				</select>
			</div>
			<div class="dni">
				<input type="text" name="firstname" placeholder="Identificación"
					id="idNumber">
			</div>
			<div class="nit">
				<input type="text" name="firstname" placeholder="Razón Social"
					id="razonSocial">
			</div>
			<div class="nombre">
				<input type="text" name="firstname" placeholder="Nombre "
					id="nombre">
			</div>
			<div class="apellido">
				<input type="text" name="firstname" placeholder="Apellido"
					id="apellido">
			</div>
			<div class="correo">
				<input type="text" name="firstname" placeholder="Correo Electrónico" id="email">
			</div>
			<div class="direccion">
				<input type="text" name="firstname" placeholder="Dirección"
					id="direccion">
			</div>
			<div class="telefono">
				<input type="tel" name="firstname" placeholder="Telefono"
					id="telefono">
			</div>
			<div class="ciudad">
				<select id="ciudad">
					<option value="value1">Seleccione Ciudad</option>
				</select>
			</div>
			<div class="nombrerl">
				<input type="text" name="firstname"
					placeholder="Representante legal" id="repLegal">
			</div>
			<div class="contrasena">
				<input type="password" name="pass" placeholder="Contraseña"
					id="passw">
			</div>
			<div>
				<input type="submit" value="enviar" onclick="enviar()">
			</div>
		</form>
	</div>
</body>
</html>