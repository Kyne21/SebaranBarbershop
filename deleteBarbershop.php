<?php
session_start();
if (!isset($_SESSION['username'])) {
    http_response_code(403); // Forbidden
    echo json_encode(['success' => false, 'message' => 'Unauthorized']);
    exit;
}

// Konfigurasi database
$host = 'localhost';
$user = 'root'; // Sesuaikan dengan user database Anda
$password = ''; // Sesuaikan dengan password database Anda
$database = 'barbershopsalon';

// Koneksi database
$conn = new mysqli($host, $user, $password, $database);

// Periksa koneksi
if ($conn->connect_error) {
    echo json_encode(['success' => false, 'message' => 'Database connection failed']);
    exit;
}

// Periksa parameter ID
if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    echo json_encode(['success' => false, 'message' => 'Invalid ID']);
    exit;
}

$id = intval($_GET['id']);

// Query untuk menghapus data
$sql = "DELETE FROM sebaran WHERE id = ?";
$stmt = $conn->prepare($sql);

if ($stmt) {
    $stmt->bind_param('i', $id);
    if ($stmt->execute()) {
        echo json_encode(['success' => true, 'message' => 'Data deleted successfully']);
    } else {
        echo json_encode(['success' => false, 'message' => 'Failed to delete data']);
    }
    $stmt->close();
} else {
    echo json_encode(['success' => false, 'message' => 'Failed to prepare statement']);
}

$conn->close();
?>
