<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib
prefix="form" uri="http://www.springframework.org/tags/form"%> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Login</title>
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
        />
        <link rel="stylesheet" href="/CSS/login.css" />
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
                            href="http://localhost:8080/"
                            class="main-menu__link"
                            id="link-1"
                            >Inicio</a
                        >
                    </li>
                    <li class="main-menu__item">
                        <a
                            href="#"
                            class="main-menu__link"
                            id="link-2"
                            >Ayuda</a
                        >
                    </li>
                  
                </ul>

                <img src="/Assets/Icons/x.svg" alt="Menu" class="header__x" />
            </nav>
            <img src="/Assets/Icons/menu.svg" alt="Menu" class="header__menu" />
        </header>

            <div class="container ">
                <div class="row align-items-start test">
                    <div class="col-md-6 gap-2">
                        <h2>Crea una nueva cuenta</h2>
                        <form:form
                            class="form-register"
                            accept-charset="UTF-8"
                            action="/registration"
                            method="post"
                            modelAttribute="usuario"
                        >
                            <div class="mb-3">
                                <form:label path="nombre" class="form-label"
                                    >Nombre:</form:label
                                >
                                <div class="user-container container-relative">
                                    <img src="/Assets/Icons/FormIcons/user.svg" alt="User" class="register__user icon-absolute">
                                    <form:input
                                        path="nombre"
                                        class="form-control form-register__input input-padding"
                                        placeholder="Ingresa un nombre"
                                    />
                                </div>
                                
                                <form:errors path="nombre" cssClass="text-danger" />
                            </div>
                            <div class="mb-3">
                                <form:label path="email" class="form-label"
                                    >Email:</form:label
                                >
                                <div class="email-container container-relative">
                                    <img src="/Assets/Icons/FormIcons/mail.svg" alt="Email" class="email__register-icon icon-absolute">
                                    <form:input
                                    type="email"
                                    path="email"
                                    class="form-control input-padding"
                                    placeholder="Ingresa un correo"
                                />
                                </div>
                                
                                <form:errors path="email" cssClass="text-danger" />
                            </div>
                            <div class="mb-3">
                                <form:label path="contraseña" class="form-label"
                                    >Contraseña:</form:label
                                >
                                <div class="password-container container-relative">
                                    <img src="/Assets/Icons/FormIcons/lock.svg" alt="Lock" class="lock__registration icon-absolute">
                                    <form:input
                                    type="password"
                                    path="contraseña"
                                    class="form-control input-padding"
                                    placeholder="Ingresa una contraseña"
                                    
                                />
                                </div>
                                <form:errors
                                    path="contraseña"
                                    cssClass="text-danger"
                                />
                            </div>
                            <div class="mb-3">
                                <form:label
                                    path="passwordConfirmation"
                                    class="form-label"
                                    >Confirmar Contraseña:</form:label
                                >
                                <div class="confirmation-container container-relative">
                                    <img src="/Assets/Icons/FormIcons/lock.svg" alt="Lock" class="lock__registration icon-absolute">
                                    <form:input
                                    type="password"
                                    path="passwordConfirmation"
                                    class="form-control input-padding"
                                    placeholder="Confirma tu contraseña"
                                />
                                </div>
                                
                                <form:errors
                                    path="passwordConfirmation"
                                    cssClass="text-danger"
                                />
                            </div>
                            <button type="submit" class="btn">
                                Registrar
                            </button>
                        </form:form>
                    </div>
    
                    <div class="col-md-6">
                        <h2>Ingresa con tu cuenta</h2>
                        <form method="post" action="/login" class="form-login">
                            <div class="mb-3">
                                <label for="email" class="form-label">Email:</label>
                                <div class="user-login-container container-relative">
                                    <img src="/Assets/Icons/FormIcons/user.svg" alt="User" class="login__user icon-absolute">
                                    <input
                                    type="text"
                                    id="email"
                                    name="email"
                                    class="form-control input-padding"
                                    placeholder="Ingresa tu correo"
                                />
                                </div>
                                
                            </div>
                            <div class="mb-3">
                                <label for="contraseña" class="form-label"
                                    >Contraseña:</label
                                >
                                <div class="login-password-container container-relative">
                                    <img src="/Assets/Icons/FormIcons/lock.svg" alt="Email" class="email__login-icon icon-absolute">
                                    <input
                                    type="password"
                                    id="contraseña"
                                    name="contraseña"
                                    class="form-control input-padding"
                                    placeholder="Ingresa tu correo"
                                />
                                </div>
                               
                            </div>
                            <button type="submit" class="btn btn-outline-info">
                                Login
                            </button>
                        </form>
                        <c:if test="${not empty error}">
                            <p class="text-danger">${error}</p>
                        </c:if>
                    </div>
                </div>
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

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
    <script src="Javascript/login.js"></script>
</html>
