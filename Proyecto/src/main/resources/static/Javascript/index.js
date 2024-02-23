/*MENU*/

const $nav = document.querySelector('.main-nav');
const $menu = document.querySelector('.header__menu');
const $x = document.querySelector('.header__x');
document.addEventListener('click', (e) => {
    if (e.target.matches('.header__menu')) {
        $nav.classList.toggle('main-nav--visible');
    }
    if (e.target.matches('.header__x')) {
        $nav.classList.toggle('main-nav--visible');
    }
});

// animaciones de imagenes

const $queHacemos = document.querySelector('.queHacemos__first');
const $quienesSomos = document.querySelector('.quienesSomos__first');

const cargarImagen = (entradas, observador) => {
    // console.log('se ejecuta');
    // console.log(entradas);
    // console.log(observador);
    entradas.forEach((entrada) => {
        if (entrada.isIntersecting) {
            entrada.target.classList.add('visible');
        }
    });
};

const observador = new IntersectionObserver(cargarImagen, {
    root: null,
    rootMargin: '0px 0px 0px 0px',
    threshold: 1.0,
});

observador.observe($queHacemos);
observador.observe($quienesSomos);

// Función para ocultar el GIF de carga después de un tiempo simulado
        function hideLoadingOverlay() {
            const loadingOverlay = document.getElementById('loading-overlay');
            loadingOverlay.style.display = 'none';
        }

        setTimeout(hideLoadingOverlay, 500);
        