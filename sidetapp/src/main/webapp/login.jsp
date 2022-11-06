<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="shortcut icon" href="img/Recurso2.png" type="image/x-icon" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
<title>SidetApp Login</title>
</head>
<body>

	<div class="alert-box">
		<p class="alert" id="error">Esto es un mensaje de alerta</p>
	</div>
	<div class="container-form sign-up">
		<div class="welcome-back">
			<div class="message">
				<h2>Bienvenido a SidetApp</h2>

			</div>
		</div>
		<form class="formulario"
			action="http://localhost:8080/consultarempleado?" method="GET">
			<h2 class="create-account">Iniciar Sesión</h2>
			<div class="iconos">
				<div class="border-icon">
					<i class='bx bxl-instagram'></i>
				</div>
				<div class="border-icon">
					<i class='bx bxl-linkedin'></i>
				</div>
				<div class="border-icon">
					<i class='bx bxl-facebook-circle'></i>
				</div>
				<div class="border-icon">
					<i class='bx bxl-twitter'></i>
				</div>
			</div>
			<input type="email" placeholder="Email" id="email"> <input
				type="password" placeholder="Contraseña" id="password"> <input
				type="submit" value="Ingresar" onclick="comparar()">
			<p>
				<a href="Olvide_mi_contrasena.html">¿Olvidaste tu contraseña?</a>
			</p>
		</form>
	</div>
	<script>
  
  
  	var x = document.getElementById("email").value;
	console.log("Test");
	var y = document.getElementById("password").value;
	var url = "http://localhost:8080/consultarempleado?";
	var xmlhttp = new XMLHttpRequest();
	
		function comparar(){
			xmlhttp.open("GET", url, true);
			xmlhttp.onreadystatechange = function(){
				console.log("Test");
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200){
					Console.log("Test2");
					var empleado = JSON.parse(xmlhttp.responseText);
					for (i = 0, i < empleado.lenght; i++){
						console.log(empleado);
						console.log(x);
						console.log(empleado[i].correo_empleado);
						console.log(y);
						console.log(empleado[i].password);
						
						if (empleado[i].correo_empleado === x){
							if(empleado[i].password === y){
								console.log("Sí");
// 								var element = document.getElementById("error");
// 								element.classList.add("visually-hidden");
								document.getElementById("email").value = "";
								document.getElementById("password").value = "";
								window.location.href="http://localhost:8080/index.html";
								return;
							} else {
								console.log("Error en Contraseña o Correo");
// 								var element = document.getElementById("error");
// 								element.classList.add("visually-hidden");
								document.getElementById("email").value = "";
								document.getElementById("password").value = "";
								return;
							};
						};
					};
					console.log("Usuario no encontrado");
// 					var element = document.getElementById("error")
					document.getElementById("email").value = "";
					document.getElementById("password").value = "";
					return;
				};
			};
			xmlhttp.send();
		};
  
  </script>

</body>

</html>