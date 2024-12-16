<?php
session_start();
$error_message = '';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  $conn = new mysqli('localhost', 'root', '', 'barbershopsalon');

  if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
  }

  $username = $_POST['username'];
  $password = $_POST['password'];

  $sql = "SELECT * FROM users WHERE username = ?";
  $stmt = $conn->prepare($sql);
  $stmt->bind_param('s', $username);
  $stmt->execute();
  $result = $stmt->get_result();

  if ($result->num_rows > 0) {
    $user = $result->fetch_assoc();
    if ($password == $user['password']) {
      $_SESSION['username'] = $username;
      header('Location: admin.php');
      exit;
    } else {
      $error_message = "Password salah!";
    }
  } else {
    $error_message = "Username tidak ditemukan!";
  }

  $stmt->close();
  $conn->close();
}
?>


<!DOCTYPE html>
<html lang="id">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
  <title>Login Admin - STYLESPOT</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background-image: url('Gambar/backgroundLogin.png');
      /* Ganti dengan path yang sesuai */
      background-size: cover;
      background-position: center;
      color: white;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .box-large {
      background-color: rgba(255, 255, 255, 0.22);
      /* Transparan hitam */
      padding: 30px;
      border-radius: 10px;
      width: 1000px;
      height: 400px;
      position: relative;
      display: flex;
      flex-direction: column;
      justify-content: center;
      /* Menempatkan konten di tengah secara vertikal */
      align-items: flex-start;
      /* Rata kiri untuk teks */
    }

    .box-small {
      background-color: rgba(255, 255, 255, 0.63);
      padding: 20px;
      border-radius: 10px;
      width: 370px;
      /* Ukuran tetap */
      max-width: 100%;
      /* Maksimum lebar container */
      height: 400px;
      position: absolute;
      top: 30px;
      right: 30px;
      box-sizing: border-box;
      /* Tambahkan box-sizing */
    }

    .text-container {
      max-width: 600px;
      /* Lebar maksimal teks */
      margin-bottom: 20px;
      font-family: 'Poppins', sans-serif;
      /* Font Poppins */
      font-weight: 300;
      /* Mengurangi ketebalan font */
      letter-spacing: 3px;
      /* Menambahkan jarak antar huruf */
    }



    .text-container h1 {
      margin: 0;
      font-size: 40px;
    }

    .text-container p {
      margin: 10px 0 0;
      font-size: 16px;
    }

    .input-group {
      margin-bottom: 15px;
      text-align: left;
    }

    .input-group label {
      display: block;
      margin-bottom: 5px;
    }

    .input-group input {
      width: 100%;
      /* Pastikan lebar penuh mengikuti container */
      max-width: 100%;
      /* Input tidak melebihi container */
      padding: 10px;
      border: none;
      border-radius: 5px;
      box-sizing: border-box;
      /* Pastikan padding tidak menambah ukuran elemen */
    }

    .login-button {
      background-color: #FFFFFF;
      /* Warna latar putih */
      color: #000000;
      /* Warna teks hitam */
      padding: 10px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      width: 30%;
      /* Lebar tombol 30% dari parent */
      margin: 50px auto 0;
      /* Margin atas 20px, auto untuk horizontal */
      display: block;
      /* Membuat tombol sebagai elemen blok */
      text-align: center;
      /* Memastikan teks di tengah */
    }



    .login-button:hover {
      background-color: #707070;
    }

    .alternative-login {
      margin-top: 15px;
    }

    .alternative-login a {
      color: white;
      text-decoration: none;
    }

    .alternative-login a:hover {
      text-decoration: underline;
    }

    .signup {
      margin-top: 20px;
    }

    .error-message {
      color: red;
      font-size: 14px;
      margin-top: 5px;
      /* Memberikan jarak dari input password */
    }
  </style>
</head>

<body>

  <div class="box-large">
    <div class="text-container">
      <h1>Hallo, Welcome Admin!</h1>
      <p>Selamat datang di Dashboard Admin Pemetaan Barbershop Bandung Raya. Kami sangat senang Anda bergabung dengan
        kami!</p>
      <p>Silakan masuk untuk mengelola barbershop, memantau statistik, dan memberikan pengalaman yang luar biasa bagi
        pengguna kami.</p>
    </div>
    <form class="space-y-6" action="" method="POST">
      <div class="box-small">
        <img src="./Gambar/logo.png" alt="Logo" class="login-logo">
        <div class="input-group">
          <label for="username">Username</label>
          <input type="text" id="username" name="username" placeholder="Username">
        </div>
        <div class="input-group">
          <label for="password">Password</label>
          <input type="password" name="password" id="password" placeholder="Password">
        </div>
        <?php if (!empty($error_message)): ?>
          <p class="error-message"><?php echo $error_message; ?></p>
        <?php endif; ?>

        <button class="login-button" type="submit">Login</button>
    </form>
  </div>
  </div>
</body>

</html>