<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/newStyles4.css">
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
<title>Mi Perfil</title>
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