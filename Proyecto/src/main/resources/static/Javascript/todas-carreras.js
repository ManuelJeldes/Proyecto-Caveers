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

//cortar palarbaas

function cortarPalabras(string) {
    const cortar = `${string.slice(0, 20)}...`;
    return cortar;
}

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

setTimeout(hideLoadingOverlay, 500);

// CORTAR PALABRAS

const $obetivoCarrera = document.querySelectorAll(
    '.carrera__descripcion-texto'
);

//*CAMBIAR ESTILO AL PRESIONAR
const $buttons = document.querySelectorAll('.panel__button');

$buttons.forEach((element) => {
    element.addEventListener('click', (e) => {
        $buttons.forEach((element) => element.classList.remove('active'));

        e.currentTarget.classList.add('active');
    });
});

// Agregar imagenes
const $cardImage = document.querySelector('.carrera__image');
const $card = document.querySelectorAll('.carrera');

const arregloIngenierias = [];

// ESCONDER CARRERAS

document.addEventListener('click', (e) => {
    // Restablecer
    $card.forEach((card) => {
        card.classList.remove('hidden');
        card.classList.remove('visible');
    });
    //TODAS
    if (e.target.matches('.todas')) {
        $card.forEach((card) => {
            card.classList.remove('hidden');
            card.classList.add('visible');
        });
    }

    //Ingenieria
    if (e.target.matches('.ingenieria')) {
        $card.forEach((card) => {
            if (
                card.lastElementChild.previousElementSibling.lastElementChild.firstElementChild.textContent.trim() !=
                'ingenieria'
            ) {
                card.classList.add('hidden');
            }
        });
    }

    //arte
    if (e.target.matches('.arte')) {
        $card.forEach((card) => {
            if (
                card.lastElementChild.previousElementSibling.lastElementChild.firstElementChild.textContent.trim() !=
                'arte'
            ) {
                card.classList.add('hidden');
            }
        });
    }

    //educacion
    if (e.target.matches('.educacion')) {
        $card.forEach((card) => {
            if (
                card.lastElementChild.previousElementSibling.lastElementChild.firstElementChild.textContent.trim() !=
                'educacion'
            ) {
                card.classList.add('hidden');
            }
        });
    }

    //salud
    if (e.target.matches('.salud')) {
        $card.forEach((card) => {
            if (
                card.lastElementChild.previousElementSibling.lastElementChild.firstElementChild.textContent.trim() !=
                'salud'
            ) {
                card.classList.add('hidden');
            }
        });
    }

    //sociales
    if (e.target.matches('.sociales')) {
        $card.forEach((card) => {
            if (
                card.lastElementChild.previousElementSibling.lastElementChild.firstElementChild.textContent.trim() !=
                'ciencias sociales'
            ) {
                card.classList.add('hidden');
            }
        });
    }

    //sociales
    if (e.target.matches('.naturales')) {
        $card.forEach((card) => {
            if (
                card.lastElementChild.previousElementSibling.lastElementChild.firstElementChild.textContent.trim() !=
                'ciencias naturales'
            ) {
                card.classList.add('hidden');
            }
        });
    }
});

//OBJETO CON RUTAS DE IMAGENES

const nombresCarreras = [
    {
        titulo: 'Licenciatura en Biología',
        rutaImagen: '/Assets/Images/Nuevas/biologia.jpg',
    },
    {
        titulo: 'Técnico en Geología Minera',
        rutaImagen: '/Assets/Images/Nuevas/mina.jpg',
    },
    {
        titulo: 'Biología',
        rutaImagen: '/Assets/Images/Nuevas/biologia.jpg',
    },
    {
        titulo: 'Tecnico En Geología Y Control En Sondaje',
        rutaImagen: '/Assets/Images/Nuevas/mina2.jpg',
    },
    {
        titulo: 'Introducción al cultivo de hongos Pleurotus Ostreatus',
        rutaImagen: '/Assets/Images/Nuevas/hongo.jpg',
    },
    {
        titulo: 'Derecho',
        rutaImagen: '/Assets/Images/Nuevas/derecho2.jpg',
    },
    {
        titulo: 'Curso Validación de Métodos Analíticos y Acreditación de Laboratorios ISO 17025',
        rutaImagen: '/Assets/Images/Nuevas/cursoraro.jpg',
    },
    {
        titulo: 'Técnico Jurídico',
        rutaImagen: '/Assets/Images/Nuevas/tecnicojuridico.jpg',
    },
    {
        titulo: 'La cultura esotérica de Occidente',
        rutaImagen: '/Assets/Images/Nuevas/esoterismo.jpeg',
    },
    {
        titulo: 'Técnicas de atención y servicio al cliente',
        rutaImagen: '/Assets/Images/CardImages/asistente.jpg',
    },
    {
        titulo: 'Médico Cirujano/Médica Cirujana',
        rutaImagen: '/Assets/Images/Nuevas/cirujano.jpg',
    },
    {
        titulo: 'Tecnico En Enfermería',
        rutaImagen: '/Assets/Images/Nuevas/tecnicomedico.jpg',
    },
    {
        titulo: 'Medicina',
        rutaImagen: '/Assets/Images/CardImages/medico2.jpg',
    },
    {
        titulo: 'Primeros Auxilios',
        rutaImagen: '/Assets/Images/Nuevas/auxilios.jpg',
    },
    {
        titulo: 'Diseñador/ Diseñadora',
        rutaImagen: '/Assets/Images/Nuevas/diseno.jpg',
    },
    {
        titulo: 'Diseño',
        rutaImagen: '/Assets/Images/Nuevas/tecdiseno.jpg',
    },
    {
        titulo: 'Técnico Diseño Digital',
        rutaImagen: '/Assets/Images/Nuevas/disenooooo.jpg',
    },
    {
        titulo: 'Técnico de nivel superior en Diseño Gráfico',
        rutaImagen: '/Assets/Images/Nuevas/otrodiseno.jpg',
    },
    {
        titulo: 'Curso de Fundamentos del Diseño Gráfico',
        rutaImagen: '/Assets/Images/Nuevas/fundamentos.jpg',
    },
    {
        titulo: 'Curso de Photoshop e Illustrator',
        rutaImagen: '/Assets/Images/CardImages/phoil.png',
    },
    {
        titulo: 'Curso de Photoshop e Illustrator',
        rutaImagen: '/Assets/Images/CardImages/phoil.png',
    },
    {
        titulo: 'Educador/a de Párvulos',
        rutaImagen: '/Assets/Images/CardImages/parvulos.jpg',
    },
    {
        titulo: 'Técnico De Nivel Superior En Educación Básica',
        rutaImagen:
            '/Assets/Images/CardImages/Técnico-de-Nivel-Superior-en-Educación-Básica-01.jpg',
    },
    {
        titulo: 'Ingeniería Civil Informática',
        rutaImagen: '/Assets/Images/Nuevas/informatica4.jpg',
    },
    {
        titulo: 'Capacitación Docente en Didáctica del Proceso Enseñanza - Aprendizaje',
        rutaImagen: '/Assets/Images/CardImages/capdocente.jpg',
    },
    {
        titulo: 'Técnico Universitario en Informática',
        rutaImagen: '/Assets/Images/Nuevas/informatica3.jpg',
    },
    {
        titulo: 'Ingeniería De Ejecución En Informática Mención Desarrollo De Sistemas',
        rutaImagen: '/Assets/Images/Nuevas/informatica2.jpg',
    },
    {
        titulo: 'Desarrollo de Software',
        rutaImagen: '/Assets/Images/Nuevas/informatica.jpg',
    },
    // Agrega más títulos y rutas de imagen según sea necesario
    ,
];

// Itera a través de las cartas
$card.forEach((card) => {
    // Acceder al elemento de título dentro de la carta
    const tituloCarrera = card.querySelector('.carrera__titulos-nombre');

    if (tituloCarrera) {
        // Obtiene el contenido del título
        const contenidoNombre = tituloCarrera.textContent.trim();

        // Busca el título en el array de títulos específicos
        const nombreEspecifico = nombresCarreras.find(
            (item) => item.titulo === contenidoNombre
        );

        if (nombreEspecifico) {
            // Si se encuentra un título específico, cambia la imagen de la carta
            const imagenElement = card.querySelector('.carrera__image');
            if (imagenElement) {
                imagenElement.src = nombreEspecifico.rutaImagen;
            }
        }
    }
});

// CORTAR DESCRIPCION
const $texto = document.querySelectorAll(
    '.carrera__descripcion-texto--objetivo'
);

$texto.forEach((element) => {
    const trimmedText = element.textContent.trim().slice(0, 250) + ' ....';
    element.textContent = trimmedText;
});
