<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style4.css">
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
<title>Registro Empleado</title>
</head>
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
				<li><a href="login.jsp">Iniciar Sesi�n</a></li>
				<li><a href="empleado.jsp">Registrar Empleado</a></li>
				<li><a href="empleador.jsp">Registrar Empleador</a></li>
				<li><a href="oferta.jsp">Buscar Oferta</a></li>
			</ul>
		</div>
	</div>

	<div class="container-form sign-up">
		<form class="formulario">
			<h2 class="create-account">Registrarse como Empleado</h2>
			<div class="dni">
				<input type="text" name="firstname" placeholder="Identificaci�n"
					id="idNumber">
			</div>
			<div class="nombre">
				<input type="text" name="firstname" placeholder="Nombre" id="nombre">
			</div>
			<div class="apellido">
				<input type="text" name="firstname" placeholder="Apellido"
					id="apellido">
			</div>
			<div class="fecha">
				<input type="date" name="fechaesperada"
					placeholder="Fecha de nacimiento" id="fechaNacimiento">
			</div>
			<div class="correo">
				<input type="text" name="firstname" placeholder="Correo Electr�nico"
					id="email">
			</div>
			<div class="ciudad">
				<select name="firstname" id="ciudad">
					<option value="value1">Seleccione Ciudad</option>
					<option value="value2">Bogot�</option>
					<option value="value3">Medell�n</option>
				</select>
			</div>
			<div class="area">
				<input type="text" name="firstname"
					placeholder="Area de conocimiento" id="areaConoci">
			</div>
			<div class="habilidad">
				<input type="text" name="firstname" placeholder="Habilidad"
					id="habilidad">
			</div>
			<div class="direccion">
				<input type="text" name="firstname" placeholder="Direcci�n"
					id="direccion">
			</div>
			<div class="telefono">
				<input type="tel" name="firstname" placeholder="Telefono"
					id="telefono">
			</div>
			<div class="disponibilidad">
				<input type="text" name="firstname" placeholder="Disponibilidad"
					id="disponibilidad">
			</div>
			<div class="hv">
				<input type="text" name="archivosubido"
					placeholder="Selecci�n hoja de vida" id="hojaVida">
			</div>
			<div class="calificacion">
				<input type="text" name="lastname" placeholder="Calificaci�n"
					id="calificacion">
			</div>
			<div class="contrasena">
				<input type="password" name="pass" placeholder="Contrase�a"
					id="passw">
			</div>
			<div>
				<input type="submit" value="Enviar" onclick="enviar()">
			</div>
		</form>
	</div>

	<script type="text/javascript">
		function enviar() {

			var x = document.getElementById("idNumber").value;
			var request = new XMLHttpRequest();
			var match = false;
			request.open('GET', 'http://localhost:8080/consultarempleado',
					false);
			request.send(null);
			var empleado = null;
			if (request.status == 200)
				empleado = JSON.parse(request.responseText);
			console.log(JSON.parse(request.responseText));
			for (i = 0; i < empleado.lenght; i++) {
				console.log(empleado[i].DNI);
				if (empleado[i].DNI === x) {
					console.log(empleado[i].DNI + " " + x);
					match = true;
					break;
				}

			}
			;
			console.log(match);
			if (!match) {
				var formData = new FormData();
				formData.append("dni_empleado", document
						.getElementById("idNumber").value);
				formData.append("contrasena_empleado", document
						.getElementById("passw").value);
				formData.append("correo_empleado", document
						.getElementById("email").value);
				formData.append("nombre_empleado", document
						.getElementById("nombre").value);
				formData.append("apellido_empleado", document
						.getElementById("apellido").value);
				formData.append("fecha_nacimiento_empleado", document
						.getElementById("fechaNacimiento").value);
				formData.append("categoria_empleado", document
						.getElementById("areaConoci").value);
				formData.append("habilidades_empleado", document
						.getElementById("habilidad").value);
				formData.append("ciudad_empleado", document
						.getElementById("ciudad").value);
				formData.append("direccion_empleado", document
						.getElementById("direccion").value);
				formData.append("contacto_empleado", document
						.getElementById("telefono").value);
				formData.append("disponibilidad_empleado", document
						.getElementById("disponibilidad").value);
				formData.append("hoja_vida", document
						.getElementById("hojaVida").value);
				formData.append("calificacion_empleado", document
						.getElementById("calificacion").value);
				var nreq = new XMLHttpRequest();
				console.log(formData);
				nreq.open("POST", "http://localhost:8080/registrarempleado")

				document.getElementById("idNumber").value = "";
				document.getElementById("passw").value = "";
				document.getElementById("email").value = "";
				document.getElementById("nombre").value = "";
				document.getElementById("apellido").value = "";
				document.getElementById("fechaNacimiento").value = "";
				document.getElementById("areaConoci").value = "";
				document.getElementById("habilidad").value = "";
				document.getElementById("ciudad").value = "";
				document.getElementById("direccion").value = "";
				document.getElementById("telefono").value = "";
				document.getElementById("disponibilidad").value = "";
				document.getElementById("hojaVida").value = "";
				document.getElementById("calificacion").value = "";
				nreq.send(formData);

			} else {

				document.getElementById("idNumber").value = "";
				document.getElementById("passw").value = "";
				document.getElementById("email").value = "";
				document.getElementById("nombre").value = "";
				document.getElementById("apellido").value = "";
				document.getElementById("fechaNacimiento").value = "";
				document.getElementById("areaConoci").value = "";
				document.getElementById("habilidad").value = "";
				document.getElementById("ciudad").value = "";
				document.getElementById("direccion").value = "";
				document.getElementById("telefono").value = "";
				document.getElementById("disponibilidad").value = "";
				document.getElementById("hojaVida").value = "";
				document.getElementById("calificacion").value = "";
			}
		}
	</script>
</body>
</html>