-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 27 Okt 2022 pada 09.32
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hendy_sports`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `goods`
--

CREATE TABLE `goods` (
  `id_barang` int(5) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jenis_barang` varchar(30) NOT NULL,
  `stok_barang` int(5) NOT NULL,
  `status_barang` enum('ready','tidak') DEFAULT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `goods`
--

INSERT INTO `goods` (`id_barang`, `nama_barang`, `jenis_barang`, `stok_barang`, `status_barang`, `gambar`, `tanggal`) VALUES
(101, 'bola basket', 'atribut bola basket', 100, 'ready', 'bola_basket.jpeg', '2022-10-27 15:15:21'),
(102, 'tali skiping', 'atribut lompat tali', 20, 'ready', 'skiping.jpeg', '2022-10-27 15:17:57'),
(103, 'raket tenis', 'atribut tenis lapangan', 50, 'ready', 'tenis.jpeg', '2022-10-27 15:21:14'),
(104, 'sepatu bola', 'atribut sepak bola', 100, 'ready', 'sepatu_bola.jpeg', '2022-10-27 15:22:09'),
(105, 'stik golf', 'atribut golf', 90, 'ready', 'stik_golf.jpeg', '2022-10-27 15:23:57');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
