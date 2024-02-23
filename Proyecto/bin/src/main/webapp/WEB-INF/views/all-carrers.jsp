<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Todas las carreras</title>
        <link rel="stylesheet" href="/CSS/all-carrers.css" />
    </head>
    <body>
        <!--HEADER-->
        <header class="header">
            <p class="header__logo">LOGO</p>
            <img class="header__hamburguer" src="/Assets/Icons/menu.svg" alt="Menu" />

            <nav class="main-nav">
                <ul class="main-menu">
                    <li class="main-menu__item">
                        <a class="main-menu__link" href="#">Acceso</a>
                    </li>
                    <li class="main-menu__item">
                        <a
                            class="main-menu__link main-menu__link--register"
                            href="#"
                            >Registrarse</a
                        >
                    </li>
                </ul>
            </nav>
        </header>
        <main class="main">
            <div class="container">
                <section class="panel">
                    <img src="/Assets/Icons/x.svg" alt="X" class="panel__x" />
                    <div class="panel__inputs">
                        <!--FORMULARIO DE FILTROS-->
                        <form action="#" method="#">
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
                                <label for="second">Modalidad</label>
                                <input
                                    type="range"
                                    min="1"
                                    max="10"
                                    id="second"
                                />
                            </div>
                            <input type="submit" value="Filtrar" />
                        </form>
                    </div>
                </section>
                <div class="section-show">
                    <section class="select">
                        <p class="select__title">Orderar por</p>
                        <form action="#" class="select__form">
                            <select name="orderBy" id="orderBy">
                                <option value="1">Nombre</option>
                                <option value="2">Region</option>
                                <option value="3">Carrera</option>
                                <option value="3">Arancel</option>
                            </select>

                            <button class="select__filter">Filtrar por</button>
                            <input
                                type="submit"
                                class="select__search"
                                value="Buscar"
                            />
                        </form>
                    </section>
                    <section class="cards">
                        <!--FORMULARIO DE COMPARACION-->
                        <form action="#" class="card__form">
                            <div class="card">
                                <div class="card__texts">
                                    <h2 class="card__title">Nombre</h2>
                                    <p class="card__description">
                                        Description Lorem ipsum dolor sit amet
                                        consectetur adipisicing elit. Omnis
                                        placeat quia tenetur sequi maxime.
                                    </p>
                                </div>
                                <div class="card__assets">
                                    <p>Comparar!</p>
                                </div>
                                <input type="checkbox" name="selectedCareer" />
                                <!--Value = ${career.id}-->
                            </div>
                            <div class="card">
                                <div class="card__texts">
                                    <h2 class="card__title">Nombre</h2>
                                    <p class="card__description">
                                        Description Lorem ipsum dolor sit amet
                                        consectetur adipisicing elit. Omnis
                                        placeat quia tenetur sequi maxime.
                                    </p>
                                </div>
                                <div class="card__assets">
                                    <p>Comparar!</p>
                                </div>
                                <input type="checkbox" name="selectedCareer" />
                                <!--Value = ${career.id}-->
                            </div>
                            <div class="card">
                                <div class="card__texts">
                                    <h2 class="card__title">Nombre</h2>
                                    <p class="card__description">
                                        Description Lorem ipsum dolor sit amet
                                        consectetur adipisicing elit. Omnis
                                        placeat quia tenetur sequi maxime.
                                    </p>
                                </div>
                                <div class="card__assets">
                                    <p>Comparar!</p>
                                </div>
                                <input type="checkbox" name="selectedCareer" />
                                <!--Value = ${career.id}-->
                            </div>
                            <div class="card">
                                <div class="card__texts">
                                    <h2 class="card__title">Nombre</h2>
                                    <p class="card__description">
                                        Description Lorem ipsum dolor sit amet
                                        consectetur adipisicing elit. Omnis
                                        placeat quia tenetur sequi maxime.
                                    </p>
                                </div>
                                <div class="card__assets">
                                    <p>Comparar!</p>
                                </div>
                                <input type="checkbox" name="selectedCareer" />
                                <!--Value = ${career.id}-->
                            </div>
                            <div class="card">
                                <div class="card__texts">
                                    <h2 class="card__title">Nombre</h2>
                                    <p class="card__description">
                                        Description Lorem ipsum dolor sit amet
                                        consectetur adipisicing elit. Omnis
                                        placeat quia tenetur sequi maxime.
                                    </p>
                                </div>
                                <div class="card__assets">
                                    <p>Comparar!</p>
                                </div>
                                <input type="checkbox" name="selectedCareer" />
                                <!--Value = ${career.id}-->
                            </div>
                            <div class="card">
                                <div class="card__texts">
                                    <h2 class="card__title">Nombre</h2>
                                    <p class="card__description">
                                        Description Lorem ipsum dolor sit amet
                                        consectetur adipisicing elit. Omnis
                                        placeat quia tenetur sequi maxime.
                                    </p>
                                </div>
                                <div class="card__assets">
                                    <p>Comparar!</p>
                                </div>
                                <input type="checkbox" name="selectedCareer" />
                                <!--Value = ${career.id}-->
                            </div>
                            <div class="card">
                                <div class="card__texts">
                                    <h2 class="card__title">Nombre</h2>
                                    <p class="card__description">
                                        Description Lorem ipsum dolor sit amet
                                        consectetur adipisicing elit. Omnis
                                        placeat quia tenetur sequi maxime.
                                    </p>
                                </div>
                                <div class="card__assets">
                                    <p>Comparar!</p>
                                </div>
                                <input type="checkbox" name="selectedCareer" />
                                <!--Value = ${career.id}-->
                            </div>
                        </form>
                    </section>
                </div>
            </div>
        </main>
    </body>
    <script src="/Javascript/all-carrers.js"></script>
</html>
