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

/*DASHBOARD*/
const $lateral = document.querySelector('.lateral');
const $up = document.querySelector('.header__arrow-up');
const $down = document.querySelector('.header__arrow-down');
const $content = document.querySelector('.content');
document.addEventListener('click', (e) => {
    if (e.target.matches('.header__arrow-down')) {
        $lateral.classList.toggle('lateral--visible');
        $down.classList.toggle('header__arrow-down--hidden');
        $up.classList.toggle('header__arrow-up--visible');
        $content.classList.toggle('content--hidden');
    }
    if (e.target.matches('.header__arrow-up')) {
        $lateral.classList.toggle('lateral--visible');
        $up.classList.toggle('header__arrow-up--visible');
        $down.classList.toggle('header__arrow-down--hidden');
        $content.classList.toggle('content--hidden');
    }
});

const $dashboard = document.querySelector('.dashboard');
const $user = document.querySelector('.user');
const $favorites = document.querySelector('.favorites');
const $lateralDashboard = document.querySelector('.lateral__dashboard');
const $lateralUser = document.querySelector('.lateral__user');
const $dashIcon = document.querySelector('.dash-icon');
const $dashP = document.querySelector('.lateral__text-dash');
const $userP = document.querySelector('.lateral__user-text');
const $userIcon = document.querySelector('.user-icon');
const $favIcon = document.querySelector('.fav-icon');
const $favP = document.querySelector('.fav-p');
const $lateralFav = document.querySelector('.lateral__favorites');

// Ocultar las secciones $user y $favorites al cargar la página
$user.classList.add('user--hidden');
$favorites.classList.add('favorites--hidden');

document.addEventListener('click', (e) => {
    if (e.target.matches('.lateral__user')) {
        $dashboard.classList.add('dashboard--hidden');
        $lateralDashboard.classList.remove('lateral--active');
        $dashIcon.classList.add('icon--non-active');
        $dashIcon.classList.remove('icon--active');
        $dashP.classList.add('icon--non-active');
        $user.classList.remove('user--hidden');
        $lateralUser.classList.add('lateral--active');
        $userP.classList.add('icon--active');
        $favorites.classList.add('favorites--hidden');
        $userIcon.classList.add('icon--active');
        // remover background fav y dash
        $lateralDashboard.classList.remove('lateral--active');
        $lateralFav.classList.remove('lateral--active');

        // user
        $lateralFav.classList.remove('lateral--active');
        $favIcon.classList.remove('icon--active');
        $favP.classList.remove('icon--active');
        $favIcon.classList.add('icon--non-active');
        $favP.classList.add('icon--non-active');

        //dash
        $dashP.classList.remove('icon--active');
        $dashP.classList.add('icon--non-active');
    }

    if (
        e.target.matches('.lateral__dashboard') ||
        e.target.matches('.lateral__text-dash')
    ) {
        $dashboard.classList.remove('dashboard--hidden');
        $user.classList.add('user--hidden');
        $favorites.classList.add('favorites--hidden');

        //dashboard
        $lateralDashboard.classList.add('lateral--active');
        $dashIcon.classList.add('icon--active');
        $dashP.classList.add('icon--active');

        // fav
        $lateralFav.classList.remove('lateral--active');
        $favIcon.classList.remove('icon--active');
        $favP.classList.remove('icon--active');

        $favIcon.classList.add('icon--non-active');
        $favP.classList.add('icon--non-active');

        //user

        $lateralUser.classList.remove('lateral--active');
        $userIcon.classList.remove('icon--active');
        $userP.classList.remove('icon--active');
        $userP.classList.add('icon--non-active');
        $userIcon.classList.add('icon--non-active');
        // remover background fav y dash
    }

    if (e.target.matches('.lateral__favorites')) {
        $dashboard.classList.add('dashboard--hidden');
        $user.classList.add('user--hidden');
        $favorites.classList.remove('favorites--hidden');
        $lateralFav.classList.add('lateral--active');
        $favIcon.classList.add('icon--active');
        $favP.classList.add('icon--active');
        $lateralUser.classList.remove('lateral--active');
        $userIcon.classList.remove('icon--active');
        $userP.classList.remove('icon--active');
        $userP.classList.add('icon--non-active');
        $userIcon.classList.add('icon--non-active');
        //dash
        $lateralDashboard.classList.remove('lateral--active');
        $dashIcon.classList.remove('icon--active');
        $dashP.classList.remove('icon--active');
        $dashIcon.classList.add('icon--non-active');
        $dashP.classList.add('icon--non-active');
    }
});

// Función para ocultar el GIF de carga después de un tiempo simulado
        function hideLoadingOverlay() {
            const loadingOverlay = document.getElementById('loading-overlay');
            loadingOverlay.style.display = 'none';
        }

        setTimeout(hideLoadingOverlay, 500);
