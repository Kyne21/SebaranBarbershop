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
    <link href="./output.css" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-image: url('Gambar/backgroundLogin.png');
            background-size: cover;
            background-position: center;
            color: white;
            display: flex;
            flex-direction: column;
            /* Susun elemen secara vertikal */
            align-items: center;
            /* Pusatkan elemen secara horizontal */
            height: 100vh;
        }

        .container {
            max-width: 1600px;
            height: 100px;
            margin: 20px;
            padding: 20px;
            background: rgba(255, 255, 255, 0.54);
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            display: flex;
            justify-content: flex-start;
            /* Pusatkan logo secara horizontal */
            align-items: center;
            /* Pusatkan logo secara vertikal */
        }

        .container img {
            max-width: 300px;
            height: auto;
        }

        .body-container {
            max-width: 94vw;
            display: flex;
            flex-direction: row;
            gap: 20px;
            /* Beri jarak antar elemen */
        }

        .big-container {
            width: 45vw;
            padding: 20px;
            max-height: 80vh;
            overflow-y: auto;
            background: rgba(255, 255, 255, 0.7);
            border-radius: 8px;
            overflow-x: auto;
        }

        .big-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #4CAF50;
        }

        #sebaranTable {
            width: 100%;
            border-collapse: collapse;
        }

        #sebaranTable th,
        #sebaranTable td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: center;
        }

        #sebaranTable th {
            background-color: #4CAF50;
            color: white;
        }

        #sebaranTable tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        #sebaranTable tr:hover {
            background-color: #ddd;
        }

        .small-container {
            width: 319px;
            height: 154px;
            background: rgba(255, 255, 255, 0.55);
            border-radius: 8px;
        }

        h1 {
            text-align: center;
            color: #4CAF50;
        }
    </style>
</head>

<body>
    <div class="container">
        <img src="Gambar/logo.png" alt="Logo" class="logo">
    </div>
    <div class="body-container">
        <div class="big-container">
            <h2>Daftar Sebaran Barbershop</h2>
            <table id="sebaranTable">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Nama</th>
                        <th>Alamat</th>
                        <th>Latitude</th>
                        <th>Longitude</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody id="barbershopData">
                    <!-- Data akan dimuat di sini menggunakan JavaScript -->
                </tbody>
            </table>
        </div>

        <div class="small-container">
            <!-- Konten small-container -->
        </div>
        <div class="small-container">
            <!-- Konten small-container -->
        </div>
        <div class="small-container">
            <!-- Konten small-container -->
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            fetch('getBarbershops.php')
                .then(response => response.json())
                .then(barbershops => {
                    const tableBody = document.getElementById('barbershopData');
                    tableBody.innerHTML = ''; // Kosongkan isi awal tabel

                    barbershops.forEach((barbershop, index) => {
                        let hargaText = '';
                        if (barbershop.Harga == 1) {
                            hargaText = "< 50.000";
                        } else if (barbershop.Harga == 2) {
                            hargaText = "50.000 - 100.000";
                        } else if (barbershop.Harga == 3) {
                            hargaText = "> 100.000";
                        } else {
                            hargaText = "Harga tidak diketahui";
                        }

                        let instagramText = barbershop.Instagram
                            ? `<a href='${barbershop.Instagram}' target='_blank'>Instagram</a>`
                            : "Instagram belum tersedia";

                        const row = `
                <tr>
                    <td>${index + 1}</td>
                    <td>${barbershop.Nama}</td>
                    <td>${barbershop.Alamat}</td>
                    <td>${barbershop.Latitude}</td>
                    <td>${barbershop.Longitude}</td>
                    <td>
                        <button onclick="deleteBarbershop(${barbershop.id})" style="background-color: red; border-radius:5px; color: white; border: none; padding: 5px 10px; cursor: pointer;">Hapus</button>
                    </td>
                </tr>
            `;
                        tableBody.innerHTML += row;
                    });
                })
                .catch(error => {
                    console.error('Error fetching data:', error);
                });
        });

        function deleteBarbershop(id) {
            if (!id) {
                console.error('ID tidak valid:', id);
                alert('ID tidak valid!');
                return;
            }
            console.log('ID yang dikirim ke deleteBarbershop:', id);


            fetch(`deleteBarbershop.php?id=${id}`)
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Network response was not ok');
                    }
                    return response.json();
                })
                .then(data => {
                    if (data.success) {
                        alert('Data berhasil dihapus!');
                        location.reload();
                    } else {                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   
                        alert(`Gagal menghapus data: ${data.message}`);
                    }
                })
                .catch(error => {
                    console.error('Error:', error);
                    alert('Terjadi kesalahan saat menghapus data');
                });
        }


    </script>


</body>

</html>