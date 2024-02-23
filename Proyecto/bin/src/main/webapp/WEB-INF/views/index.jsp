<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Home</title>
        <link rel="stylesheet" href="/CSS/index.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;700&display=swap"
            rel="stylesheet"
        />
    </head>

    <body>

        <header class="header">
            <p class="header__logo">LOGO</p>
            <img
                class="header__hamburguer"
                src="/Assets/Icons/menu.svg"
                alt="Menu"
            />

            <nav class="main-nav">
                <ul class="main-menu">
                    <li class="main-menu__item">
                        <a class="main-menu__link" href="http://localhost:8080/login">Acceso</a>
                    </li>
                    <li class="main-menu__item">
                        <a
                            class="main-menu__link main-menu__link--register"
                            href="http://localhost:8080/logout"
                            >Log Out</a
                        >
                    </li>
                </ul>
            </nav>
        </header>
        <!--MAIN-->
        <main class="main">
            <!--PRESENTATION-->
            <section class="hero">
                <div class="hero__welcome">
                    <h1 class="hero__title">
                        Descubre una carrera según tus intereses
                    </h1>
                </div>
                <div class="presentation">
                    <div class="presentation__texts">
                        <h2 class="presentation__title">
                            Quienes
                            <span
                                class="presentation__title presentation__title--span"
                                >somos</span
                            >
                        </h2>
                        <p class="presentation__text">
                            Lorem ipsum dolor sit amet, consectetur adipisicing
                            elit. Saepe delectus fugiat consequatur dolor soluta
                            suscipit cupiditate accusantium perferendis repellat
                            voluptatibus Lorem ipsum dolor sit amet consectetur
                            adipisicing elit. Hic doloremque sint at delectus
                            architecto unde laudantium quis odio amet. Quos ex a
                            enim reprehenderit doloremque quod ducimus. Quam,
                            amet fugit?
                        </p>
                    </div>
                    <div class="presentation__images">
                        <div class="presentation__iamge">
                            <img
                                src="/Assets/Images/illustration.jpg"
                                alt="Imagen"
                                class="presentation__img"
                            />
                        </div>
                    </div>
                </div>
            </section>

            <div class="obtetivo__textos">
                <h2 class="objetivo__title">
                    Que
                    <span class="objetivo__title objetivo__title--span"
                        >Hacemos</span
                    >
                </h2>
            </div>

            <!--OBJETIVOS-->
            <section class="objetivo">
                <div class="card">
                    <h2 class="card__title">Objetivo 1</h2>
                    <p class="card__text">
                        Como lo logramos Lorem ipsum dolor, sit amet consectetur
                        adipisicing elit. Reiciendis corporis tempora ipsa vitae
                        pariatur saepe exerc Como lo logramos Lorem ipsum dolor,
                        sit amet consectetur adipisicing elit. Reiciendis
                        corporis tempora ipsa vitae pariatur saepe exerc
                    </p>
                    <p>IMAGEN REPRESENTATIVA</p>
                </div>
                <div class="card">
                    <h2 class="card__title">Objetivo 2</h2>
                    <p class="card__text">
                        Como lo logramos Lorem ipsum dolor, sit amet consectetur
                        adipisicing elit. Reiciendis corporis tempora ipsa vitae
                        pariatur saepe exerc Como lo logramos Lorem ipsum dolor,
                        sit amet consectetur adipisicing elit. Reiciendis
                        corporis tempora ipsa vitae pariatur saepe exerc
                    </p>
                    <p>IMAGEN REPRESENTATIVA</p>
                </div>
                <div class="card">
                    <h2 class="card__title">Objetivo 3</h2>
                    <p class="card__text">
                        Como lo logramos Lorem ipsum dolor, sit amet consectetur
                        adipisicing elit. Reiciendis corporis tempora ipsa vitae
                        pariatur saepe exerc Como lo logramos Lorem ipsum dolor,
                        sit amet consectetur adipisicing elit. Reiciendis
                        corporis tempora ipsa vitae pariatur saepe exerc
                    </p>
                    <p>IMAGEN REPRESENTATIVA</p>
                </div>
            </section>
        </main>
        <footer class="footer">
            <div class="footer__social">
                <a href="https://google.com" target="_blank"
                    ><img
                        src="/Assets/Icons/insta.png"
                        alt="Instagram"
                        class="footer__icon"
                /></a>
                <a href=""
                    ><img
                        src="/Assets/Icons/twitter.png"
                        alt="Twitter"
                        class="footer__icon"
                /></a>
            </div>
            <div class="footer__copyright">
                <p>© All rights reserved</p>
            </div>
        </footer>
    </body>
    <script src="/Javascript/index.js"></script>
</html>
