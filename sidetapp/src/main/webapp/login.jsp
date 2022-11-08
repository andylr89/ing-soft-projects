<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/newStyles2.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<!--Font Awesome-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
	integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<!--Boxicons-->
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
<link rel="shortcut icon" href="img/Recurso2.png" type="image/x-icon" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
<title>SidetApp Login</title>
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
				<li><a href="login.jsp">Iniciar Sesión</a></li>
				<li><a href="empleado.jsp">Registrar Empleado</a></li>
				<li><a href="empleador.jsp">Registrar Empleador</a></li>
				<li><a href="oferta.jsp">Buscar Oferta</a></li>
			</ul>
		</div>
	</div>

	<!-- 	<div class="alert-box"> -->
	<!-- 		<p class="alert" id="error">Usuario o Contraseña Errados</p> -->
	<!-- 	</div> -->



	<div class="container-form sign-up">
		<div class="welcome-back">
			<div class="message">
				<h2>Bienvenido a SidetApp</h2>
			</div>
		</div>

		<form class="formulario"
			action="http://localhost:8080/consultarempleado" method="GET">
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
			<input type="email" placeholder="Correo Electrónico" id="email"> <input
				type="password" placeholder="Contraseña" id="password"> <input
				type="submit" value="Ingresar" onclick="comparar()">
			<p>
				<a href="recuperarcontrasena.jsp">¿Olvidaste tu contraseña?</a>
			</p>
		</form>
	</div>
	<script>
	console.log("test");
  
		function comparar(){
			var x = document.getElementById("email").value;
			console.log(x);
			var y = document.getElementById("password").value;
			var url = "http://localhost:8080/consultarempleado";
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.open("GET", url, true);
			xmlhttp.onreadystatechange = function(){
				console.log("Test");
				if (xmlhttp.readyState === 4 && xmlhttp.status === 200){
					Console.log("Test2");
					var empleado = JSON.parse(xmlhttp.responseText);
					for (var i = 0; i < empleado.lenght; i++){
						console.log(empleado);
						console.log(x);
						console.log(empleado[i].correo_empleado);
						console.log(y);
						console.log(empleado[i].password);
						
						if (empleado[i].correo_empleado === x){
							if(empleado[i].password === y){
								console.log("Sí");
								document.getElementById("email").value = "";
								document.getElementById("password").value = "";
								window.location.href="http://localhost:8080/index.html";
								return;
							} else {
								console.log("Error en Contraseña o Correo");
								document.getElementById("email").value = "";
								document.getElementById("password").value = "";
								return;
							}
						}
					}
					console.log("Usuario no encontrado");
					document.getElementById("email").value = "";
					document.getElementById("password").value = "";
					return;
				}
			}
			xmlhttp.send();
		}
  
  </script>

</body>

</html>