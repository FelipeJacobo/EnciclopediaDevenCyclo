<?php
include 'db_connect.php'; // Asegúrate de que la ruta sea correcta

// Establece el encabezado de la respuesta como JSON
header('Content-Type: application/json');

// Consulta para obtener los términos
$sql = "SELECT nombre, descripcion FROM terminos";
$result = $conn->query($sql);

if (!$result) {
    die("Error en la consulta: " . $conn->error);
}

$terminos = array(); // Array para almacenar los resultados

if ($result->num_rows > 0) {
    // Recorre cada fila de los resultados y agregarla al array
    while($row = $result->fetch_assoc()) {
        $terminos[] = $row;
    }
    // Devuelve los términos en formato JSON
    echo json_encode($terminos);
} else {
    // Devuelve un array vacío si no hay resultados
    echo json_encode([]);
}

// Cierra la conexión
$conn->close();
?>
