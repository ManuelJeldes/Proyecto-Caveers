<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Carrito</title>
<link rel="stylesheet" href="./index.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
</head>
<body>
	<div id="loading-overlay" class="loading-overlay">
		<img src="/Assets/Icons/Logo_sombrero.png" alt="Cargando..."
			class="loading-spinner" />
	</div>
	<!--LATERAL-->
	<div class="wrapper">
		<aside class="aside">
			<div>
				<h1 class="aside__user">USER</h1>
			</div>
			<nav class="panel">
				<ul class="panel__list">
					<li><a href="./index.html" class="boton-menu panel__volver"><i
							class="bi bi-arrow-90deg-left"></i>Seguir viendo </a></li>
					<li class="panel__item-favorito"><a href="./"
						class="boton-menu panel__favorito active"><i
							class="bi bi-star-fill"></i>Favorito </a></li>
				</ul>
			</nav>
			<footer>
				<p class="footer__text">COPYRIGHT</p>
			</footer>
		</aside>
		<!--MAIN-->
		<main class="main">
			<h2 class="main___titulo">Todas los favoritos</h2>
			<div class="contenedor-favorito">
				<p class="favorito-vacio">
					Favoritos vacios <i class="bi bi-emoji-frown-fill"></i>
				</p>
				<!--FAVORITO-->
				<div class="favoritos__productos disabled">
					<div class="favoritos__producto">
						<img src="./derecho.jpg" alt="" class="favoritos__imagen" />
						<div class="favoritos__producto-titulo">
							<small>Titulo</small>
							<h3>Derecho</h3>
						</div>
						<div class="favoritos__cantidad">
							<small>Cantidad</small>
							<p>1</p>
						</div>
						<div class="favoritos__precio">
							<small>Precio</small>
							<p>$545465</p>
						</div>
						<button class="favoritos__eliminar">
							<i class="bi bi-trash3-fill"></i>
						</button>
					</div>
				</div>

				<div class="favoritos__productos">
					<div class="favoritos__producto">
						<img src="./derecho.jpg" alt="" class="favoritos__imagen" />
						<div class="favoritos__producto-titulo">
							<small>Titulo</small>
							<h3>Derecho</h3>
						</div>
						<div class="favoritos__cantidad">
							<small>Cantidad</small>
							<p>1</p>
						</div>
						<div class="favoritos__precio">
							<small>Precio</small>
							<p>$545465</p>
						</div>
						<button class="favoritos__eliminar">
							<i class="bi bi-trash3-fill"></i>
						</button>
					</div>
				</div>

				<div class="favoritos__acciones disabled">
					<div class="favoritos__acciones-izquierda">
						<button class="favoritos__vaciar">Vaciar faforitos</button>
					</div>
				</div>
			</div>
		</main>
	</div>
</body>
</html>
