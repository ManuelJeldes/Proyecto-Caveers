

const $button = document.querySelector('.header__hamburguer');
const $nav = document.querySelector('.main-nav');

// esconder menu
document.addEventListener('click', (e) => {
    if (e.target.matches('.header__hamburguer')) {
        console.log(e);
        $nav.classList.toggle('main-nav--active');
    }
});


