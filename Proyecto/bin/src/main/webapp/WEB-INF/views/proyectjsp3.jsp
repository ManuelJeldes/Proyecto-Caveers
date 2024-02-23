<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>test</title>
    <link rel="stylesheet" href="/proyect/src/main/resources/static/CSS/jsp3.css">
</head>
<body>
    <div id="particles-js"></div>
    <header class="header">
        <p class="header__logo">LOGO</p>
        <button class="header__hamburguer"><p>===</p></button>

        <nav class="main-nav">
            <ul class="main-menu">
                <li><a href="#">HOME</a></li>
                <li><a href="#">TEST</a></li>
                <li><a href="#">COMPARACIONES</a></li>
                <li><a href="#" class="">CARRERAS</a></li>
            </ul>
        </nav>
    </header>

    
        <div>
            <button id="delete-form">borrar filtro</button>
        </div>
        <div class="inputs-box">
            <div class="slider-container">
                <label for="matematicas" class="labels-inputs">maths</label>
                <input type="range" class="inputs" id="matematicas" min="0" max="10" step="1" value="0" name="matematicas">
                <div id="matematicas-value" class="slider-value">0</div>
            </div>
            <br>
            <div class="slider-container">
                <label for="ciencia" class="labels-inputs">science</label>
                <input type="range" class="inputs" id="ciencia" min="0" max="10" step="1" value="0" name="ciencia"><br>
                <div id="ciencia-value" class="slider-value">0</div>
            </div>
            <br>
            <div class="slider-container">
                <label for="lenguaje" class="labels-inputs">language</label>
                <input type="range" class="inputs" id="lenguaje" min="0" max="10" step="1" value="0" name="lenguaje"><br>
                <div id="lenguaje-value" class="slider-value">0</div>
            </div>
            <br>
            <div class="slider-container">
                <label for="historia" class="labels-inputs">history</label>
                <input type="range" class="inputs" id="historia" min="0" max="10" step="1" value="0"  name="historia"><br>
                <div id="historia-value" class="slider-value">0</div>
            </div>
            <br>
        </div>
        <div id="text-container">
            <h3>Filtro carreras</h3>
            <p>selecciona tus fortalezas y debilidades asignando del 1 a 10 en el filtro de la izquierda
                mediante esto las tarjetas de abajo se giraran para entregarte posibles carreras dadas tus competencias.
            </p>
        </div>
        <div class="submit-form">
            <button id="form-submit"><span id="span-form-button">submit</span></button>
           
        </div>
        <br>
    
    
        <div class="tarjetas">
            <div class="face-front">
                <img src="/proyect/src/main/resources/static/img/carta boca abajo.jpg" alt="">
            </div>
            <div class="face-back">
                <h3>fonoaudiologia</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum quo quod, libero iure sint officiis </p>
                <button class="button-card"><span>Fonoaudiologia</span></button>
            </div>
        </div>
        <div class="tarjetas">
            <div class="face-front">
                <img src="/proyect/src/main/resources/static/img/carta boca abajo.jpg" alt="">
            </div>
            <div class="face-back">
                <h3>fonoaudiologia</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum quo quod, libero iure sint officiis </p>
                <button class="button-card"><span>Fonoaudiologia</span></button>
            </div>
        </div>
        <div class="tarjetas">
            <div class="face-front">
                <img src="/proyect/src/main/resources/static/img/carta boca abajo.jpg" alt="">
            </div>
            <div class="face-back">
                <h3>fonoaudiologia</h3>
                <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum quo quod, libero iure sint officiis </p>
                <button class="button-card"><span>Fonoaudiologia</span></button>
            </div>
        </div>
   
    <footer> contact</footer>

    <script src="/proyect/src/main/resources/static/Javascript/script.js"></script>
</body>
    
    <script src="/proyect/src/main/resources/static/Javascript/particles.min.js"></script>
    <script src="/proyect/src/main/resources/static/Javascript/index.js"></script>
</html>