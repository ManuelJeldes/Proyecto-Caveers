const sliders = document.querySelectorAll('.slider-container input[type="range"]');
sliders.forEach(slider => {
    slider.addEventListener('input', updateValuePosition);
});

function updateValuePosition(event) {
    const slider = event.target;
    const value = slider.value;
    const max = slider.getAttribute('max');
    const min = slider.getAttribute('min');
    const position = ((value - min) / (max - min)) * (slider.offsetWidth - 20);

    const valueElement = slider.parentElement.querySelector('.slider-value');
    valueElement.innerText = value;

    valueElement.style.left = `${position}px`; // Set the position in pixels
}