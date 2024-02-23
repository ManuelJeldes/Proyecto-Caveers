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

/*AGREGAR IMAGEN SEGUN AREA*/

//* TODAS LAS CARTAS
const $cards = document.querySelectorAll('.card');

//* OBJETO CON IMAGENES

const images = {
    salud: 'url(/Assets/Images/CardImages/salud-prueba.jpg)',
    ingenieria: 'url(/Assets/Images/CardImages/ingenieria.jpg)',
    derecho: 'url(/Assets/Images/CardImages/derecho-real.jsp)',
    educacion: 'url(/Assets/Images/CardImages/educacion-real.jpg)',
    arte: 'url("/Assets/Images/CardImages/arte-prueba.jpg")',
    cienciasNaturales: 'url("/Assets/Images/CardImages/naturaleza.jpg")',
    cienciasSociales: 'url("/Assets/Images/CardImages/ciencias-sociales.jpg")',
};

//*FOR EACH PARA SABER CADA AREA

$cards.forEach((card) => {
    if (card.lastElementChild.lastElementChild.textContent.trim() === 'salud') {
        card.style.backgroundImage = images.salud;
        card.style.backgroundSize = 'contain';
    }

    if (
        card.lastElementChild.lastElementChild.textContent.trim() ===
        'ingenieria'
    ) {
        card.style.backgroundImage = images.ingenieria;
        card.style.backgroundSize = 'cover';
    }

    if (
        card.lastElementChild.lastElementChild.textContent.trim() ===
        'educacion'
    ) {
        card.style.backgroundImage = images.educacion;
        card.style.backgroundSize = 'cover';
    }

    if (card.lastElementChild.lastElementChild.textContent.trim() === 'arte') {
        card.style.backgroundImage = images.arte;
        card.style.backgroundSize = 'cover';
    }

    if (
        card.lastElementChild.lastElementChild.textContent.trim() ===
        'ciencias naturales'
    ) {
        card.style.backgroundImage = images.cienciasNaturales;
        card.style.backgroundSize = 'cover';
    }

    if (
        card.lastElementChild.lastElementChild.textContent.trim() ===
        'ciencias sociales'
    ) {
        card.style.backgroundImage = images.cienciasSociales;
        card.style.backgroundSize = 'cover';
    }
});

/*LOGICA FAVORITOS*/

// Cuando se carga la página, verifica si hay una posición de scroll almacenada en el LocalStorage
document.addEventListener('DOMContentLoaded', () => {
    const scrollPosition = localStorage.getItem('scrollPosition');
    if (scrollPosition) {
        window.scrollTo(0, parseInt(scrollPosition));
    }
});

// Cuando el usuario hace scroll, guarda la posición actual en el LocalStorage
window.addEventListener('scroll', () => {
    localStorage.setItem('scrollPosition', window.scrollY);
});

// Función para ocultar el GIF de carga después de un tiempo simulado
        function hideLoadingOverlay() {
            const loadingOverlay = document.getElementById('loading-overlay');
            loadingOverlay.style.display = 'none';
        }

        // Simula una carga mínima de 2 segundos antes de ocultar el GIF de carga
        setTimeout(hideLoadingOverlay, 2000); // 2000 milisegundos = 2 segundos
