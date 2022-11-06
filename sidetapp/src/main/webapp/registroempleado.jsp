<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style4.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="shortcut icon" href="img/Recurso2.png" type="image/x-icon" />
<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
<title>Registrar Empleado</title>
</head>
<body>

<!-- 	<div id="error" class="alert alert-danger visually-hidden" role="alert">Error -->
<!-- 		al crear el usuario, verifique que no exista un usuario conel ID ingresado</div> -->

<!-- 	<div id="correcto" class="alert alert-success visually-hidden" -->
<!-- 		role="alert">Usuario creado con exito</div> -->
		
	<!-- <iframe class="menu1" src="index.html"></iframe>  
  <iframe  class="menu" src="index1.html"></iframe>-->
  
	<div class="container-form sign-up">
		<form class="formulario" action="http://localhost:8080/registrarempleado" method="POST">
			<h2 class="create-account">Empleado</h2>
			<div class="dni">
				<input type="text" name="id" placeholder="Identificacion"
					id="idNumber">
			</div>
			<div class="nombre">
				<input type="text" name="name" placeholder="Nombre" id="nombre">
			</div>
			<div class="fecha">
				<input type="date" name="fechaNac"
					placeholder=" Feha de nacimiento" id="fechaNacimiento">
			</div>
			<div class="nombre">
				<input type="text" name="lastName" placeholder="Apellido"
					id="apellido">
			</div>
			<div class="ciudad">
				<select id="ciudad">
					<option value="">Seleccione Ciudad</option>
					<option value="bogota">Bogotá</option>
					<option value="medellin">Medellín</option>
				</select>
			</div>
			<div class="area">
				<input type="text" name="firstname"
					placeholder="Area de conocimiento" id="areaConoci">
					<input type="email" name="email" placeholder="Correo Electronico"
					id="email">	
			</div>
			<div class="habilidad">
				<input type="text" name="ability" placeholder="Habilidad"
					id="habilidad">

			</div>
			<div class="direccion">
				<input type="text" name="address" placeholder="Dirección"
					id="direccion">
			</div>
			<div class="telefono">
				<input type="tel" name="telephone" placeholder="Telefono"
					id="telefono">
			</div>
			<div class="disponibilidad">
				<input type="text" name="availability" placeholder="Disponibilidad"
					id="disponibilidad">
			</div>
			<div class="hv">
				<input type="text" name="cv" placeholder=" Selección hoja de vida"
					id="hojaVida">
			</div>
			<div class="calificacion">
				<input type="text" name="score" placeholder="Calificación"
					id="calificacion">
			</div>
			<div class="contrasena">
				<input type="password" name="pass" placeholder="Contraseña"
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
			request.open('GET', 'http://localhost:8080/consultarempleado', false);
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
			
			};
			console.log(match);
			if (!match) {
				var formData = new FormData();	
				formData.append("dni_empleado", document.getElementById("idNumber").value);
				formData.append("contrasena_empleado",document.getElementById("passw").value);
				formData.append("correo_empleado",document.getElementById("email").value);
				formData.append("nombre_empleado",document.getElementById("nombre").value);
				formData.append("apellido_empleado", document.getElementById("apellido").value);
				formData.append("fecha_nacimiento_empleado", document.getElementById("fechaNacimiento").value);
				formData.append("categoria_empleado", document.getElementById("areaConoci").value);
				formData.append("habilidades_empleado", document.getElementById("habilidad").value);
				formData.append("ciudad_empleado",document.getElementById("ciudad").value);
				formData.append("direccion_empleado", document.getElementById("direccion").value);
				formData.append("contacto_empleado", document.getElementById("telefono").value);
				formData.append("disponibilidad_empleado", document.getElementById("disponibilidad").value);
				formData.append("hoja_vida", document.getElementById("hojaVida").value);
				formData.append("calificacion_empleado", document.getElementById("calificacion").value);
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