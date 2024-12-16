<?php
session_start();
if (!isset($_SESSION['username'])) {
    header('Location: login.php');
    exit;
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
            color: #333;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            color: #4CAF50;
        }
        .actions {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            gap: 20px;
        }
        .actions a {
            text-decoration: none;
            color: white;
            background-color: #4CAF50;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }
        .actions a:hover {
            background-color: #45a049;
        }
        .logout {
            text-align: center;
            margin-top: 20px;
        }
        .logout a {
            color: red;
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Selamat Datang, <?php echo $_SESSION['username']; ?>!</h1>
        <p>Ini adalah halaman admin. Anda dapat mengelola sistem dari sini.</p>
        <div class="actions">
            <a href="manage_users.php">Kelola Pengguna</a>
            <a href="manage_content.php">Kelola Konten</a>
        </div>
        <div class="logout">
            <a href="index.php">Logout</a>
        </div>
    </div>
</body>
</html>
