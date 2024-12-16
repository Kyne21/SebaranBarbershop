<!DOCTYPE html>
<html lang="id">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STYLESPOT</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet/dist/leaflet.css" />
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333;
            scroll-behavior: smooth;
        }

        .header {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 10px 20px;
            background-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            position: fixed;
            width: 80%;
            height: 80px;
            z-index: 10;
            left: 50%;
            transform: translateX(-50%);
            border-radius: 20px;
        }

        .header img {
            width: 200px;
        }

        .nav {
            display: flex;
            gap: 15px;
            margin-left: 20px;
            margin-right: 20px;
        }

        .nav a {
            text-decoration: none;
            color: black;
        }

        .nav a:hover {
            text-decoration: underline;
        }

        .section {
            height: 100vh;
            display: flex;
            justify-content: flex-start;
            align-items: center;
            position: relative;
            padding-top: 100px;
            background-image: url("Gambar/BackgroundHomePage.png");
            background-size: cover;
        }

        .text-container {
            max-width: 600px;
            text-align: left;
            margin-left: 20px;
            color: white;
        }

        .map-section {
            position: relative;
            padding-top: 40px;
        }

        #map {
            height: 60vh;
            width: 70%;
            margin: 20px auto;
            z-index: 1;
        }

        .map-title {
            text-align: center;
            font-weight: bold;
            font-size: 24px;
            position: absolute;
            top: 10px;
            left: 50%;
            transform: translateX(-50%);
            z-index: 2;
            color: black;
        }

        .white-section {
            background-color: white;
            color: black;
            padding: 20px;
        }

        h2,
        h3,
        p {
            text-align: left;
            margin-left: 20px;
            padding-top: 10px;
        }

        h3 {
            font-size: 50px;
        }

        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th,
        td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        .filter-container {
            text-align: center;
            margin: 20px;
        }

        .filter-container select {
            padding: 10px;
            width: 200px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .search-container {
            text-align: center;
            margin: 20px;
        }

        .search-container input {
            padding: 10px;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .search-container button {
            padding: 10px 15px;
            margin-left: 10px;
            border: none;
            background-color: #007BFF;
            color: white;
            border-radius: 5px;
            cursor: pointer;
        }

        .search-container button:hover {
            background-color: #0056b3;
        }

        .nav a {
            text-decoration: none;
            color: black;
            cursor: pointer;
            /* Menambahkan pointer saat hover */
        }

        .nav a:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>
    <div class="header">
        <img src="Gambar/logo.png" alt="Logo">
        <div class="nav">
            <a onclick="scrollToSection('homeSection')">Home</a>
            <a onclick="scrollToSection('mapSection')">Peta Lokasi</a>
            <a onclick="scrollToSection('dataSection')">Data Barbershop dan Salon</a>
            <a href="login.php">Login Admin</a>
        </div>

    </div>

    <div class="section" id="homeSection">
        <div class="text-container">
            <h2>PEMETAAN BARBERSHOP DAN SALON</h2>
            <h3>BANDUNG RAYA</h3>
            <p>STYLESPOT adalah platform yang dirancang khusus untuk memudahkan Anda menemukan barbershop dan salon
                terbaik di Bandung Raya. Kami memahami bahwa penampilan adalah bagian penting dari kepercayaan diri, dan
                kami ingin membantu Anda menemukan tempat yang tepat untuk merawat diri.</p>
        </div>
    </div>

    <div class="white-section" id="mapSection">
        <div class="map-section">
            <div class="map-title">PETA LOKASI</div>
            <div class="search-container">
                <input type="text" id="searchInput" placeholder="Cari Barbershop...">
                <button onclick="searchBarbershop()">Cari</button>
            </div>
            <div id="map"></div>
        </div>
    </div>

    <div class="white-section" id="dataSection">
        <h2>DATA BARBERSHOP DAN SALON</h2>
        <div class="filter-container">
            <label for="genderFilter">Filter berdasarkan Gender:</label>
            <select id="genderFilter" onchange="filterData()">
                <option value="">Semua</option>
                <option value="0">Pria</option>
                <option value="1">Wanita</option>
            </select>
        </div>
        <table id="dataTable">
            <thead>
                <tr>
                    <th>Nama</th>
                    <th>Alamat</th>
                    <th>Jam Buka</th>
                    <th>Jam Tutup</th>
                    <th>Harga</th>
                </tr>
            </thead>
            <tbody id="barbershopData">
                <!-- Data akan dimuat di sini -->
            </tbody>
        </table>
    </div>

    <script src="https://unpkg.com/leaflet/dist/leaflet.js"></script>
    <script>
        var map = L.map('map').setView([-6.9176, 107.6191], 12);

        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            maxZoom: 19,
        }).addTo(map);

        function scrollToSection(sectionId) {
            const section = document.getElementById(sectionId);
            section.scrollIntoView({
                behavior: 'smooth',
                block: 'start'
            });
        }


        fetch('getBarbershops.php')
            .then(response => response.json())
            .then(barbershops => {
                var markers = [];
                barbershops.forEach(function (barbershop) {
                    var hargaText = '';
                    if (barbershop.Harga == 1) {
                        hargaText = "< 50.000";
                    } else if (barbershop.Harga == 2) {
                        hargaText = "50.000 - 100.000";
                    } else if (barbershop.Harga == 3) {
                        hargaText = "> 100.000";
                    } else {
                        hargaText = "Harga tidak diketahui";
                    }

                    var instagramText = barbershop.Instagram ? "<a href='" + barbershop.Instagram + "' target='_blank'>Instagram</a>" : "Instagram belum tersedia";

                    var marker = L.marker([barbershop.Latitude, barbershop.Longitude]).addTo(map)
                        .bindPopup("<strong>" + barbershop.Nama + "</strong><br>" +
                            "Alamat: " + barbershop.Alamat + "<br>" +
                            "Buka: " + barbershop.Buka + "<br>" +
                            "Tutup: " + barbershop.Tutup + "<br>" +
                            "Harga: " + hargaText + "<br>" +
                            "Instagram: " + instagramText);

                    markers.push({ name: barbershop.Nama, marker: marker });

                    // Menambahkan data ke tabel
                    var row = `<tr class='gender-${barbershop.Gender}'>
                                <td>${barbershop.Nama}</td>
                                <td>${barbershop.Alamat}</td>
                                <td>${barbershop.Buka}</td>
                                <td>${barbershop.Tutup}</td>
                                <td>${hargaText}</td>
                               </tr>`;
                    document.getElementById('barbershopData').innerHTML += row;
                });
            });

        function searchBarbershop() {
            var input = document.getElementById("searchInput").value.toLowerCase();
            var found = false;

            markers.forEach(function (item) {
                if (item.name.toLowerCase().includes(input)) {
                    map.setView(item.marker.getLatLng(), 15);
                    item.marker.openPopup();
                    found = true;
                }
            });

            if (!found) {
                alert("Barbershop tidak ditemukan.");
            }
        }

        function filterData() {
            var selectedGender = document.getElementById("genderFilter").value;
            var rows = document.querySelectorAll("#dataTable tbody tr");

            rows.forEach(function (row) {
                if (selectedGender === "" || row.classList.contains("gender-" + selectedGender)) {
                    row.style.display = "";
                } else {
                    row.style.display = "none";
                }
            });
        }
    </script>
</body>

</html>