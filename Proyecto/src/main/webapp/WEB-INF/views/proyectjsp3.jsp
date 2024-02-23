<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<!DOCTYPE html>
		<html lang="en">

		<head>
			<meta charset="UTF-8" />
			<meta name="viewport" content="width=device-width, initial-scale=1.0" />
			<title>test</title>
			<link rel="stylesheet" href="/CSS/jsp3.css" />
			<link rel="icon" href="/Assets/Icons/icons8-education-64.png" sizes="80x80" type="png/jpg" />
		</head>

		<body>
			<div id="loading-overlay" class="loading-overlay">
				<img src="/Assets/Icons/Logo_sombrero.png" alt="Cargando..." class="loading-spinner" />
			</div>
			<header class="header">
				<img src="/Assets/Icons/Logo_sombrero.png" alt="Logo" class="header__logo" />
				<nav class="main-nav">
					<ul class="main-menu">
						<li class="main-menu__item"><a href="http://localhost:8080/dashboard" class="main-menu__link"
								id="link-1">Inicio</a></li>
						<li class="main-menu__item"><a href="http://localhost:8080/carreras" class="main-menu__link"
								id="link-2">Ver Carreras</a></li>
						<li class="main-menu__item"><a href="http://localhost:8080/test" class="main-menu__link"
								id="link-3">Test</a></li>
						<li class="main-menu__item"><a href="http://localhost:8080/logout" class="main-menu__link"
								id="link-3">Cerrar Sesion</a></li>
					</ul>

					<img src="/Assets/Icons/x.svg" alt="Menu" class="header__x" />
				</nav>
				<img src="/Assets/Icons/menu.svg" alt="Menu" class="header__menu" />
			</header>
			<div class="titles">
				<h1 class="introduccion">Bienvenido al test</h1>
				<h2 class="introduccion">Presiona en "Comenzar" para poder
					realizar el Test</h2>
			</div>
			<div id="first-block">
				<div class="inputs-box">
					<div>
						<button id="delete-form">Borrar filtro</button>
					</div>
					<div class="slider-container">
						<label for="ciencias" class="labels-inputs">Ciencias</label> <input type="range" class="inputs"
							id="ciencias" min="0" max="10" step="1" value="0" name="ciencias" disabled />
						<div id="Ciencias-value" class="slider-value">0</div>
					</div>
					<br />
					<div class="slider-container">
						<label for="historia" class="labels-inputs">Historia</label> <input type="range" class="inputs"
							id="historia" min="0" max="10" step="1" value="0" name="historia" disabled /><br />
						<div id="historia-value" class="slider-value">0</div>
					</div>
					<br />
					<div class="slider-container">
						<label for="salud" class="labels-inputs">Salud</label> <input type="range" class="inputs"
							id="salud" min="0" max="10" step="1" value="0" name="salud" disabled /><br />
						<div id="salud-value" class="slider-value">0</div>
					</div>
					<br />
					<div class="slider-container">
						<label for="arte" class="labels-inputs">Arte</label> <input type="range" class="inputs"
							id="arte" min="0" max="10" step="1" value="0" name="arte" disabled /><br />
						<div id="arte-value" class="slider-value">0</div>
					</div>
					<br />
					<div class="slider-container">
						<label for="educacion" class="labels-inputs">Educación</label>
						<input type="range" class="inputs" id="educacion" min="0" max="10" step="1" value="0"
							name="educacion" disabled /><br />
						<div id="educacion-value" class="slider-value">0</div>
					</div>
					<br />
					<div class="slider-container">
						<label for="ingenieria" class="labels-inputs">Ingeniería </label>
						<input type="range" class="inputs" id="ingenieria" min="0" max="10" step="1" value="0"
							name="ingenieria" disabled /><br />
						<div id="ingenieria-value" class="slider-value">0</div>
					</div>
					<br />
					
					<form action="/test" method="post">
						<div class="submit-form">
							<button type="submit" id="form-submit">
								<span>Enviar</span>
							</button>
						</div>
					</form>
				</div>

				<div id="begin-test">
					<button id="start-button">Comenzar test</button>
					<div class="text-container">
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display">
								<p>¿Ciencias y números son lo tuyo?</p>
								<label> <input type="range" name="p1" class="input-range" id="p1" min="0" max="10"
										step="1" value="0" />
								</label>
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Amas leer y escribir?</p>

								<input type="range" name="p2" class="input-range" id="p2" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Te gustan los animales? </p>

								<input type="range" name="p3" class="input-range" id="p3" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Dibujar es lo tuyo? </p>

								<input type="range" name="p4" class="input-range" id="p4" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Te gusta enseñar? </p>

								<input type="range" name="p5" class="input-range" id="p5" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>

						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Te gusta crear e innovar en áreas tecnológicas? </p>

								<input type="range" name="p6" class="input-range" min="0" id="p6" max="10" step="1"
									value="0" />
							</div>
						</div>



						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Experimentar y analizar te emociona? </p>

								<input type="range" name="p7" class="input-range" id="p7" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Te gusta aprender de diversas culturas? </p>

								<input type="range" name="p8" class="input-range" id="p8" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Te preocupa la salud de las demás personas? </p>

								<input type="range" name="p9" class="input-range" id="p9" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Te encanta crear cosas nuevas? </p>

								<input type="range" name="p10" class="input-range" id="p10" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Trabajarías en la educación de menores? </p>

								<input type="range" name="p11" class="input-range" id="p11" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>

						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Sientes curiosidad por el mundo de la tecnología? </p>

								<input type="range" name="p12" class="input-range" id="p12" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>



						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Trabajarías en un laboratorio? </p>

								<input type="range" name="p13" class="input-range" id="p13" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿La política y ciencias sociales te atraen? </p>

								<input type="range" name="p14" class="input-range" id="p14" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Eres empático y compasivo? </p>

								<input type="range" name="p15" class="input-range" id="p15" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Te gusta crear/escuchar música? </p>

								<input type="range" name="p16" class="input-range" id="p16" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Te agrada explicar tus conocimientos a los demás? </p>

								<input type="range" name="p17" class="input-range" id="p17" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
						<div class="preguntas-button" id="preguntasButton">
							<div class="preguntas-display ">
								<p>¿Se te dan bien las matemáticas? </p>

								<input type="range" name="p18" class="input-range" id="p18" min="0" max="10" step="1"
									value="0" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="tarjetas hidden">
				<div class="face-front">
					<img class="img-front" src="/Assets/Icons/cavers.png" alt="" />
				</div>
				<div class="face-back">
					<img class="img-faceback" src="/Assets/Images/CardImages/derecho-real.jpg" alt="" />
					<h2 class="name-career-faceback">
						<c:out value="${universidad.nombre}"></c:out>
					</h2>
					<button class="button-card" id="btnUniversidad">
						<span>Ver más opciones de Universidades</span>
					</button>
				</div>
			</div>

			<div class="tarjetas hidden">
				<div class="face-front">
					<img class="img-front" src="/Assets/Icons/cavers.png" alt="" />
				</div>
				<div class="face-back">
					<img class="img-faceback" src="/Assets/Images/CardImages/derecho-real.jpg" alt="" />
					<h2 class="name-career-faceback">
						<c:out value="${tecnico.nombre}"></c:out>
					</h2>
					<button class="button-card" id="btnTecnico">
						<span>Ver más opciones de Técnicos</span>
					</button>
				</div>
			</div>
			<!--CURSOS-->
			<div class="tarjetas hidden">
				<div class="face-front">
					<img class="img-front" src="/Assets/Icons/cavers.png" alt="" />
				</div>
				<div class="face-back">
					<img class="img-faceback" src="/Assets/Images/CardImages/derecho-real.jpg" alt="" />
					<h2 class="name-career-faceback">
						<c:out value="${curso.nombre}"></c:out>
					</h2>
					<button class="button-card" id="btnCurso">
						<span>Ver más opciones de Cursos</span>
					</button>
				</div>
			</div>
			<div>
				<p class="recordatorio">"Este test es una guía para explorar carreras, pero tu elección es personal.
					Investiga y descubre lo que te apasiona.
					¡Tu futuro está en tus manos!"</p>
			</div>

			<footer class="footer">
				<div class="footer__contact">
					<div class="footer__contact-container">
						<img src="/Assets/Icons/phone-call.svg" alt="Phone" class="footer__contact-icon" />
						<p class="footer__contact-text">+569 54987448</p>
					</div>
					<div class="footer__contact-container">
						<img src="/Assets/Icons/FormIcons/mail.svg" alt="Mail" class="footer__contact-icon" />
						<p class="footer__contact-text">caveers@gmail.com</p>
					</div>
				</div>
				<div class="footer__social">
					<a href="https://google.com" target="_blank"><img src="/Assets/Icons/FooterIcons/insta.png"
							alt="Instagram" class="footer__icon" /></a> <a href=""><img src="/Assets/Icons/twitter.svg"
							alt="Twitter" class="footer__icon" /></a>
					<div class="footer__copyright">
						<p>© All rights reserved</p>
					</div>
				</div>
			</footer>
		</body>
		<script src="/Javascript/jsp3Imagenes.js"></script>
		<script src="/Javascript/respuestas.js"></script>
		<script src="/Javascript/preguntas-button.js"></script>
		<script src="/Javascript/index.js"></script>

		</html>