-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Waktu pembuatan: 24 Bulan Mei 2023 pada 07.02
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_pekerja`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `id` int(11) NOT NULL,
  `foto` varchar(200) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `nip` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_karyawan`
--

INSERT INTO `data_karyawan` (`id`, `foto`, `nama`, `nip`, `email`, `alamat`) VALUES
(1, '646aedc95f1cc.gif', 'ahmad sahroni', '12343332107', 'ahmadsharon@gmail.com', 'jl. gajah mada, medan utara'),
(2, '646aee4494a64.gif', 'ahd rani', '21216633223', 'ahdrani88@gmail.com', 'jl. singosari, asahan mati'),
(3, '646aee6e09b8f.gif', 'yurino satyo', '21216633224', 'yurino66@gmail.com', 'jl. km7 , tanjung balai'),
(4, '646aeea715508.gif', 'ridho sembiring', '12343332108', 'ridhoajjah@gmail.com', 'jl. pematang pasir, tanjung balai'),
(5, '646aeefd4de4e.gif', 'jeff bezos', '12343332110', 'jeffbezosss@gmail.com', 'jl. medan merdeka , medan'),
(6, '646aef3630d8d.gif', 'mark zuckerberg', '12343332111', 'marksama@gmail.com', 'jl. dolok 3, siantar'),
(7, '646aef63f39af.gif', 'elon musk', '12343332112', 'elonmusk1@gmail.com', 'jl. sisingamangaraja , medan timur'),
(8, '646aefb23372e.gif', 'ari purnama panjaitan', '12343332113', 'arieman69@gmail.com', 'jl. melati , asahan'),
(10, '646af8053b940.gif', 'susanto', '12343332116', 'susanto@gmail.com', 'jl. lintas sumatra, medan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `email`) VALUES
(1, 'ari purnama', 'admin', '$2y$10$vbkH4QHXMF7WDg7etlGiuOkJymyf7aZ0qxGA6CHqrkI9i7vpXOQUq', 'arieman69@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_karyawan`
--
ALTER TABLE `data_karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
