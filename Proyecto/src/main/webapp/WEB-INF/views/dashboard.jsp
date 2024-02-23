<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Dashboard</title>
<link rel="stylesheet" href="/CSS/dashbord.css" />
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;700&display=swap"
	rel="stylesheet" />
<link rel="icon" href="/Assets/Icons/icons8-education-64.png"
	sizes="80x80" type="png/jpg" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
</head>
<body>
	<div id="loading-overlay" class="loading-overlay">
		<img src="/Assets/Icons/Logo_sombrero.png" alt="Cargando..."
			class="loading-spinner" />
	</div>
	<header class="header">
		<a href="http://localhost:8080/dashboard"> <img
			src="/Assets/Icons/Logo_sombrero.png" alt="imagen de logo"
			class="header__logo" />
		</a>
		<nav class="main-nav">
			<ul class="main-menu">
				<li class="main-menu__item"><a
					href="http://localhost:8080/dashboard" class="main-menu__link"
					id="link-1">Inicio</a></li>
				<li class="main-menu__item"><a
					href="http://localhost:8080/carreras" class="main-menu__link"
					id="link-2">Ver Carreras</a></li>
				<li class="main-menu__item"><a
					href="http://localhost:8080/test" class="main-menu__link"
					id="link-3">Test</a></li>
				<li class="main-menu__item"><a
					href="http://localhost:8080/logout" class="main-menu__link"
					id="link-3">Cerrar Sesión</a></li>
			</ul>

			<img src="/Assets/Icons/x.svg" alt="Menu" class="header__x" />
		</nav>
		<img src="/Assets/Icons/menu.svg" alt="Menu" class="header__menu" />
	</header>
	<main class="main" id="main">
		<img src="/Assets/Icons/DashboardIcons/32213.png" alt="Arrow"
			class="header__arrow-down" /> <img
			src="/Assets/Icons/DashboardIcons/left.png" alt="Arrow"
			class="header__arrow-up" />
		<section class="lateral">
			<div class="lateral__texts">
				<h2>
					<c:out value="${user.nombre}"></c:out>
				</h2>
			</div>
			<!--Sections-->
			<div class="sections">
				<div class="lateral--active lateral__dashboard section">
					<!-- <img
                            src="/Assets/Icons/DashboardIcons/grid.svg"
                            alt="Dahboard"
                            class="lateral__img icon lateral__dashboard"
                        /> -->
					<i class="bi bi-box icon--active dash-icon"></i>
					<p class="lateral__text text lateral__text-dash">Dashboard</p>
				</div>
				<div class="section lateral__user">
					<!-- <img
                            src="/Assets/Icons/DashboardIcons/user.svg"
                            alt="User"
                            class="lateral__img icon lateral__user"
                        /> -->
					<i class="bi bi-person-fill icon--non-active user-icon"></i>
					<p class="lateral__text text lateral__user lateral__user-text">
						Usuario</p>
				</div>
				<div class="section lateral__favorites">
					<!-- <img
                            src="/Assets/Icons/DashboardIcons/heart.svg"
                            alt="Dahboard"
                            class="lateral__img icon lateral__favorites"
                            id="img-heart"
                        /> -->
					<i class="bi bi-suit-heart icon--non-active fav-icon"></i>
					<p class="lateral__text text lateral__favorites fav-p">
						Favoritos</p>
				</div>
			</div>
		</section>

		<!--SECIONES ESCONDIDAS-->

		<section class="content">
			<!--DASHBOARD-->
			<div class="dashboard">
				<div class="dashboard__titles">
					<h1 class="dashboard__title" id="dashboard__title">
						Bienvenido <span class="dashboard__title dashboard__title--span"
							id="dashboard__title--span"><c:out
								value="${user.nombre}"></c:out></span>
					</h1>
				</div>
				<div class="dashboard__introduction">
					<div class="dashboard__intro">
						<h2 class="dashboard__subtitle">Selecciona una de las
							opciones para comenzar a buscar</h2>
					</div>

					<div class="dashboard__buttons">
						<a href="http://localhost:8080/test"
							class="dashboard__button dashboard__button--no" id="button-1">NO
							SE QUE BUSCAR</a> <a href="http://localhost:8080/carreras"
							class="dashboard__button dashboard__button--si" id="button-2">YA
							SE QUE BUSCAR</a>
					</div>
				</div>
			</div>

			<!--USER-->
			<div class="user">
				<div class="user__card">
					<div class="user__account-info">
						<h2 class="user__account-info__title">Informacion de la
							cuenta</h2>
						<img src="/Assets/Images/option.png" alt=""
							class="user__configuration" />
					</div>

					<div class="user__header">
						<!-- <img
                                src="/Assets/Icons/user-purple.png"
                                alt="User"
                                class="user__img"
                            /> -->
						<i class="bi bi-person-circle user__img"></i>
					</div>
					<div class="user__body">
						<div class="user__information">
							<div class="user__name-info margin-info-user">
								<h2 class="user__information-title">Nombre de usuario</h2>
								<p class="user__name">
									<c:out value="${user.nombre}"></c:out>
								</p>
							</div>
							<div class="user__mail-info margin-info-user">
								<h2 class="user__information-title">Correo electronico</h2>
								<p class="user__email">
									<c:out value="${user.email}"></c:out>
								</p>
							</div>
							<div class="user__pass-info margin-info-user">
								<h2 class="user__information-title">Contraseña</h2>
								<p class="user__email">password *******</p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!--Favorites-->
			<div class="favorites">
				<div class="favorites__texts">
					<div class="favorites__titles">
						<h2 class="favorites__title">Estas son tus carreras favoritas
						</h2>
					</div>
				</div>
				<table class="favorite__table">
					<thead class="favorite__thead">
						<tr>
							<th class="favorite__th">Nombre de la carrera</th>
							<th class="favorite__th">Institución</th>
							<th class="favorite__th">Arancel</th>
							<th class="favorite__th">Acreditación</th>
							<th class="favorite__th">Ver más opciones</th>
						</tr>
					</thead>
					<tbody class="favorite__tbody">
						<c:forEach var="favoritos" items="${user.carrerasFavoritas}">
							<tr>
								<td><c:out value="${favoritos.nombre}"></c:out>
								</td>
								<td><c:out value="${favoritos.institucion.nombre}"></c:out>
								</td>
								<td><c:out value="${favoritos.arancel}"></c:out>
								</td>
								<td><c:out value="${favoritos.acreditacion}"></c:out>
								</td>
								<td><a
									href="http://localhost:8080/compare-careers/${favoritos.tipo}/${favoritos.area}">Más
										opciones</a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</section>
		<footer class="footer">
			<div class="footer__contact">
				<div class="footer__contact-container">
					<img src="/Assets/Icons/phone-call.svg" alt="Phone"
						class="footer__contact-icon" />
					<p class="footer__contact-text">+569 54987448</p>
				</div>
				<div class="footer__contact-container">
					<img src="/Assets/Icons/FormIcons/mail.svg" alt="Mail"
						class="footer__contact-icon" />
					<p class="footer__contact-text">caveers@gmail.com</p>
				</div>
			</div>
			<div class="footer__social">
				<a href="https://google.com" target="_blank"><img
					src="/Assets/Icons/FooterIcons/insta.png" alt="Instagram"
					class="footer__icon" /></a> <a href=""><img
					src="/Assets/Icons/twitter.svg" alt="Twitter" class="footer__icon" /></a>
				<div class="footer__copyright">
					<p>© All rights reserved</p>
				</div>
			</div>
		</footer>
	</main>

	<script src="/Javascript/dash.js"></script>
</body>
</html>
