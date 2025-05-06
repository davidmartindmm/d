<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ver Ubicación</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-color: #f4f4f4;
        }
        #coordenadas {
            font-size: 18px;
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <h1>Tu Ubicación</h1>
    <p id="coordenadas">Cargando ubicación...</p>

    <script>
        // Obtener las coordenadas de la URL
        const urlParams = new URLSearchParams(window.location.search);
        const lat = urlParams.get('lat');
        const lon = urlParams.get('lon');

        if (lat && lon) {
            document.getElementById('coordenadas').textContent = `Latitud: ${lat}, Longitud: ${lon}`;
        } else {
            document.getElementById('coordenadas').textContent = "No se pudo obtener la ubicación.";
        }
    </script>
</body>
</html>
