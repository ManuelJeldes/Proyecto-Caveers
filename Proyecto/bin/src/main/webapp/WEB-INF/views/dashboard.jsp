<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib prefix = "c" uri =
"http://java.sun.com/jsp/jstl/core" %>

        <title>Dashboard</title>
        <link rel="stylesheet" href="/CSS/dash.css" />
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
        <link
            href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;700&display=swap"
            rel="stylesheet"/>
    </head>
    <body>
        <div id="particles-js"></div>
        <!--HEADER-->
        <header class="header">
            <p class="header__logo">LOGO</p>
            <img class="header__hamburguer" src="/Assets/Icons/menu.svg" alt="Menu" />

            <nav class="main-nav">
                <ul class="main-menu">
                    <li class="main-menu__item">
                        <a class="main-menu__link" href="http://localhost:8080/home#">Home</a>
                    </li>
                    <li class="main-menu__item">
                        <a
                            class="main-menu__link main-menu__link--register"
                            href="http://localhost:8080/carreras"
                            >Ver todas carreras</a
                        >
                    </li>
                    <li class="main-menu__item">
                        <a
                            class="main-menu__link main-menu__link--register"
                            href="http://localhost:8080/test"
                            >Test</a
                        >
                    </li>
                    <li class="main-menu__item">
                        <a
                            class="main-menu__link main-menu__link--register"
                            href="http://localhost:8080/logout"
                            >Cerrar sesion</a
                        >
                    </li>
                </ul>
            </nav>
        </header>
        <main class="main">
            <h1 class="welcome__userMobile">
                Bienvenido
                <span class="welcome__userMobile welcome__userMobile--span"
                    >USER</span
                >
            </h1>
            <section class="panel">
                <div class="user__info">
                    <div class="user__image">
                        <img src="/Assets/Images/user.png" alt="User" class="user__img" />
                    </div>
                    <div class="user__texts">
                        <p class="user__name">USER NAME</p>
                    </div>
                </div>
                <div class="favorite">
                    <div class="favorite__titles">
                        <h2 class="favorite__title">Carreras favoritas</h2>
                        <img
                            src="/Assets/Icons/arrow-down-circle.svg"
                            alt="Arrow"
                            class="favorite__arrow"
                        />
                    </div>

                    <div class="favorite__carrers">
                        <!--FOR EACH-->
                        <p class="favorite__carrer">Fonoaudiologia</p>
                        <p class="favorite__carrer">Periodismo</p>
                        <p class="favorite__carrer">Gastronomia</p>
                    </div>
                </div>
            </section>

            <section class="content">
                <section class="welcome">
                    <div class="welcome__texts">
                        <h1 class="welcome__title">
                            Bienvenido
                            <span class="welcome__title welcome__title--span"
                                >USER</span
                            >
                        </h1>
                        <h2 class="welcome__subtitle">
                            Selecciona una de las opciones para comenzar a
                            buscar carreras
                        </h2>
                    </div>
                </section>
                <section class="desicion">
                    <div class="desicion__no">
                        <h2 class="desicion__title">
                            Ya Sabes que carreras buscar?
                        </h2>
                        <a
                            href="http://localhost:8080/test"
                            class="desicion__button desicion__button--no"
                            >NO SE QUE BUSCAR</a
                        >
                    </div>
                    <div class="desicioon__si">
                        <a
                            href="http://localhost:8080/carreras"
                            class="desicion__button desicion__button--yes"
                            >SI SE QUE BUSCAR</a
                        >
                    </div>
                </section>
            </section>
        </main>

        <!-- <footer class="footer">
            <div class="footer__social">
                <a href="https://google.com" target="_blank"
                    ><img
                        src="./insta.png"
                        alt="Instagram"
                        class="footer__icon"
                /></a>
                <a href=""
                    ><img
                        src="./twitter.png"
                        alt="Twitter"
                        class="footer__icon"
                /></a>
            </div>
            <div class="footer__copyright">
                <p>© All rights reserved</p>
            </div>
        </footer> -->
        <!-- <script src="./particles.min.js"></script> -->
        <!-- <script src="./index.js"></script> -->
        <script src="/Javascript/dashboard.js"></script>
    </body>
</html>
