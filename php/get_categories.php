<?php
include 'db_connect.php'; // Conexión a la base de datos

// Establece el encabezado de la respuesta como JSON
header('Content-Type: application/json');

// Consulta para obtener las categorías
$sql = "SELECT id, nombre, descripcion FROM categorias";
$result = $conn->query($sql);

if (!$result) {
    echo json_encode(array("error" => "Error en la consulta: " . $conn->error));
    $conn->close();
    exit();
}

$categorias = array(); // Array para almacenar los resultados

if ($result->num_rows > 0) {
    // Recorre cada fila de los resultados y agregarla al array
    while($row = $result->fetch_assoc()) {
        $categorias[] = $row;
    }
    // Devuelve las categorías en formato JSON
    echo json_encode($categorias);
} else {
    // Devuelve un mensaje si no hay resultados
    echo json_encode(array("message" => "No hay categorías disponibles."));
}

// Cierra la conexión
$conn->close();
?>
