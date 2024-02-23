const $button = document.querySelector('.header__hamburguer');
const $nav = document.querySelector('.main-nav');

// esconder header
document.addEventListener('click', (e) => {
    if (e.target.matches('.header__hamburguer')) {
        console.log(e);
        $nav.classList.toggle('main-nav--active');
    }
});

// panle lateral
const $panel = document.querySelector('.panel');
const $x = document.querySelector('.panel__x');
const $filterButton = document.querySelector('.select__filter');

document.addEventListener('click', (e) => {
    if (e.target.matches('.select__filter')) {
        console.log(e);
        $panel.classList.toggle('panel--active');
    }
    if (e.target.matches('.panel__x')) {
        $panel.classList.toggle('panel--active');
    }
});
