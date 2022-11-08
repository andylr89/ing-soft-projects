<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/style6.css">
<link rel="stylesheet" href="css/imagen.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="shortcut icon" href="img/Recurso 2.PNG" type="image/x-icon" />
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css'
	rel='stylesheet'>
<title>Mi Perfil</title>
</head>
<body>
	<div class="page-content page-container" id="page-content">
		<div class="padding">
			<div class="row container d-flex justify-content-center">
				<div class="col-xl-6 col-md-12">
					<div class="card user-card-full">
						<div class="row m-l-0 m-r-0">
							<div class="col-sm-4 bg-c-lite-green user-profile">
								<div class="card-block text-center text-white">
									<div class="m-b-25">
										<div class="input-file-container">
											<div class="input-file">
												<p class="input-file__name">Elige una foto ...</p>
												<button type="button" class="input-file__button">
													<i class="fas fa-upload"></i>
												</button>
												<input type="file" name="avatar" id="avatarInput">
											</div>
											<img src="https://i.ibb.co/0Jmshvb/no-image.png"
												class="image-preview" alt="preview image">
										</div>
									</div>
									<h6 class="f-w-600">Nombre</h6>
									<p>Area</p>
									<i
										class=" mdi mdi-square-edit-outline feather icon-edit m-t-10 f-16"></i>
								</div>
							</div>
							<div class="col-sm-8">
								<div class="card-block">

									<div class="row">
										<div class="perfil">
											<p class="m-b-10 f-w-600">Perfil</p>
										</div>

										<div class="identificacion">
											<p class="m-b-10 f-w-600">Identificacion</p>
											<h6 class="text-muted f-w-400">N°</h6>
										</div>
										<div class="nombre">
											<p class="m-b-10 f-w-600">Nombre</p>
											<h6 class="text-muted f-w-400">98979989898</h6>
										</div>
									</div>
									<div class="fecha">
										<p class="m-b-10 f-w-600">Fecha de Nacimiento</p>
										<h6 class="text-muted f-w-400">rntng@gmail.com</h6>
									</div>
									<div class="ciudad">
										<p class="m-b-10 f-w-600">Ciudad</p>
										<h6 class="text-muted f-w-400">98979989898</h6>
									</div>
									<div class="direccion">
										<p class="m-b-10 f-w-600">Direccion</p>
										<h6 class="text-muted f-w-400">rntng@gmail.com</h6>
									</div>
									<div class="telefono">
										<p class="m-b-10 f-w-600">Telefono</p>
										<h6 class="text-muted f-w-400">98979989898</h6>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
	</div>
	<script src="js/main.js"></script>
	<script>
      const avatarInput = document.querySelector('#avatarInput');
      const avatarName = document.querySelector('.input-file__name');
      const imagePreview = document.querySelector('.image-preview');

      avatarInput.addEventListener('change', e => {
      	let input = e.currentTarget;
      	let fileName = input.files[0].name;
      	avatarName.innerText = `File: ${fileName}`;

      	const fileReader = new FileReader();
      	fileReader.addEventListener('load', e => {
      		let imageData = e.target.result;
      		imagePreview.setAttribute('src', imageData);
      	})

      	fileReader.readAsDataURL(input.files[0]);
      });

    </script>
</body>
</html>