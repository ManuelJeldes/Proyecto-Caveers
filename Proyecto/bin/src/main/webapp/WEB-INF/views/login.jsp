<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> <%@ taglib
prefix="form" uri="http://www.springframework.org/tags/form"%> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Shows</title>
        <link
            rel="stylesheet"
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
        />
        <link rel="stylesheet" href="/CSS/login.css" />
        <!-- <style>
            
                  body {
                     margin: 0;
                     background: #42275a;  
            background: -webkit-linear-gradient(to top, #6c7f99, #929292); 
            background: linear-gradient(to top, #6c7f99, #929292); 

                     background-size: 100% 100vh; 
                 }

                 .container {
                     margin-top: 50px;
                 }
        </style> -->
    </head>
    <body>
        
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
                                <img src="/Assets/Icons/FormIcons/mail.svg" alt="Email" class="email__login-icon icon-absolute">
                                <input
                                type="password"
                                id="contraseña"
                                name="contraseña"
                                class="form-control input-padding"
                                placeholder="Ingresa tu correo"
                            />
                            </div>
                           
                        </div>
                        <button type="submit" class="btn">
                            Login
                        </button>
                    </form>
                    <c:if test="${not empty error}">
                        <p class="text-danger">${error}</p>
                    </c:if>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
        <script src="/Javascript/index.js"></script>
    </body>
</html>
