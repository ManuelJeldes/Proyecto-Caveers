// Obtén todos los elementos de rango de entrada (input range)
const inputRanges = document.querySelectorAll('.input-range');

// Agrega un escuchador de eventos a cada elemento de rango de entrada
inputRanges.forEach(inputRange => {
    inputRange.addEventListener('input', () => {
        const parentButton = inputRange.closest('.preguntas-button');
        const inputValue = parseInt(inputRange.value);

        // Cambia el color de fondo a verde si el valor no es 0, de lo contrario, vuelve a rojo
        if (inputValue !== 0) {
            parentButton.classList.add('selected');
            setTimeout(function() {
                parentButton.classList.remove('visible');
                parentButton.style.display = 'none';
                
              }, 800);
              
        } else {
            parentButton.classList.remove('selected');
        }
    });
});



// Función para ocultar el GIF de carga después de un tiempo simulado
        function hideLoadingOverlay() {
            const loadingOverlay = document.getElementById('loading-overlay');
            loadingOverlay.style.display = 'none';
        }

        setTimeout(hideLoadingOverlay, 500);
