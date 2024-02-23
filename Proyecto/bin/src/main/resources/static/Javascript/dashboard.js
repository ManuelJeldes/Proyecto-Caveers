const $favorite = document.querySelector('.favorite__carrers');
const $arrow = document.querySelector('.favorite__arrow');

// desplegar favoritos

document.addEventListener('click', (e) => {
    if (e.target.matches('.favorite__arrow')) {
        $favorite.classList.toggle('favorite__carrers');
    }
});
