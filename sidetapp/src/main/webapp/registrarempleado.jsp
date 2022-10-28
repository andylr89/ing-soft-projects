<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/style3.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="shortcut icon" href="img/Recurso 2.PNG" type="image/x-icon" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
<title>Registrar Empleado</title>
</head>

<body>

	<div class="container-form sign-up">
		<form class="formulario">
			<h2 class="create-account">Empleado</h2>

			<div class="dni">
				<input type="text" name="firstname" placeholder="Identificacion "
					id="Dni">
			</div>
			<div class="nombre">
				<input type="text" name="firstname" placeholder="Nombre Usuario"
					id="Nombre">
			</div>
			<div class="fecha">
				<input type="date" name="fechaesperada"
					placeholder=" Feha de nacimiento" id=" Feha_de_nacimiento">
			</div>
			<div class="apellido">
				<input type="text" name="lastname" placeholder="Apellido"
					id="Apellido">
			</div>
			<div class="ciudad">
				<select type="text" name="firstname" placeholder="Ciudad"
					id="Ciudad" default="value1">
					<option value="value1">Seleccione Ciudad</option>
					<option value="value2">Bogotá</option>

				</select>
			</div>
			<div class="area">
				<input type="text" name="firstname"
					placeholder="Area de conocimiento" id="Area_de_conocimiento">
			</div>
			<div class="habilidad">
				<input type="text" name="firstname" placeholder="Habilidad"
					id="Habilidad">

			</div>
			<div class="direccion">
				<input type="" name="firstname" placeholder="Dirección"
					id="Dirección">
			</div>
			<div class="telefono">
				<input type="tel" name="firstname" placeholder="Telefono"
					id="Telefono">
			</div>
			<div class="disponibilidad">
				<input type="text" name="firstname" placeholder="Disponibilidad"
					id="Disponibilidad">
			</div>
			<div class="hv">
				<input type="text" name="archivosubido"
					placeholder="Selección hoja de vida" id="Selección_hoja_de_vida">
			</div>
			<div class="calificacion">
				<input type="text" name="lastname" placeholder="Calificación"
					id="Calificación">
			</div>
			<div class="contrasena">
				<input type="password" name="pass" placeholder="Contraseña"
					id="Contraseña">
			</div>
			<div>
				<input type="submit" value="Enviar" onclick="enviar()">
			</div>
		</form>
	</div>
	<script>
		function enviar() {
			var x = document.getElementById("Dni").value;
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
			console.log(match);

			if (match == false) {
				var newEmp = new NewEmp();

				newEmp.append("DNI", document.getElementById("DNI").value);
				newEmp.append("password",
						document.getElementById("Contraseña").value);
				newEmp.append("nombre_usu",
						document.getElementById("Nombre").value);
				newEmp.append("apellido_usu", document
						.getElementById("Apellido").value);
				newEmp.append("fechanacimiento_usu", document
						.getElementById("Fecha_de_nacimiento").value);
				newEmp.append("areaconocimiento_usu", document
						.getElementById("Area_de_conocimiento").value);
				newEmp.append("habilidad_usu", document
						.getElementById("Habilidad").value);
				newEmp
						.append("ciudad",
								document.getElementById("Ciudad").value);
				newEmp.append("direccion_usu", document
						.getElementById("Direccion").value);
				newEmp.append("telefono_usu", document
						.getElementById("Telefono").value);
				newEmp.append("disponibilidad_usu", document
						.getElementById("Disponibilidad").value);
				newEmp.append("hoja_vida", document
						.getElementById("Seleccion_hoja_de_vida").value);
				newEmp.append("calificacion_usu", document
						.getElementById("Calificacion").value);

				var nreq = new XMLHttpRequest();
				nreq.open("POST", "http://localhost:8080/registrarempleado");

				var reply = document.getElementById("error");
				reply.classList.add("visually-hidden");
				var reply2 = document.getElementById("correcto");
				reply2.classList.remove("visually-hidden");

				document.getElementById("Contraseña").value = "";
				document.getElementById("Nombre").value = "";
				document.getElementById("Apellido").value = "";
				document.getElementById("Fecha_de_nacimiento").value = "";
				document.getElementById("Area_de_conocimiento").value = "";
				document.getElementById("Habilidad").value = "";
				document.getElementById("Ciudad").value = "";
				document.getElementById("Direccion").value = "";
				document.getElementById("Telefono").value = "";
				document.getElementById("Disponibilidad").value = "";
				document.getElementById("Calificacion").value = "";

			} else {
				var reply = document.getElementById("error");
				reply.classList.remove("visually-hidden");
				var reply2 = document.getElementById("correcto");
				reply2.classList.add("visually-hidden");

				document.getElementById("Contraseña").value = "";
				document.getElementById("Nombre").value = "";
				document.getElementById("Apellido").value = "";
				document.getElementById("Fecha_de_nacimiento").value = "";
				document.getElementById("Area_de_conocimiento").value = "";
				document.getElementById("Habilidad").value = "";
				document.getElementById("Ciudad").value = "";
				document.getElementById("Direccion").value = "";
				document.getElementById("Telefono").value = "";
				document.getElementById("Disponibilidad").value = "";
				document.getElementById("Calificacion").value = "";

			}
		}
	</script>
</body>

</html>