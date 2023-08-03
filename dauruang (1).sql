-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Agu 2023 pada 10.06
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dauruang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `jenis_sampah` varchar(255) NOT NULL,
  `hargaPerKg` int(11) NOT NULL,
  `berat_sampah` float NOT NULL,
  `points` int(11) NOT NULL,
  `lokasi_pengepul` varchar(255) NOT NULL,
  `lokasi_user` varchar(255) NOT NULL,
  `catatan` varchar(255) DEFAULT NULL,
  `status_pemesanan` varchar(255) NOT NULL DEFAULT 'Pengecekan',
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`id`, `username`, `jenis_sampah`, `hargaPerKg`, `berat_sampah`, `points`, `lokasi_pengepul`, `lokasi_user`, `catatan`, `status_pemesanan`, `createdAt`, `updatedAt`) VALUES
(1, 'Jennie', 'Kaleng', 13000, 6, 5, 'Jakarta Barat', 'Jakarta Selatan', NULL, 'Pengecekan', '2023-06-13 15:36:53', '2023-06-13 17:46:20'),
(2, 'Jennie', 'Minyak jelantah', 9500, 2, 10, 'Jakarta Barat', 'Jakarta Selatan', NULL, 'Pengecekan', '2023-06-13 16:52:07', '2023-06-13 16:54:03'),
(3, 'Jennie', 'Kaleng', 13000, 6, 5, 'Jakarta Barat', 'Jakarta Selatan', NULL, 'Pengecekan', '2023-06-13 17:42:23', '2023-06-14 16:58:48'),
(4, 'Rose', 'Kaleng', 13000, 8, 5, 'Jakarta Barat', 'Jakarta Selatan', NULL, 'Pengecekan', '2023-06-13 17:48:21', '2023-06-13 17:48:21'),
(5, 'rahma beauty', 'Kaleng', 13000, 8, 5, 'Jakarta Barat', 'Jakarta Selatan', NULL, 'Pengecekan', '2023-06-14 16:07:33', '2023-06-14 16:07:33'),
(6, 'raissa', 'Paper', 5000, 8, 2, 'Jakarta Barat', 'Jakarta Selatan', NULL, 'Pengecekan', '2023-06-14 16:34:07', '2023-06-14 16:34:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data untuk tabel `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230613074501-create-orders-table.js');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
