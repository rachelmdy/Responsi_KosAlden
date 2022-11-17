-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Nov 2022 pada 17.19
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `belajar_login`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `diary`
--

CREATE TABLE `diary` (
  `no` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `diary`
--

INSERT INTO `diary` (`no`, `tanggal`, `judul`, `isi`) VALUES
(1, '2022-11-17', 'Tugas MPI', 'Ada tugas individu leveling resource'),
(2, '2022-11-03', 'Tugas JST', 'Cari modifikasi COnvolutional Neural Network'),
(3, '2022-11-04', 'Tugas Pengenalan Pola', 'Buat GUI dari proyek MPI biar bisa dapet A'),
(8, '2022-11-25', 'Tugas Text Mining', 'Proyek dengan studi kasus menghasilkan sebuah penemuan yang berasosiasi dengan text'),
(9, '2022-11-18', 'Tugas UKPL', 'Proyek testing'),
(10, '2022-11-25', 'Tugas BEM U', 'Follow up database'),
(11, '2022-12-08', 'Tugas Jurnal', 'Pak Yogiek'),
(12, '2022-11-30', 'Praktikum', 'Yuk bisaa ga error'),
(13, '2022-11-25', 'Mobile', 'Buat aplikasi dan tugas IONIC');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3'),
('susi', 'susi'),
('tes', 'b93939873fd4923043b9dec975811f66');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `diary`
--
ALTER TABLE `diary`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `diary`
--
ALTER TABLE `diary`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
