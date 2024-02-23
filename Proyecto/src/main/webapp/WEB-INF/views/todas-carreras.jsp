<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Todas las carreras</title>
        <link rel="stylesheet" href="/CSS/todas-carreras.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;700&display=swap"
            rel="stylesheet"
        />
        <link
            rel="icon"
            href="/Assets/Icons/icons8-education-64.png"
            sizes="80x80"
            type="png/jpg"
        />
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"
        />
    </head>
    <body>
        <div id="loading-overlay" class="loading-overlay">
            <img
                src="/Assets/Icons/Logo_sombrero.png"
                alt="Cargando..."
                class="loading-spinner"
            />
        </div>
        <!--HEADER-->
        <header class="header">
            <a href="http://localhost:8080/dashboard">
                <img
                    src="/Assets/Icons/Logo_sombrero.png"
                    alt="imagen de logo"
                    class="header__logo"
                />
            </a>
            <nav class="main-nav">
                <ul class="main-menu">
                    <li class="main-menu__item">
                        <a
                            href="http://localhost:8080/dashboard"
                            class="main-menu__link"
                            id="link-1"
                            >Inicio</a
                        >
                    </li>
                    <li class="main-menu__item">
                        <a
                            href="http://localhost:8080/carreras"
                            class="main-menu__link"
                            id="link-2"
                            >Ver Carreras</a
                        >
                    </li>
                    <li class="main-menu__item">
                        <a
                            href="http://localhost:8080/test"
                            class="main-menu__link"
                            id="link-3"
                            >Test</a
                        >
                    </li>
                    <li class="main-menu__item">
                        <a
                            href="http://localhost:8080/logout"
                            class="main-menu__link"
                            id="link-3"
                            >Cerrar Sesión</a
                        >
                    </li>
                </ul>

                <img src="/Assets/Icons/x.svg" alt="Menu" class="header__x" />
            </nav>
            <img src="/Assets/Icons/menu.svg" alt="Menu" class="header__menu" />
        </header>

        <!--LATERAL-->
        <div class="wrapper">
            <aside class="aside">
                <div class="aside__user-info">
                    <i class="bi bi-person-circle"></i>
                    <h1 class="aside__user">
                        <c:out value="${usuario.nombre}"></c:out>
                    </h1>
                </div>
                <nav class="panel">
                    <ul class="panel__list menu">
                        <li class="panel__item">
                            <button
                                class="todas boton-menu panel__button active"
                            >
                                <i class="bi bi-border-all all"></i>
                                Todas las carreras
                            </button>
                        </li>
                        <li class="panel__item ingenieria">
                            <button class="ingenieria boton-menu panel__button">
                                <i class="bi bi-arrow-right-circle"></i>
                                Ingenierias
                            </button>
                        </li>
                        <li class="arte panel__item">
                            <button class="arte boton-menu panel__button">
                                <i class="bi bi-arrow-right-circle"></i>Arte
                            </button>
                        </li>
                        <li class="naturales panel__item">
                            <button class="naturales boton-menu panel__button">
                                <i class="bi bi-arrow-right-circle"></i>Ciencias
                                Naturales
                            </button>
                        </li>
                        <li class="educacion panel__item">
                            <button class="educacion boton-menu panel__button">
                                <i class="bi bi-arrow-right-circle"></i
                                >Educacion
                            </button>
                        </li>
                        <li class="sociales panel__item">
                            <button class="sociales boton-menu panel__button">
                                <i class="bi bi-arrow-right-circle"></i>Ciencias
                                Sociales
                            </button>
                        </li>
                        <!-- <li class="panel__item-favorito">
                            <a
                                href="/favorito.jsp"
                                class="boton-menu panel__favorito boton-favorito"
                                ><i class="bi bi-arrow-right-circle"></i
                                >Favorito
                                <span class="panel__numero">0</span></a
                            >
                        </li> -->
                    </ul>
                </nav>
                <footer>
                    <p class="footer__text">COPYRIGHT</p>
                </footer>
            </aside>
            <main class="main">
                <h2 class="main__titulo">Todas las carreras</h2>
                <div class="contenedor-carreras">
                    <!--===========================================================================================================-->

                    <!--CARRERA-->
                    <c:forEach var="carrera" items="${carreras}">
                        <!--CARRERA - CARTA-->
                        <div class="carrera">
                            <div class="carrera__favorite">
                                <form
                                    action="/agregar-favorita"
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
                            <div class="carrera__header">
                                <img
                                    class="carrera__image"
                                    src="/Assets/Images/CardImages/ingenieria-informatica.jpg"
                                    alt="Imagen"
                                />
                            </div>
                            <div class="carrera__body">
                                <div class="carrera__titulos">
                                    <h1 class="carrera__titulos-nombre">
                                        <c:out
                                            value="${carrera.nombre}"
                                        ></c:out>
                                    </h1>
                                    <h2 class="carrera__titulos-institution">
                                        <c:out
                                            value="${carrera.institucion.nombre}"
                                        ></c:out>
                                    </h2>
                                </div>
                                <div class="carrera__descripcion">
                                    <p
                                        class="carrera__descripcion-texto carrera__descripcion-texto--objetivo"
                                    >
                                        <c:out
                                            value="${carrera.objetivo}"
                                        ></c:out>
                                    </p>
                                </div>
                                <div class="carrera__area">
                                    <p class="carrera__descripcion-texto area">
                                        <c:out value="${carrera.area}"></c:out>
                                    </p>
                                </div>
                            </div>

                            <div class="carrera__footer">
                                <a
                                    class="carrera__footer-ver"
                                    href="http://localhost:8080/compare-careers/${carrera.tipo}/${carrera.area}"
                                    >Ver opciones</a
                                >
                            </div>
                        </div>
                        <!--FINALIZA CARRERA CARTA-->

                        <!--CONTENEDOR CARTAS-->
                    </c:forEach>
                </div>
            </main>
        </div>
        <script src="Javascript/todas-carreras.js"></script>
    </body>
</html>
