<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>VS</title>
<link rel="stylesheet" href="/CSS/vs.css" />
<link rel="icon" href="/Assets/Icons/icons8-education-64.png"
	sizes="80x80" type="png/jpg" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous" />
</head>

<body>
	<div id="loading-overlay" class="loading-overlay">
		<img src="/Assets/Icons/Logo_sombrero.png" alt="Cargando..."
			class="loading-spinner" />
	</div>
	<!--HEADER-->
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
					id="link-3">Cerrar Sesion</a></li>
			</ul>

			<img src="/Assets/Icons/x.svg" alt="Menu" class="header__x" />
		</nav>
		<img src="/Assets/Icons/menu.svg" alt="Menu" class="header__menu" />
	</header>
	<!-- Contenido principal de la página -->
	<main class="main">
		<!-- Título "VS" en el objetivo -->
		<div class="obtetivo__textos">
			<h1 class="objetivo__title">Aqui puedes comparar y ver la mejor
				opcion!</h1>
		</div>
		<!-- Sección de objetivos -->
		<section class="comparacion">
			<div class="cards">
				<c:forEach var="carrera" items="${carreras}">
					
					<div class="card">
						<div class="carrera__favorite">
                                <form
                                    action="/fav2"
                                    method="post"
                                    class="card__form"
                                >
                                    <input
                                        type="hidden"
                                        name="carreraId"
                                        value="${carrera.id}"
                                    />
                                    <input
                                        type="hidden"
                                        name="tipo"
                                        value="${carrera.tipo}"
                                    />
                                    <input
                                        type="hidden"
                                        name="area"
                                        value="${carrera.area}"
                                    />
                                    <input
                                        type="hidden"
                                        name="userId"
                                        value="${usuario.id}"
                                    />
                                    <button
                                        type="submit"
                                        class="card__star"
                                        data-carrera-id="${carrera.id}"
                                    >
                                        <img
                                            src="/Assets/Icons/estrella${usuario.carrerasFavoritas.contains(carrera) ? '-amarilla' : ''}.svg"
                                            alt="Star"
                                            class="card__star-img ${usuario.carrerasFavoritas.contains(carrera) ? 'favorita' : 'no-favorita'}"
                                        />
                                    </button>
                                </form>
                            </div>
						<div class="card__header">
							<img class="card__image"
								src="/Assets/Images/CardImages/derecho-real.jpg" alt="Imagen" />
						</div>
						
						<div class="card__body">
							<h2 class="card__title">
								<c:out value="${carrera.nombre}"></c:out>
							</h2>
							<div class="accordion" id="accordionPanelsStayOpenExample">
								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingOne">
										<button class="accordion-button" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#panelsStayOpen-collapseOne"
											aria-expanded="true"
											aria-controls="panelsStayOpen-collapseOne">
											<c:choose>
												<c:when test="${carrera.acreditacion == 'si'}">
													<i class="bi bi-check2-circle"></i>
													<!-- Icono para acreditación exitosa -->
												</c:when>
												<c:otherwise>
													<i class="bi bi-x-circle"></i>
													<!-- Icono para acreditación no exitosa -->
												</c:otherwise>
											</c:choose>
											Acreditacion:

										</button>
									</h2>
									<div id="panelsStayOpen-collapseOne"
										class="accordion-collapse collapse show"
										aria-labelledby="panelsStayOpen-headingOne">
										<div class="accordion-body">
											<p class="accordion__parrafo accordion__parrafo-acreditacion">
												<c:out value="${carrera.acreditacion}"></c:out>
											</p>
										</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingTwo">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#panelsStayOpen-collapseTwo"
											aria-expanded="false"
											aria-controls="panelsStayOpen-collapseTwo">
											<i class="bi bi-currency-dollar"></i> Arancel:
										</button>
									</h2>
									<div id="panelsStayOpen-collapseTwo"
										class="accordion-collapse collapse"
										aria-labelledby="panelsStayOpen-headingTwo">
										<div class="accordion-body">
											<p class="accordion__parrafo accordion__parrafo-arancel">
												<c:out value="${carrera.arancel}"></c:out>
											</p>
										</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingThree">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#panelsStayOpen-collapseThree"
											aria-expanded="false"
											aria-controls="panelsStayOpen-collapseThree">
											<i class="bi bi-clock-history"></i> Duracion:
										</button>
									</h2>
									<div id="panelsStayOpen-collapseThree"
										class="accordion-collapse collapse"
										aria-labelledby="panelsStayOpen-headingThree">
										<div class="accordion-body">
											<p class="accordion__parrafo accordion__parrafo-duracion">
												<c:out value="${carrera.duracion}"></c:out>
											</p>
										</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingFour">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#panelsStayOpen-collapseFour"
											aria-expanded="false"
											aria-controls="panelsStayOpen-collapseFour">
											<c:choose>
												<c:when test="${carrera.jornada eq 'Diurno'}">
													<i class="bi bi-sun"></i>
													<!-- Icono para jornada diurna -->
												</c:when>
												<c:otherwise>
													<i class="bi bi-moon"></i>
													<!-- Icono para jornada nocturna o cualquier otra opción -->
												</c:otherwise>
											</c:choose>
											Jornada:
										</button>
									</h2>
									<div id="panelsStayOpen-collapseFour"
										class="accordion-collapse collapse"
										aria-labelledby="panelsStayOpen-headingFour">
										<div class="accordion-body">
											<p class="accordion__parrafo accordion__parrafo-jornada">
												<c:out value="${carrera.jornada}"></c:out>
											</p>
										</div>
									</div>
								</div>

								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingFive">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#panelsStayOpen-collapseFive"
											aria-expanded="false"
											aria-controls="panelsStayOpen-collapseFive">
											<c:choose>
												<c:when test="${carrera.modalidad eq 'Presencial'}">
													<i class="bi bi-person-check"></i>
													<!-- Icono para modalidad presencial -->
												</c:when>
												<c:otherwise>
													<i class="bi bi-person-x"></i>
													<!-- Icono para modalidad virtual o cualquier otra opción -->
												</c:otherwise>
											</c:choose>
											Modalidad:
										</button>
									</h2>
									<div id="panelsStayOpen-collapseFive"
										class="accordion-collapse collapse"
										aria-labelledby="panelsStayOpen-headingFive">
										<div class="accordion-body">
											<p class="accordion__parrafo accordion__parrafo-modalidad">
												<c:out value="${carrera.modalidad}"></c:out>
											</p>
										</div>
									</div>
								</div>

								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingSix">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#panelsStayOpen-collapseSix"
											aria-expanded="false"
											aria-controls="panelsStayOpen-collapseSix">
											<i class="bi bi-bank"></i> Institucion:
										</button>
									</h2>
									<div id="panelsStayOpen-collapseSix"
										class="accordion-collapse collapse"
										aria-labelledby="panelsStayOpen-headingSix">
										<div class="accordion-body">
											<p class="accordion__parrafo accordion__parrafo-institucion">
												<c:out value="${carrera.institucion.nombre}"></c:out>
											</p>
										</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingSeven">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#panelsStayOpen-collapseSeven"
											aria-expanded="false"
											aria-controls="panelsStayOpen-collapseSeven">
											<i class="bi bi-bank2"></i> Sede:
										</button>
									</h2>
									<div id="panelsStayOpen-collapseSeven"
										class="accordion-collapse collapse"
										aria-labelledby="panelsStayOpen-headingSeven">
										<div class="accordion-body">
											<p class="accordion__parrafo accordion__parrafo-sede">
												<c:out value="${carrera.sede}"></c:out>
											</p>
										</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingEight">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#panelsStayOpen-collapseEight"
											aria-expanded="false"
											aria-controls="panelsStayOpen-collapseEight">
											<i class="bi bi-geo-alt"></i> Region:
										</button>
									</h2>
									<div id="panelsStayOpen-collapseEight"
										class="accordion-collapse collapse"
										aria-labelledby="panelsStayOpen-headingEight">
										<div class="accordion-body">
											<p class="accordion__parrafo accordion__parrafo-region">
												<c:out value="${carrera.region.region}"></c:out>
											</p>
										</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingNine">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#panelsStayOpen-collapseNine"
											aria-expanded="false"
											aria-controls="panelsStayOpen-collapseNine">
											<i class="bi bi-bullseye"></i> Objetivo:
										</button>
									</h2>
									<div id="panelsStayOpen-collapseNine"
										class="accordion-collapse collapse"
										aria-labelledby="panelsStayOpen-headingNine">
										<div class="accordion-body">
											<p class="accordion__parrafo accordion__parrafo-objetivo">
												<c:out value="${carrera.objetivo}"></c:out>
											</p>
										</div>
									</div>
								</div>
								<div class="accordion-item">
									<h2 class="accordion-header" id="panelsStayOpen-headingTen">
										<button class="accordion-button collapsed" type="button"
											data-bs-toggle="collapse"
											data-bs-target="#panelsStayOpen-collapseTen"
											aria-expanded="false"
											aria-controls="panelsStayOpen-collapseTen">
											<i class="bi bi-briefcase"></i> Campo laboral:
										</button>
									</h2>
									<div id="panelsStayOpen-collapseTen"
										class="accordion-collapse collapse"
										aria-labelledby="panelsStayOpen-headingTen">
										<div class="accordion-body">
											<p class="accordion__parrafo accordion__parrafo-campoLaboral">
												<c:out value="${carrera.campoLaboral}"></c:out>
											</p>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</section>

		<!-- Tarjeta de Universidad A -->
		<!-- <c:forEach items="${carreras}" var="carrera">
                    <div class="card">
                        <div class="card__header">
                            <img
                                class="card__image"
                                src="/Assets/Images/CardImages/derecho-real.jpg"
                                alt="Imagen"
                            />
                        </div>

                        <div class="card__body">
                            <h2 class="card__title">
                                <c:out value="${carrera.nombre}"></c:out>
                            </h2>
                            <p class="card__text">
                                Acreditacion:
                                <c:out value="${carrera.acreditacion}"></c:out>
                                <br /> Arancel:
                                <c:out value="${carrera.arancel}"></c:out>
                                <br /> Campo laboral:
                                <c:out value="${carrera.campoLaboral}"></c:out>
                                <br /> Duracion:
                                <c:out value="${carrera.duracion}"></c:out>
                                <br /> Jornada:
                                <c:out value="${carrera.jornada}"></c:out>
                                <br /> Modalidad:
                                <c:out value="${carrera.modalidad}"></c:out>
                                <br /> Nombre:
                                <c:out value="${carrera.nombre}"></c:out>
                                <br /> Objetivo:
                                <c:out value="${carrera.objetivo}"></c:out>
                                <br /> Sede:
                                <c:out value="${carrera.sede}"></c:out>
                                <br /> Institucion:
                                <c:out
                                    value="${carrera.institucion.nombre}"
                                ></c:out
                                ><br /> Region:
                                <c:out value="${carrera.region.region}"></c:out>
                                <br />
                            </p>
                        </div>
                    </div>
                </c:forEach> -->
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
</body>
<script src="/Javascript/vs.js"></script>
<script src="/Javascript/index"></script>
<script src="/Javascript/login.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
	crossorigin="anonymous"></script>

</html>