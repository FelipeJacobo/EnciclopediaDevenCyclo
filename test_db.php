<?php
$servername = "sql202.infinityfree.com";
$username = "if0_37279875";
$password = "bVKusGfdshmTS";
$database = "if0_37279875_enciclopediadb";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $database);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
echo "Conexión exitosa";

// Consultar tablas
$result = $conn->query("SHOW TABLES");

if ($result) {
    echo "<h2>Tablas:</h2><ul>";
    while ($row = $result->fetch_array()) {
        echo "<li>" . $row[0] . "</li>";
    }
    echo "</ul>";
} else {
    echo "No se pudieron recuperar las tablas: " . $conn->error;
}

$conn->close();
?>
