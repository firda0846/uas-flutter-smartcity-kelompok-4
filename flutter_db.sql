-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2024 pada 16.41
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flutter_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `rating` decimal(3,2) DEFAULT 0.00,
  `halaman` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `penulis`, `rating`, `halaman`, `stok`) VALUES
(1, 'Harry Potter and the Philosopher\'s Stone', 'J.K. Rowling', 4.76, 223, 10),
(2, 'To Kill a Mockingbird', 'Harper Lee', 4.28, 281, 5),
(3, '1984', 'George Orwell', 4.17, 328, 8),
(4, 'Pride and Prejudice', 'Jane Austen', 4.25, 279, 7),
(5, 'The Great Gatsby', 'F. Scott Fitzgerald', 3.91, 180, 12),
(6, 'The Catcher in the Rye', 'J.D. Salinger', 3.80, 214, 4),
(7, 'The Hobbit', 'J.R.R. Tolkien', 4.27, 310, 15),
(8, 'Fahrenheit 451', 'Ray Bradbury', 3.99, 194, 6),
(9, 'Moby Dick', 'Herman Melville', 3.51, 635, 3),
(10, 'War and Peace', 'Leo Tolstoy', 4.11, 1225, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `edukasi`
--

CREATE TABLE `edukasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `rating` float DEFAULT NULL,
  `halaman` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `edukasi`
--

INSERT INTO `edukasi` (`id`, `judul`, `penulis`, `rating`, `halaman`, `stok`) VALUES
(1, 'Belajar Pemrograman Python', 'John Doe', 4.5, 300, 50),
(2, 'Matematika Dasar', 'Jane Smith', 4, 200, 30),
(3, 'Sejarah Dunia Modern', 'Michael Johnson', 4.2, 400, 40),
(4, 'Kimia Organik', 'Emily Brown', 4.7, 350, 25),
(5, 'Fisika Modern', 'David Wilson', 4.6, 320, 35);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'john.doe@example.com', 'password123'),
(3, 'jane.smith@example.com', 'securePassword456'),
(4, 'user1@example.com', '$2a$10$scHOC.aaUYEieVFyK9bnT./3Y6TclhEChm9IiLgqQzIp8r0wWP0B.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `edukasi`
--
ALTER TABLE `edukasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `edukasi`
--
ALTER TABLE `edukasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
