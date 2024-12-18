-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Des 2024 pada 08.16
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `caraousel`
--

CREATE TABLE `caraousel` (
  `id_caraousel` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(6, 'Tentang'),
(7, 'Residensi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `judul_website` varchar(200) NOT NULL,
  `profil_website` text NOT NULL,
  `instagram` varchar(100) NOT NULL,
  `twiter` varchar(100) NOT NULL,
  `youtube` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `no_wa` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `judul_website`, `profil_website`, `instagram`, `twiter`, `youtube`, `email`, `alamat`, `no_wa`) VALUES
(1, 'Ayasha Land', 'Nama saya Azzahra Gesya Ananda Nurayabyar, Saya berumur 17 tahun dan saya adalah siswi SMK N 2 Karanganyar. Saya kelas 11 jurusan Rekayasa Perangkat Lunak. ', 'https://instagram.com/zahsyaa._', 'https://x.com/ayyashhhaa', 'https://youtube.com/ayyashha', 'geazahra13@gmail.com', 'Gaum RT 1 RW 2, Gaum, Tasikmadu, Karanganyar', '6281228975477');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konten`
--

CREATE TABLE `konten` (
  `id_konten` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `id_kategori` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `username` varchar(50) NOT NULL,
  `kasur` int(20) NOT NULL,
  `toilet` int(20) NOT NULL,
  `luas` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `konten`
--

INSERT INTO `konten` (`id_konten`, `judul`, `keterangan`, `foto`, `slug`, `id_kategori`, `tanggal`, `username`, `kasur`, `toilet`, `luas`) VALUES
(20, 'Tipe Himawari', '1 Lantai, Dekat dengan Rumah Sakit dan Komplek Sekolah, Dekat dengan Pusat Perbelanjaan', '20241216223211.jpg', 'Tipe Himawari', '7', '2024-12-16', 'Zahra', 3, 1, '1212'),
(21, 'Tipe Tsubaki', 'Memiliki taman yang luas dan asri, Dekat pintu tol, Ke Pakuwon Mall hanya 10 menit', '20241217014524.jpg', 'Tipe Tsubaki', '7', '2024-12-17', 'Zahra', 5, 2, '2037'),
(22, 'Tipe Sakura', '1 Lantai, 1 Carport, Dekat Jalan Raya, Dekat Sekolah, Dekat Dengan Rumah Sakit\r\n', '20241217015059.jpg', 'Tipe Sakura', '7', '2024-12-17', 'Zahra', 3, 1, '1098'),
(23, 'Type Yuri', '3 Lantai, Lantai paling atas Rooftop, Memiliki Mini Garden, Dekat Jalan Raya, Model Minimalis Modern', '20241217021026.jpg', 'Type Yuri', '7', '2024-12-17', 'Zahra', 4, 3, '2091'),
(24, 'Type Kikky', '2 Lantai, Memiliki Kolam Renang, Dekat dengan Bandara dan Jalan Tol, Dibangun di lingkungan yang asri', '20241217022508.jpg', 'Type Kikky', '7', '2024-12-17', 'Zahra', 5, 3, '2190'),
(25, 'Sakura Hill', 'Rumah dengan arsitektur modern, memberikan kenyamanan yang luar biasa', '20241217044733.jpg', 'Sakura Hill', '7', '2024-12-17', 'Zahra', 4, 3, '500');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(70) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `password` varchar(200) NOT NULL,
  `level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `nama`, `password`, `level`) VALUES
(11, 'Zahra', 'Azzahra Gesya Ananda Nurayabyar', '81dc9bdb52d04dc20036dbd8313ed055', 'Admin'),
(13, 'Ayara', 'Ayara Nanda', 'b59c67bf196a4758191e42f76670ceba', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `caraousel`
--
ALTER TABLE `caraousel`
  ADD PRIMARY KEY (`id_caraousel`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indeks untuk tabel `konten`
--
ALTER TABLE `konten`
  ADD PRIMARY KEY (`id_konten`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `caraousel`
--
ALTER TABLE `caraousel`
  MODIFY `id_caraousel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `konten`
--
ALTER TABLE `konten`
  MODIFY `id_konten` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
