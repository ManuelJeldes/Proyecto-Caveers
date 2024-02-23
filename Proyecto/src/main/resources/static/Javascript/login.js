// Función para ocultar el GIF de carga después de un tiempo simulado
        function hideLoadingOverlay() {
            const loadingOverlay = document.getElementById('loading-overlay');
            loadingOverlay.style.display = 'none';
        }

        setTimeout(hideLoadingOverlay, 500);