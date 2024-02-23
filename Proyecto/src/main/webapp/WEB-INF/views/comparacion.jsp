<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Todas las carreras</title>
        <link rel="stylesheet" href="/css/comparation.css" />
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
                            >Cerrar Sesion</a
                        >
                    </li>
                </ul>

                <img src="/Assets/Icons/x.svg" alt="Menu" class="header__x" />
            </nav>
            <img src="/Assets/Icons/menu.svg" alt="Menu" class="header__menu" />
        </header>
        <main class="main">
            <div class="container">
                <section class="panel">
                    <img src="/Assets/Icons/x.svg" alt="X" class="panel__x" />
                    <div class="panel__inputs">
                        <!--FORMULARIO DE FILTROS-->
                        <form action="#" method="#" class="form__filter">
                            <select
                                name="orderBy"
                                id="orderBy"
                                class="select__input"
                            >
                                <option value="1">Nombre</option>
                                <option value="2">Region</option>
                                <option value="3">Carrera</option>
                                <option value="3">Arancel</option>
                            </select>
                            <div class="panel__first input-container-column">
                                <label for="first">Arancel</label>
                                <input
                                    type="range"
                                    min="1"
                                    max="10"
                                    id="first"
                                />
                            </div>
                            <div class="panel__second input-container-column">
                                <label for="diurno">Diurno</label>
                                <input
                                    type="radio"
                                    id="diurno"
                                    name="modalidad"
                                />
                                <label for="vespertino">Vespertino</label>
                                <input
                                    type="radio"
                                    id="vespertino"
                                    name="modalidad"
                                />
                            </div>

                            <input
                                type="submit"
                                value="Filtrar"
                                class="panel__submit"
                            />
                        </form>
                    </div>
                </section>
                <div class="section-show">
                    <section class="select">
                        <!-- <p class="select__title">Orderar por</p>
                        <form action="#" class="select__form">
                            <select
                                name="orderBy"
                                id="orderBy"
                                class="select__input"
                            >
                                <option value="1">Nombre</option>
                                <option value="2">Region</option>
                                <option value="3">Carrera</option>
                                <option value="3">Arancel</option>
                            </select> -->
                        <div>
                            <button class="select__filter">Filtrar por</button>
                        </div>

                        <!-- </form> -->
                    </section>
                    <section class="cards">
                        <!--FORMULARIO DE COMPARACION-->
                        <form action="#" class="card__form">
                            <c:forEach var="carrera" items="${carreras}">
                                <div class="card">
                                
                                    <!-- <h2 class="card__title">Nombre</h2> -->
                                    <div class="card__header">
                                        <img
                                            class="card__image"
                                            src=""
                                            alt="Imagen"
                                        />
                                    </div>

                                    <div class="card__body">
                                        <h2 class="card__title">
                                            <c:out
                                                value="${carrera.nombre}"
                                            ></c:out>
                                        </h2>

                                        <p
                                            class="card__description card__description--institucion"
                                        >
                                            <c:out
                                                value="${carrera.institucion.nombre}"
                                            ></c:out>
                                        </p>
                                        <p class="card__description">
                                            <c:out
                                                value="${carrera.objetivo}"
                                            ></c:out>
                                        </p>
                                    </div>
                                    <div class="card__assets"></div>
                                </div>
                            </c:forEach>
                        </form>
                    </section>
                </div>
            </div>
        </main>
        <div id="divbtn">
            <a
                href="http://localhost:8080/comparacion/${unaCarrera.tipo}/${unaCarrera.area}"
                class="dashboard__button dashboard__button--no"
                id="button-1"
                >Comparar</a
            >
        </div>
        <footer class="footer">
            <div class="footer__contact">
                <div class="footer__contact-container">
                    <img
                        src="/Assets/Icons/phone-call.svg"
                        alt="Phone"
                        class="footer__contact-icon"
                    />
                    <p class="footer__contact-text">+569 54987448</p>
                </div>
                <div class="footer__contact-container">
                    <img
                        src="/Assets/Icons/FormIcons/mail.svg"
                        alt="Mail"
                        class="footer__contact-icon"
                    />
                    <p class="footer__contact-text">caveers@gmail.com</p>
                </div>
            </div>
            <div class="footer__social">
                <a href="https://google.com" target="_blank"
                    ><img
                        src="/Assets/Icons/FooterIcons/insta.png"
                        alt="Instagram"
                        class="footer__icon"
                /></a>
                <a href=""
                    ><img
                        src="/Assets/Icons/twitter.svg"
                        alt="Twitter"
                        class="footer__icon"
                /></a>
                <div class="footer__copyright">
                    <p>© All rights reserved</p>
                </div>
            </div>
        </footer>
    </body>
    <script src="/Javascript/comparation.js"></script>
</html>
