document.addEventListener('DOMContentLoaded', function () {
    // Obtener los elementos de entrada por sus IDs
    const p1Input = document.getElementById('p1');
    const p2Input = document.getElementById('p2');
    const p3Input = document.getElementById('p3');
    const p4Input = document.getElementById('p4');
    const p5Input = document.getElementById('p5');
    const p6Input = document.getElementById('p6');
    const p7Input = document.getElementById('p7');
    const p8Input = document.getElementById('p8');
    const p9Input = document.getElementById('p9');
    const p10Input = document.getElementById('p10');
    const p11Input = document.getElementById('p11');
    const p12Input = document.getElementById('p12');
    const p13Input = document.getElementById('p13');
    const p14Input = document.getElementById('p14');
    const p15Input = document.getElementById('p15');
    const p16Input = document.getElementById('p16');
    const p17Input = document.getElementById('p17');
    const p18Input = document.getElementById('p18');

    // Función para calcular el promedio
    function calcularPromedio(...valores) {
        const suma = valores.reduce((acc, val) => acc + val, 0);
        return suma / valores.length;
    }

    // Función para actualizar las variables ciencias e historia
    function actualizarVariables() {
        const valorP1 = parseFloat(p1Input.value);
        const valorP2 = parseFloat(p2Input.value);
        const valorP3 = parseFloat(p3Input.value);
        const valorP4 = parseFloat(p4Input.value);
        const valorP5 = parseFloat(p5Input.value);
        const valorP6 = parseFloat(p6Input.value);
        const valorP7 = parseFloat(p7Input.value);
        const valorP8 = parseFloat(p8Input.value);
        const valorP9 = parseFloat(p9Input.value);
        const valorP10 = parseFloat(p10Input.value);
        const valorP11 = parseFloat(p11Input.value);
        const valorP12 = parseFloat(p12Input.value);
        const valorP13 = parseFloat(p13Input.value);
        const valorP14 = parseFloat(p14Input.value);
        const valorP15 = parseFloat(p15Input.value);
        const valorP16 = parseFloat(p16Input.value);
        const valorP17 = parseFloat(p17Input.value);
        const valorP18 = parseFloat(p18Input.value);

        if (valorP1 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[1].classList.add('visible');
        }
        if (valorP2 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[2].classList.add('visible');
        }
        if (valorP3 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[3].classList.add('visible');
        }
        if (valorP4 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[4].classList.add('visible');
        }
        if (valorP5 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[5].classList.add('visible');
        }
        if (valorP6 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[6].classList.add('visible');
        }
        if (valorP7 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[7].classList.add('visible');
        }
        if (valorP8 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[8].classList.add('visible');
        }
         if (valorP9 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[9].classList.add('visible');
        }
        if (valorP10 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[10].classList.add('visible');
        }
        if (valorP11 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[11].classList.add('visible');
        }
        if (valorP12 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[12].classList.add('visible');
        }
        if (valorP13 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[13].classList.add('visible');
        }
        if (valorP14 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[14].classList.add('visible');
        }
        if (valorP15 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[15].classList.add('visible');
        }
        if (valorP16 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[16].classList.add('visible');
        }
        if (valorP17 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[17].classList.add('visible');
        }
        if (valorP18 > 0) {
            // Mostrar otras preguntas si el valor de p1 es mayor que 0
            preguntasButtons[18].classList.add('visible');
        }

        // Calcular los promedios
        const Ciencias = calcularPromedio(valorP1, valorP7, valorP13);
        const Historia = calcularPromedio(valorP2, valorP8, valorP14);
        const Salud = calcularPromedio(valorP3, valorP9, valorP15);
        const Arte = calcularPromedio(valorP4, valorP10, valorP16);
        const Educacion = calcularPromedio(valorP5, valorP11, valorP17);
        const Ingenieria = calcularPromedio(valorP6, valorP12, valorP18);

        const variables = {
            Ciencias,
            Historia,
            Salud,
            Arte,
            Educacion,
            Ingenieria,
        };

        let variableMasAlta = '';
        let valorMasAlto = -Infinity;

        for (const variable in variables) {
            if (variables[variable] > valorMasAlto) {
                valorMasAlto = variables[variable];
                variableMasAlta = variable;
            }
        }

        // Asignar los promedios a las variables
        const promediociencias = Ciencias;
        const promediohistoria = Historia;
        const promediosalud = Salud;
        const promediooarte = Arte;
        const promedioeducacion = Educacion;
        const promedioingenieria = Ingenieria;

        // Ahora puedes utilizar las variables ciencias e historia según sea necesario
        console.log('Promedio de Ciencias:', promediociencias);
        console.log('Promedio de Historia:', promediohistoria);
        console.log('Promedio de Salud:', promediosalud);
        console.log('Promedio de Arte:', promediooarte);
        console.log('Promedio de Educacion:', promedioeducacion);
        console.log('Promedio de Ingenieria:', promedioingenieria);
        console.log('La variable con el valor mas alto es: ', variableMasAlta);
        console.log(
            'Valor de areaMasAlta recuperado:',
            localStorage.getItem('areaMasAlta')
        );

        document.getElementById('ciencias').value = Ciencias;
        document.getElementById('historia').value = Historia;
        document.getElementById('salud').value = Salud;
        document.getElementById('arte').value = Arte;
        document.getElementById('educacion').value = Educacion;
        document.getElementById('ingenieria').value = Ingenieria;
        document.getElementById('form-submit').value = variableMasAlta;
    }

    // Agregar event listeners a los rangos de entrada para actualizar las variables cuando cambien
    p1Input.addEventListener('input', actualizarVariables);
    p2Input.addEventListener('input', actualizarVariables);
    p3Input.addEventListener('input', actualizarVariables);
    p4Input.addEventListener('input', actualizarVariables);
    p5Input.addEventListener('input', actualizarVariables);
    p6Input.addEventListener('input', actualizarVariables);
    p7Input.addEventListener('input', actualizarVariables);
    p8Input.addEventListener('input', actualizarVariables);
    p9Input.addEventListener('input', actualizarVariables);
    p10Input.addEventListener('input', actualizarVariables);
    p11Input.addEventListener('input', actualizarVariables);
    p12Input.addEventListener('input', actualizarVariables);
    p13Input.addEventListener('input', actualizarVariables);
    p14Input.addEventListener('input', actualizarVariables);
    p15Input.addEventListener('input', actualizarVariables);
    p16Input.addEventListener('input', actualizarVariables);
    p17Input.addEventListener('input', actualizarVariables);
    p18Input.addEventListener('input', actualizarVariables);





    function obtenerAreaConPromedioMasAlto() {
        const promedios = {
            'ciencias naturales': parseFloat(
                document.getElementById('ciencias').value
            ),
            'ciencias sociales': parseFloat(
                document.getElementById('historia').value
            ),
            Salud: parseFloat(document.getElementById('salud').value),
            Arte: parseFloat(document.getElementById('arte').value),
            Educacion: parseFloat(document.getElementById('educacion').value),
            Ingenieria: parseFloat(document.getElementById('ingenieria').value),
        };

        let areaMasAlta = '';
        let valorMasAlto = -Infinity;

        for (const area in promedios) {
            if (promedios[area] > valorMasAlto) {
                valorMasAlto = promedios[area];
                areaMasAlta = area;
            }
        }

        return areaMasAlta;
    }

    // Obtén el formulario por su ID
    const form = document.querySelector('form');

    // Agrega un event listener para el envío del formulario
    form.addEventListener('submit', function (event) {
        // Obtén el valor de 'areaMasAlta' desde el formulario
        const areaMasAltaValue = obtenerAreaConPromedioMasAlto();

        // Almacena el valor en localStorage
        localStorage.setItem('areaMasAlta', areaMasAltaValue);

        // Crea un elemento de entrada oculto para 'areaMasAlta'
        const areaMasAltaInput = document.createElement('input');
        areaMasAltaInput.type = 'hidden';
        areaMasAltaInput.name = 'areaMasAlta';
        areaMasAltaInput.value = areaMasAltaValue;

        // Agrega el campo oculto al formulario
        form.appendChild(areaMasAltaInput);

        // Continúa con el envío del formulario
    });

    // Si deseas cargar el valor de 'areaMasAlta' desde localStorage cuando la página se cargue
    document.addEventListener('submit', function () {
        console.log(
            'Valor de areaMasAlta recuperado:',
            localStorage.getItem('areaMasAlta')
        );
    });

    // Obtén los botones por su ID
    const btnUniversidad = document.getElementById('btnUniversidad');
    const btnTecnico = document.getElementById('btnTecnico');
    const btnCurso = document.getElementById('btnCurso');

    // Agrega event listeners a los botones para redirigir según el tipo y el área
    btnUniversidad.addEventListener('click', function () {
        const tipo = 'universidad';
        const area = localStorage.getItem('areaMasAlta');
        window.location.href = `http://localhost:8080/compare-careers/${tipo}/${area}`;
    });

    btnTecnico.addEventListener('click', function () {
        const tipo = 'tecnico';
        const area = localStorage.getItem('areaMasAlta');
        window.location.href = `http://localhost:8080/compare-careers/${tipo}/${area}`;
    });

    btnCurso.addEventListener('click', function () {
        const tipo = 'curso';
        const area = localStorage.getItem('areaMasAlta');
        window.location.href = `http://localhost:8080/compare-careers/${tipo}/${area}`;
    });
});

// Función para ocultar el GIF de carga después de un tiempo simulado
function hideLoadingOverlay() {
    const loadingOverlay = document.getElementById('loading-overlay');
    loadingOverlay.style.display = 'none';
}

setTimeout(hideLoadingOverlay, 500);

// aqui comienza el test, //
// Obtén una referencia al botón "start-button" y a todas las preguntas.
const startButton = document.getElementById('start-button');
const preguntasButtons = document.querySelectorAll('.preguntas-button');

// Agrega un evento de clic al botón "start-button".
startButton.addEventListener('click', () => {
    // Oculta el botón "start-button".
    startButton.style.display = 'none';

    // Muestra las preguntas con una transición.

    preguntasButtons[0].style.display='inline-block'
    preguntasButtons[0].classList.add('visible');
});
