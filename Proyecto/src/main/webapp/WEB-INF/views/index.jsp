<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8" %> <%@ taglib prefix = "c" uri =
"http://java.sun.com/jsp/jstl/core" %>

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
        <link
            rel="icon"
            href="/Assets/Icons/icons8-education-64.png"
            sizes="80x80"
            type="png/jpg"
        />
    </head>

    <body>
    <div id="loading-overlay" class="loading-overlay">
		<img src="/Assets/Icons/Logo_sombrero.png" alt="Cargando..."
			class="loading-spinner" />
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
                <c:choose>
                    <c:when test="${not empty user}">
                        <ul class="menu-in">
                            <li class="menu-in__user">
                                Bienvenido, ${user.nombre}
                            </li>
                            <li class="menu-in__item">
                                <a
                                    href="http://localhost:8080/logout"
                                    class="menu-in__link"
                                    >Cerrar Sesión</a
                                >
                            </li>
                        </ul>
                    </c:when>
                    <c:otherwise>
                        <ul class="main-menu">
                            <li class="main-menu__item">
                                <a
                                    href="http://localhost:8080/login"
                                    class="main-menu__link main-menu__link--register"
                                    >Registrarse</a
                                >
                            </li>
                            <li class="main-menu__item">
                                <a
                                    href="http://localhost:8080/login"
                                    class="main-menu__link main-menu__link--login"
                                    >Iniciar sesion</a
                                >
                            </li>
                        </ul>
                    </c:otherwise>
                </c:choose>

                <img src="/Assets/Icons/x.svg" alt="Menu" class="header__x" />
            </nav>
            <img src="/Assets/Icons/menu.svg" alt="Menu" class="header__menu" />
        </header>
        <!--MAIN-->
        <main class="main">
            <!--PRESENTATION-->
            <section class="hero">
                <div class="box">
                    <div class="hero__welcome">
                        <h1 class="hero__title">
                            Descubre una carrera según tus intereses
                        </h1>
                    </div>
                    <div class="presentation">
                        <div class="presentation__texts">
                            <p class="presentation__text">
                                Estamos emocionados de compartir nuestra pasión contigo y de ofrecer una solución que esperamos marque una 
                                diferencia en la vida de los jóvenes. Explora nuestra plataforma, realiza pruebas y descubre cómo podemos 
                                ayudarte a trazar tu propio camino hacia un futuro brillante. ¡Únete a nosotros en este emocionante 
                                viaje de autodescubrimiento y crecimiento!
                            </p>

                            <a
                                class="presentation__button"
                                href="http://localhost:8080/login"
                            >
                                Comenzar !
                            </a>
                        </div>
                        <div class="presentation__images">
                            <div class="presentation__iamge">
                                <img
                                    src="/Assets/Images/header-image.png"
                                    alt="Imagen"
                                    class="presentation__img"
                                />
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!--OBJETIVOS-->

            <section class="objetivo">
                <div class="box box-1">
                    <div class="queHacemos">
                        <div class="queHacemos__info">
                            <div class="queHacemos__images">
                                <img
                                    src="/Assets/Images/queHacemos.png"
                                    alt="queHacemos"
                                    class="queHacemos__first izquierda"
                                />
                            </div>

                            <div class="queHacemos__texts">
                                <h2 class="queHacemos__title izquierda">
                                    Quienes somos
                                    
                                </h2>
                                <p class="queHacemos__subtitle">
                                    Somos un grupo de compañeros que
                                        entendemos de primera mano los desafíos
                                        que los jóvenes enfrentan al tomar
                                        decisiones sobre su futuro educativo. A
                                        través de nuestras propias experiencias,
                                        reconocimos lo abrumadora y a menudo
                                        estresante que puede ser la tarea de
                                        elegir una carrera y una universidad a
                                        una edad temprana, generalmente entre 17
                                        y 18 años. Esta decisión, que tiene el
                                        poder de dar forma a toda una vida,
                                        merece una atención especial y una guía
                                        cuidadosa.
                                    
                                </p>
                            </div>
                        </div>
                    </div>
                    <!--Quienes somos-->
                    <div class="quienesSomos">
                        <div class="box box-2">
                            <div class="quienesSomos__info">
                                <div class="quienesSomos__texts">
                                    <h2 class="quienesSomos__title derecha">
                                        Que hacemos
                                    </h2>
                                    <p class="quienesSomos__subtitle">
                                        En CAVEERS, creemos en aliviar esa carga y
                                    proporcionar un faro de orientación en medio
                                    de la incertidumbre. Nuestra misión es
                                    simple pero poderosa: empoderar a los
                                    jóvenes para que tomen decisiones educativas
                                    informadas y significativas. Queremos ser
                                    esa pequeña ayuda que puede marcar una gran
                                    diferencia en el viaje hacia un futuro
                                    exitoso y satisfactorio.
                                    </p>
                                </div>
                                <div class="quienesSomos__images">
                                    <img
                                        src="/Assets/Images/img-remo.png"
                                        alt="queHacemos"
                                        class="quienesSomos__first derecha"
                                    />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
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
    <script src="/Javascript/index.js"></script>
</html>
