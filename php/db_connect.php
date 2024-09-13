<?php
// Mostrar errores para diagnóstico
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Configuración de la base de datos
$servername = "sql202.infinityfree.com"; // Nombre de host MySQL proporcionado por InfinityFree
$username = "if0_37279875"; // Nombre de usuario de MySQL
$password = "bVKusGfdshmTS"; // Contraseña de MySQL
$database = "if0_37279875_enciclopediadb"; // Nombre de la base de datos

// Habilitar el reporte de errores de MySQLi
mysqli_report(MYSQLI_REPORT_ERROR | MYSQLI_REPORT_STRICT);

try {
    // Crear la conexión
    $conn = new mysqli($servername, $username, $password, $database);
    
    // Configurar el conjunto de caracteres
    $conn->set_charset("utf8mb4");
    
    // Mensaje de conexión exitosa (opcional)
    // echo "Conexión exitosa.";
} catch (mysqli_sql_exception $e) {
    // Manejo de errores en caso de fallo de conexión
    die("Error de conexión: " . $e->getMessage());
}
?>
