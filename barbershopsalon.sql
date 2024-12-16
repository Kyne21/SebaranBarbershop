-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 05:28 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barbershopsalon`
--

-- --------------------------------------------------------

--
-- Table structure for table `sebaran`
--

CREATE TABLE `sebaran` (
  `id` int(11) NOT NULL,
  `Nama` varchar(300) NOT NULL,
  `Gender` int(11) NOT NULL,
  `Alamat` varchar(300) NOT NULL,
  `Latitude` float NOT NULL,
  `Longitude` float NOT NULL,
  `Buka` time NOT NULL,
  `Tutup` time NOT NULL,
  `Harga` int(11) NOT NULL,
  `Instagram` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sebaran`
--

INSERT INTO `sebaran` (`id`, `Nama`, `Gender`, `Alamat`, `Latitude`, `Longitude`, `Buka`, `Tutup`, `Harga`, `Instagram`) VALUES
(1, 'Alzeta Barbershop', 0, 'no.36b, Jl. Tamansari, Tamansari, Bandung Wetan, Bandung City, West Java 40116', -6.90168, 107.608, '11:00:00', '21:00:00', 2, 'https://www.instagram.com/alzeta_barbershop/'),
(2, 'Starman’s Barbershop', 0, 'Jl. Dr. Setiabudi No.163, Gegerkalong, Kec. Sukasari, Kota Bandung, Jawa Barat 40153', -6.86875, 107.593, '10:00:00', '21:00:00', 1, ''),
(3, 'Onta Ginding Barbershop', 0, 'Jl. Flores No.11, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115', -6.9078, 107.618, '10:00:00', '21:00:00', 3, 'https://www.instagram.com/ontaginding.barbershop/'),
(4, 'Golden Barbershop Dipatiukur', 0, 'No.57B2, Jl. Dipati Ukur Lt.1, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132', -6.89058, 107.617, '08:00:00', '23:00:00', 3, 'https://www.instagram.com/ontaginding.barbershop/'),
(5, 'Golden Barbershop Cihampelas', 0, 'Cipaganti, Kecamatan Coblong, Kota Bandung, Jawa Barat 40131', -6.88883, 107.604, '08:00:00', '22:00:00', 3, 'https://www.instagram.com/ontaginding.barbershop/'),
(6, 'Golden Barbershop Dago', 0, 'Jl. Ir. H. Juanda No.294A, Dago, Kecamatan Coblong, Kota Bandung, Jawa Barat 40135', -6.88006, 107.616, '08:00:00', '23:00:00', 3, 'https://www.instagram.com/ontaginding.barbershop/'),
(7, 'Golden Barbershop Ujung Berung', 0, 'Jl. A.H. Nasution No.111A, Cigending, Kec. Ujung Berung, Kota Bandung, Jawa Barat 40611', -6.91395, 107.697, '08:00:00', '23:00:00', 3, 'https://www.instagram.com/ontaginding.barbershop/'),
(8, 'Golden Barbershop Podomoro', 0, 'Jl. Raya Bojongsoang No.183, Lengkong, Kec. Bojongsoang, Kabupaten Bandung, Jawa Barat 40287', -6.97576, 107.635, '08:00:00', '23:00:00', 3, 'https://www.instagram.com/ontaginding.barbershop/'),
(9, 'Golden Barbershop Taman Kopo Indah 2', 0, 'Ruko Pasar RB15, Jl. Raya Taman Kopo Indah 2, Rahayu, Kec. Margaasih, Kabupaten Bandung, Jawa Barat 40226', -6.96359, 107.563, '08:00:00', '23:00:00', 3, 'https://www.instagram.com/ontaginding.barbershop/'),
(10, 'Venus Barbershop', 0, 'Jl. Abdul Rahman Saleh No.60, Husen Sastranegara, Kec. Cicendo, Kota Bandung, Jawa Barat 40174', -6.9075, 107.582, '08:00:00', '23:00:00', 1, 'https://www.instagram.com/venusbarbershop/'),
(11, 'De Fred Barber & Shop', 0, 'Jl. Burangrang No.33C, Malabar, Kec. Lengkong, Kota Bandung, Jawa Barat 40262', -6.92654, 107.62, '08:00:00', '23:00:00', 3, 'https://www.instagram.com/defredbarber/'),
(12, 'Daily Cuts Barbershop', 0, 'Jl. Aceh No.41, Babakan Ciamis, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40117', -6.91027, 107.608, '08:00:00', '23:00:00', 1, 'https://www.instagram.com/dailycuts_id/'),
(13, 'Brocode Barbershop', 0, 'Jl. Raya Golf Dago No.1, Dago Atas, Kecamatan Coblong, Jawa, Barat, Kota Bandung, Jawa Barat 40134', -6.89613, 107.615, '09:00:00', '22:00:00', 3, 'https://www.instagram.com/brocode_barber/'),
(14, 'BroColi Barber & Grooming', 0, 'Jl. DR. Ehrlich No.7, Pasir Kaliki, Kec. Cicendo, Kota Bandung, Jawa Barat 40171', -6.90106, 107.599, '09:00:00', '21:00:00', 3, 'https://www.instagram.com/brocolibarber/'),
(15, 'The Cut Rumah Barber', 0, 'Jl. Lombok No.30A, Cihapit, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40114', -6.90723, 107.621, '10:00:00', '21:00:00', 3, 'https://www.instagram.com/thecutrumah.barber/'),
(16, 'Rock n Roll Haircutting', 0, 'Jl. Tm. Cibeunying Sel. No.1, Cihapit, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40114', -6.9081, 107.627, '10:00:00', '21:00:00', 3, 'https://www.instagram.com/rnrhaircutting/'),
(17, 'Barber Pop Dago', 0, 'Jl. Ir. H. Juanda No.59, Tamansari, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40116', -6.90119, 107.612, '10:00:00', '20:00:00', 3, ''),
(18, 'Headcore Barbershop', 0, 'Jl. Cisangkuy No.68, Cihapit, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115', -6.90165, 107.621, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/headcore_barbershop/'),
(19, 'Paxi Barbershop', 0, 'Jl. Gatot Subroto No.289, Cibangkong, Kec. Batununggal, Kota Bandung, Jawa Barat 40273', -6.92463, 107.636, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/paxi_barbershop/'),
(20, 'FM Barbershop', 0, 'Jl. Guntursari Wetan No.30, Turangga, Kec. Lengkong, Kota Bandung, Jawa Barat 40264', -6.9442, 107.635, '10:00:00', '21:00:00', 2, ''),
(21, 'Oscar Barber Shop', 0, 'Jl. Cibaduyut No.202, Cibaduyut Kidul, Kec. Bojongloa Kidul, Kota Bandung, Jawa Barat 40239', -6.96048, 107.594, '10:00:00', '21:00:00', 2, ''),
(22, 'Captain Barbershop Buah Batu', 0, 'Jl. Buah Batu No.146, Cijagra, Kec. Lengkong, Kota Bandung, Jawa Barat 40265', -6.93757, 107.623, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/captainbarbershopid/'),
(23, 'SIK\'K Parahyangan Barbershop', 0, 'Jl. Wiranta No.26, Cicadas, Kec. Cibeunying Kidul, Kota Bandung, Jawa Barat 40121', -6.90976, 107.638, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/sikkparah/'),
(24, 'Rockyman Barber', 0, 'Jl. Cikutra No.137, Neglasari, Kec. Cibeunying Kidul, Kota Bandung, Jawa Barat 40124', -6.89861, 107.643, '10:00:00', '22:30:00', 2, ''),
(25, 'Enakin Corp', 0, 'Jl. Imam Bonjol No.34, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40312', -6.8908, 107.616, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/enakincorp/'),
(26, 'EFCK Barbershop', 0, 'Jl. Ciliwung No.23A, Cihapit, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40114', -6.90448, 107.628, '10:00:00', '20:00:00', 2, 'https://www.instagram.com/efckbarbershop/'),
(27, 'Kingz Barbershop', 0, 'Jl. Ibrahim Adjie No.348, Binong, Kec. Batununggal, Kota Bandung, Jawa Barat 40275', -6.93691, 107.642, '08:00:00', '20:00:00', 2, 'https://www.instagram.com/kingz_barber/'),
(28, 'Glorious Barbershop', 0, 'No, Jl. Mekar Mulya No.20, Mekar Mulya, Kec. Panyileukan, Kota Bandung, Jawa Barat 40292', -6.92445, 107.702, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/gloriousbarbershop/'),
(29, 'Chop Chop Hair Cut', 0, 'Jl Cendana No 11, Bandung', -6.90877, 107.628, '10:00:00', '19:00:00', 2, ''),
(30, 'Travourse - Men\'s Haircut & Grooming Expert | Garuda', 0, 'Jl. Garuda No.39, Dungus Cariang, Kec. Andir, Kota Bandung, Jawa Barat 40184', -6.91477, 107.578, '10:00:00', '20:00:00', 2, ''),
(31, 'Bikin Tampan Barber House', 0, 'Jl. Cidurian Utara No.9, Sukapura, Kec. Kiaracondong, Kota Bandung, Jawa Barat 40285', -6.94111, 107.653, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/bikintampan/'),
(32, 'Captain Barbershop Bandung Mekarwangi', 0, 'Jl. Mekar Utama Komplek No.111J, Mekarwangi, Kec. Bojongloa Kidul, Kota Bandung, Jawa Barat 40237', -6.95416, 107.607, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/captainbarbershopid/'),
(33, 'Captain Barbershop Bandung Cihampelas', 0, 'Jl. Cihampelas No.48a, Tamansari, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40116', -6.90265, 107.604, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/captainbarbershopid/'),
(34, 'Captain Barbershop Sumantri', 0, 'Jl. Surya Sumantri No.67-87, Sukawarna, Kec. Sukajadi, Kota Bandung, Jawa Barat 40164', -6.88379, 107.582, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/captainbarbershopid/'),
(35, 'Captain Barbershop Premiere Sutami Bandung', 0, 'Jl. Prof. Dr. Sutami No.58, Sukarasa, Kec. Sukasari, Kota Bandung, Jawa Barat 40152', -6.87785, 107.587, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/captainbarbershopid/'),
(36, 'Dansei { 男性 } Barbershop', 0, 'Jl. Margasari No.125, Margasari, Kec. Buahbatu, Kota Bandung, Jawa Barat 40287', -6.95876, 107.659, '10:00:00', '21:00:00', 2, ''),
(37, 'BarBerBos Buah Batu', 0, 'Jl. Terusan Buah Batu No.249, Kujangsari, Kec. Bandung Kidul, Kota Bandung, Jawa Barat 40287', -6.96153, 107.639, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/barberbos/'),
(38, 'Groomify Barbershop MONOCHROME', 0, 'Jl. Komp. Permata Buah Batu Ruko 1 No.1, Lengkong, Kec. Bojongsoang, Kabupaten Bandung, Jawa Barat 40287', -6.97308, 107.636, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/groomify.id/'),
(39, 'Barber Pop', 0, 'Jl. Karangsari, Pasteur, Kec. Sukajadi, Kota Bandung, Jawa Barat 40161', -6.88096, 107.599, '10:00:00', '20:00:00', 3, 'https://www.instagram.com/barberpop/'),
(40, 'RGX\'S Barber Shop', 0, 'Jl. Ciumbuleuit No.95 E, Hegarmanah, Kec. Cidadap, Kota Bandung, Jawa Barat 40141', -6.87982, 107.603, '09:00:00', '21:00:00', 1, ''),
(41, 'Hollowtrips Barbershop', 0, 'Jl. Ciumbuleuit No.73, Hegarmanah, Kec. Cidadap, Kota Bandung, Jawa Barat 40142', -6.88111, 107.604, '09:00:00', '22:00:00', 2, 'https://www.instagram.com/hollowtripsbarbershop/'),
(42, 'Radja Pangkas Premium Cemara 3', 0, 'Jl. Cemara No.3, Pasteur, Kec. Sukajadi, Kota Bandung, Jawa Barat 40161', -6.88443, 107.601, '09:00:00', '21:00:00', 2, 'https://www.instagram.com/radjapangkaspremium/'),
(43, 'Pansy Hairstudio', 0, 'Jl. Ir. H. Juanda No.278, Dago, Kecamatan Coblong, Kota Bandung, Jawa Barat 40135', -6.88059, 107.616, '12:00:00', '20:00:00', 3, 'https://www.instagram.com/pansy_hairstudio/'),
(44, 'Pangkas Rambut Utama', 0, 'Jl. Jurang No.7, Pasteur, Kec. Sukajadi, Kota Bandung, Jawa Barat 40161', -6.8897, 107.6, '09:00:00', '21:00:00', 1, 'https://www.instagram.com/pangkas_rambut_utama/'),
(45, 'Sh Barbershop (cabang 2)', 0, 'Jl. Sekeloa Timur No.2, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40121', -6.88996, 107.617, '08:00:00', '21:00:00', 1, ''),
(46, 'Barokah Barbershop', 0, 'Jl. Saip No.176 gelatik dalam no.383, Sadang 40133, Sadang Serang, Kecamatan Coblong, Kota Bandung, Jawa Barat 40133', -6.89427, 107.623, '08:00:00', '21:00:00', 2, 'https://www.instagram.com/barokahbarbershop/'),
(47, 'Cozy Barbershop', 0, 'Jl. Terusan Katamso No.151A, Cikutra, Kec. Cibeunying Kidul, Kota Bandung, Jawa Barat 40124', -6.90055, 107.639, '10:00:00', '23:00:00', 1, 'https://www.instagram.com/barbershopcozy/'),
(48, 'Rocknroll Haircutting & Makeover', 0, 'Jl. Tm. Cibeunying Sel. No.1, Cihapit, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40114', -6.9081, 107.627, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/rnrhaircutting/'),
(49, 'British Barbershop', 0, 'Jalan kolonel masturi no 27 samping rumah makan ramyana 2, Cimahi, Cimahi Tengah, Cimahi City, West Java 40152', -6.87106, 107.542, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/barber__british/'),
(50, 'Kanaka Barbershop Cimahi', 0, 'Jl. Jend. H. Amir Machmud No.635, Setiamanah, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40524', -6.87203, 107.539, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/kanaka.barbershop/'),
(51, 'Sidewalks Barber And Shop', 0, 'Jl. Pojok Utara No.249, Setiamanah, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40524', -6.87314, 107.538, '10:00:00', '20:00:00', 2, 'https://www.instagram.com/sidewalks.id/'),
(52, 'Will28 Barbershop', 0, 'Jl. Babakan No.29, Cimahi, Kec. Cimahi Tengah, Jl. Kolonel Masturi No.136 / 146, Citeureup, Kec. Cimahi Utara, Kota Cimahi, Jawa Barat 40525', -6.86408, 107.544, '10:00:00', '20:00:00', 1, 'https://www.instagram.com/will28barbershop/'),
(53, 'BarBerBos Express Cimahi', 0, 'Jl. Jend. H. Amir Machmud No.499, Karangmekar, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40523', -6.87629, 107.546, '09:00:00', '21:00:00', 2, 'https://www.instagram.com/barberbos.express/'),
(54, 'Bestcut Cimahi', 0, 'Jl. Warung Contong No.125, Setiamanah, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40525', -6.88304, 107.532, '10:00:00', '22:00:00', 3, 'https://www.instagram.com/bestcutbarbershop/'),
(55, 'Rapz Hair Studio', 0, 'Jl. Jend. H. Amir Machmud, Cigugur Tengah, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40522', -6.8834, 107.552, '10:00:00', '20:00:00', 2, 'https://www.instagram.com/rapzhairstudio/'),
(56, 'Benjie Haircut', 0, 'Jl. Pesantren No.166, Cibabat, Kec. Cimahi Utara, Kota Cimahi, Jawa Barat 40513', -6.87549, 107.56, '10:00:00', '21:00:00', 1, 'https://www.instagram.com/benjiehaircut/'),
(57, 'Enakin 2.0', 0, 'Jl. Aruman No.6, Cibabat, Kec. Cimahi Utara, Kota Cimahi, Jawa Barat 40513', -6.88254, 107.558, '10:00:00', '21:00:00', 2, ''),
(58, 'Cortex Barbershop', 0, 'Jl. Unjani No.228, Cibeber, Kec. Cimahi Sel., Kota Cimahi, Jawa Barat 40531', -6.88595, 107.524, '09:00:00', '21:00:00', 3, 'https://www.instagram.com/cortex_barbershop/'),
(59, 'Baihaqi Barbershop', 0, 'Jl. Bp. Ampi No.8, Baros, Kec. Cimahi Tengah, Kota Cimahi, Jawa Barat 40521', -6.89, 107.542, '08:00:00', '20:00:00', 1, ''),
(60, 'Gardit Barbershop', 0, 'Jl. Rh abdul halim kp. Tangkil rt 01 rw 07 no. 90 Rt 01 / rw 07 no .90, Cigugur Tengah, Kota Cimahi, Jawa Barat 40522', -6.88851, 107.551, '10:00:00', '21:00:00', 1, 'https://www.instagram.com/gardit_barbershop/'),
(61, 'Gentlemen\'s Cut - Barbershop', 0, 'Jl. Pd. Mas Raya No.26, Leuwigajah, Kec. Cimahi Sel., Kota Cimahi, Jawa Barat 40532', -6.89697, 107.535, '11:00:00', '19:00:00', 2, ''),
(62, 'Kingsman Barbershop', 0, 'Resto AKJ, Jl. Cikutra Barat No.9, Sukaluyu, Kec. Cibeunying Kaler, Kota Bandung, Jawa Barat 40123', -6.8925, 107.634, '10:00:00', '21:00:00', 2, ''),
(63, 'Ozone Barbershop', 0, 'Jl. Grand Hotel No.15, Lembang, Kec. Lembang, Kabupaten Bandung Barat, Jawa Barat 40391', -6.81733, 107.622, '09:00:00', '22:00:00', 3, 'https://www.instagram.com/ozonebarbershop/'),
(64, 'Tampan Haircut Lembang', 0, 'Jl. Grand Hotel No.35, Lembang, Kec. Lembang, Kabupaten Bandung Barat, Jawa Barat 40391', -6.81614, 107.619, '10:00:00', '21:00:00', 1, 'https://www.instagram.com/tampanhaircut.andir/'),
(65, 'X Jobin Barbershop Lembang', 0, 'Jl. Sukajaya 2 No.102, Lembang, Kec. Lembang, Kabupaten Bandung Barat, Jawa Barat 40391', -6.81631, 107.622, '08:00:00', '21:00:00', 3, 'https://www.instagram.com/xjobinbarbershop/'),
(66, 'Mank Uya Barbershop', 0, 'Jl. Grand Hotel No.43, Lembang, Kec. Lembang, Kabupaten Bandung Barat, Jawa Barat 40391', -6.81647, 107.617, '09:00:00', '22:00:00', 1, ''),
(67, 'Zona53 Barbershop Bandung', 0, 'Jl. Minatu No.53, Lembang, Kec. Lembang, Kabupaten Bandung Barat, Jawa Barat 40391', -6.81259, 107.617, '07:00:00', '22:00:00', 1, 'https://www.instagram.com/zona53barbershop/'),
(68, 'NAM cukur | Barbershop', 0, 'Jl. Moh. Adiwarta, Lembang, Kec. Lembang, Kabupaten Bandung Barat, Jawa Barat 40391', -6.8188, 107.623, '11:00:00', '22:00:00', 2, 'https://www.instagram.com/namcukur/'),
(69, 'Preen Barbershop', 0, 'Jl. Gatot Subroto No.177A, Cibangkong, Kec. Batununggal, Kota Bandung, Jawa Barat 40273', -6.92482, 107.63, '09:00:00', '21:00:00', 1, 'https://www.instagram.com/preen_barber/'),
(70, 'Kasep Barbershop', 0, 'Jl. Gatot Subroto No.386, Kb. Kangkung, Kec. Kiaracondong, Kota Bandung, Jawa Barat 40284', -6.93344, 107.646, '10:00:00', '20:00:00', 1, 'https://www.instagram.com/kasep_barbershop/'),
(71, 'Barbrothers Barbershop', 0, 'No.153 C, Jl. Gatot Subroto, Samoja, Kec. Batununggal, Kota Bandung, Jawa Barat 40273', -6.92457, 107.628, '10:00:00', '22:00:00', 2, ''),
(72, 'Cukur Hade Barbershop - TSM', 0, 'Jl. RH Hasan Saputra Raya No.12, Turangga, Kec. Lengkong, Kota Bandung, Jawa Barat 40264', -6.93619, 107.635, '10:00:00', '21:00:00', 3, ''),
(73, 'De Fred Barber & Shop', 0, 'Jl. Burangrang No.33C, Malabar, Kec. Lengkong, Kota Bandung, Jawa Barat 40262', -6.92654, 107.62, '10:00:00', '20:00:00', 3, 'https://www.instagram.com/defredbarber/'),
(74, 'Moxie Hair Studio 03 (Barbershop)', 0, 'Jl. Sukapura No.3, RT.02/RW.02, Sukapura, Kec. Dayeuhkolot, Kabupaten Bandung, Jawa Barat 40267', -6.97079, 107.634, '10:00:00', '22:00:00', 3, ''),
(75, 'Barbershop Sawargi', 0, 'Jl. Saad No.16, Kb. Pisang, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40112', -6.92006, 107.614, '08:00:00', '17:30:00', 2, ''),
(76, 'Kaka Barber Shop Antapani', 0, 'Jl. Kuningan Raya No.2, Antapani Tengah, Kec. Antapani, Kota Bandung, Jawa Barat 40192', -6.91421, 107.66, '09:00:00', '20:30:00', 3, 'https://www.instagram.com/kakabarbershop/'),
(77, 'Syndicut Barbershop', 0, 'Jl. Sukabirus No.40c, Citeureup, Kec. Dayeuhkolot, Kabupaten Bandung Barat, Jawa Barat 40258', -6.97821, 107.632, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/syndicutbarbershop/'),
(78, 'Golden Barbershop Podomoro', 0, 'Jl. Raya Bojongsoang No.183, Lengkong, Kec. Bojongsoang, Kabupaten Bandung, Jawa Barat 40287', -6.97576, 107.635, '08:00:00', '23:00:00', 3, ''),
(79, 'Gus Barber', 0, 'BUAH BATU, Jl. Buah Batu No.239, Turangga, Kec. Lengkong, Kota Bandung, Jawa Barat 40264', -6.94454, 107.631, '08:00:00', '20:00:00', 1, 'https://www.instagram.com/gusbarber96/'),
(80, 'Kanaka Barbershop Bojongsoang', 0, 'Jl. Raya Bojongsoang No.277 A, Bojongsoang, Kec. Bojongsoang, Kabupaten Bandung, Jawa Barat 40288', -6.97035, 107.637, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/kanaka.barbershop/'),
(81, 'Pangkas Rambut 88', 0, 'Jl. Gatot Subroto No.88, Cibangkong, Kec. Batununggal, Kota Bandung, Jawa Barat 40274', -6.92764, 107.637, '08:00:00', '18:00:00', 2, ''),
(82, 'Seven the Salon | Kerastase Salon Bandung', 1, 'Jl. Jawa No.3, Babakan Ciamis, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40117', -6.91461, 107.613, '08:30:00', '19:30:00', 3, 'https://www.instagram.com/7seventhesalon/'),
(83, 'Salon 808 Hair & Beauty Bandung', 1, 'Jl. Batununggal Indah Raya No.194, Batununggal, Kec. Bandung Kidul, Kota Bandung, Jawa Barat 40267', -6.9549, 107.631, '09:00:00', '18:00:00', 3, ''),
(84, 'Bobcat Beauty Bar', 1, 'Jl. Buah Batu No.28, Burangrang, Kec. Lengkong, Kota Bandung, Jawa Barat 40262', -6.93167, 107.617, '08:00:00', '19:00:00', 3, 'https://www.instagram.com/bobcatbeautybarber/'),
(85, 'Hen\'s Salon', 1, 'Komplek PLN 1 No.14, Jl. PLN Ciateul, Ciateul, Kec. Regol, Kota Bandung, Jawa Barat 40252', -6.93307, 107.611, '09:00:00', '19:00:00', 3, 'https://www.instagram.com/hens.salon/'),
(86, 'Anita Salon Sadakeling Bandung', 1, 'Jl. H. Nawawi No.14A, Burangrang, Kec. Lengkong, Kota Bandung, Jawa Barat 40262', -6.92845, 107.618, '08:00:00', '18:00:00', 3, 'https://www.instagram.com/anitasalonbandung/'),
(87, 'Princess Salon', 1, 'Jl. Terusan Pasirkoja No.168, Babakan Tarogong, Kec. Bojongloa Kaler, Kota Bandung, Jawa Barat 40232', -6.92598, 107.587, '10:00:00', '18:00:00', 3, 'https://www.instagram.com/princess_salon_setiabudimedan/'),
(88, 'Lexzi Salon', 1, 'Jl. Bengawan No.37, Cihapit, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40114', -6.91095, 107.63, '08:30:00', '19:00:00', 3, 'https://www.instagram.com/lexzi_salon/'),
(89, 'Anata Salon', 1, 'Jl. Pasir Kaliki No.179, Pamoyanan, Kec. Cicendo, Kota Bandung, Jawa Barat 40173', -6.90183, 107.597, '08:00:00', '20:30:00', 3, 'https://www.instagram.com/anatasalonbdg/'),
(90, 'Lenny Fora • Bridal Dan Beauty Salon', 1, 'Jl. DR. Djunjunan Dalam No.11, Pajajaran, Kec. Cicendo, Kota Bandung, Jawa Barat 40173', -6.8967, 107.587, '08:00:00', '18:00:00', 3, ''),
(91, 'Johanna Lin Salon', 1, 'Jl. Dr. Setiabudi No.162, Hegarmanah, Kec. Cidadap, Kota Bandung, Jawa Barat 40141', -6.87307, 107.595, '09:00:00', '19:00:00', 3, ''),
(92, 'Golden Barbershop', 0, 'No.57B2, Jl. Dipati Ukur Lt.1, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132', -6.89058, 107.617, '08:00:00', '23:00:00', 2, ''),
(93, 'Brocode Barbershop', 0, 'Jl. Pager Gunung No.13, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132', -6.89613, 107.615, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/barcodebarbershop/'),
(94, 'Glasgöw Barbershop', 0, 'Jl. Hasanudin No.28, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132', -6.89507, 107.617, '11:00:00', '21:00:00', 2, 'https://www.instagram.com/glasgow_barbershop/'),
(95, 'Enginefly barbershop', 0, 'Jl. H. Wasid No.29, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132', -6.89645, 107.617, '10:00:00', '22:00:00', 2, 'https://www.instagram.com/enginefly_barbershop/'),
(96, 'Harald Barbershop Dipati Ukur', 0, 'Jl. Dipati Ukur No.100, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132', -6.88758, 107.615, '10:00:00', '23:00:00', 3, 'https://www.instagram.com/haraldbarbershop/'),
(97, 'Enakin Corp', 0, 'Jl. Imam Bonjol No.34, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40312', -6.8908, 107.616, '10:00:00', '21:00:00', 1, 'https://www.instagram.com/enakincorp/'),
(98, 'Paparock Barbershop', 0, 'Jl. Dipati Ukur No.19, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat 40132', -6.89647, 107.616, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/paparock_barbershop_2/'),
(99, 'Boys Barbershop (Premium Barbershop)', 0, 'Jl. Peta No.120, Suka Asih, Kec. Bojongloa Kaler, Kota Bandung, Jawa Barat 40231', -6.93651, 107.595, '10:00:00', '21:00:00', 2, 'https://www.instagram.com/boysbarbershopbandung/'),
(100, 'Teras Cukur', 0, 'Jl. Raya Kopo Gg. Panyileukan No.446/196a 06, RW.05, Kopo, Kec. Bojongloa Kaler, Kota Bandung, Jawa Barat 40233', -6.94348, 107.589, '08:00:00', '20:00:00', 1, ''),
(101, 'Danny Barbershop 2', 0, 'Jl. Soekarno-Hatta No.338, RW.01, Kb. Lega, Kec. Bojongloa Kidul, Kota Bandung, Jawa Barat 40235', -6.94735, 107.595, '09:00:00', '21:00:00', 1, ''),
(102, 'Salon Gyna Kirei', 1, 'Jl. Sukabirus No.66, Citeureup, Kec. Dayeuhkolot, Kota Bandung, Jawa Barat 40257', -6.97712, 107.633, '08:00:00', '21:00:00', 1, ''),
(103, 'Amaya Beauty & Wellness Salon', 1, 'Jl. Cihapit No.27, Cihapit, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40114', -6.90789, 107.622, '08:00:00', '20:00:00', 2, ''),
(104, 'Karin\'s Salon', 1, 'Jl. Pasirluyu No.40, Pasirluyu, Kec. Regol, Kota Bandung, Jawa Barat 40254', -6.93882, 107.619, '09:30:00', '20:00:00', 1, 'https://www.instagram.com/karinssalon/'),
(105, 'Salon Gia', 1, 'Pesona Bali Residence, Bl. C1 No.2, Bojongsoang, Bandung Regency, West Java 40288', -6.9792, 1.076, '08:00:00', '20:00:00', 1, ''),
(106, 'Anata Salon Bojongsoang', 1, 'Jalan Komplek Permata Buah Batu R14 Klinik Bona Mitra Keluarga Lt 2 & 3, Kec. Bojongsoang, Kabupaten Bandung, Jawa Barat 40287', -6.9728, 107.637, '08:00:00', '20:00:00', 2, 'https://www.instagram.com/anatabjs.salon/'),
(107, 'R & D Dedi Salon', 1, 'Jl. Sadakeling No.3, Burangrang, Kec. Lengkong, Kota Bandung, Jawa Barat 40262', -6.92916, 107.617, '09:00:00', '20:00:00', 3, 'https://www.instagram.com/dedy_salon_sadakeling_3_/'),
(108, 'Barber Shop 808', 0, 'Jln. Terusan Ciwastra No.105, Mekarjaya, Kec. Rancasari, Kota Bandung, Jawa Barat 40292', -6.96236, 107.673, '09:00:00', '21:00:00', 2, ''),
(109, 'BarBerBos Naripan', 0, 'Jl. Naripan No.53, Kb. Pisang, Kec. Sumur Bandung, Kota Bandung, Jawa Barat 40112', -6.92022, 107.614, '09:00:00', '21:00:00', 1, ''),
(110, 'Trusted Barbershop', 0, 'Jl. Margasari Ciwastra. 175, Cijaura, Margasari, Kec. Buahbatu, Kota Bandung, Jawa Barat 40287', -6.9578, 107.657, '10:00:00', '21:00:00', 1, ''),
(111, 'Barber Shop Anang', 0, 'Jl. Ciwastra No.63, Cijaura, Kec. Buahbatu, Kota Bandung, Jawa Barat 40287', -6.95751, 107.657, '08:00:00', '21:00:00', 1, ''),
(112, 'Coolimist Barber Co. (2ndChapters)', 0, 'Jl.Saturnus Selatan IV.1 Near Yogya Griya - Margahayu Raya, Kota Bandung, Jawa Barat 40286', -6.95439, 107.663, '09:00:00', '20:00:00', 1, 'https://www.instagram.com/coolimist.barber_co/'),
(113, 'Bestcut Barber Margacinta', 0, 'Jl. Margacinta Jl. Ciwastra No.72F, Cijaura, Kec. Buahbatu, Kota Bandung, Jawa Barat 40287', -6.95504, 107.645, '10:00:00', '22:00:00', 2, 'https://www.instagram.com/bestcutbarbershop/'),
(114, 'BarBerBos Progo', 0, 'Jl. Progo No.30, Citarum, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40115', -6.90482, 107.62, '09:00:00', '21:00:00', 3, 'https://www.instagram.com/barberbos/'),
(115, 'Gus Barber Bengawan', 0, 'Jl. Bengawan No.79, Cihapit, Kec. Bandung Wetan, Kota Bandung, Jawa Barat 40121', -6.9063, 107.626, '08:00:00', '20:00:00', 2, 'https://www.instagram.com/gusbarber96/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sebaran`
--
ALTER TABLE `sebaran`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sebaran`
--
ALTER TABLE `sebaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
