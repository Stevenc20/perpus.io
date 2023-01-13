-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jan 2023 pada 13.07
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perpus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `r_kelas`
--

CREATE TABLE `r_kelas` (
  `id_kelas` int(11) NOT NULL,
  `tingkat_kelas` int(2) NOT NULL,
  `nm_kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `r_kelas`
--

INSERT INTO `r_kelas` (`id_kelas`, `tingkat_kelas`, `nm_kelas`) VALUES
(2, 11, 'XI MIPA-2'),
(3, 10, 'X Umum 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_buku`
--

CREATE TABLE `t_buku` (
  `id_buku` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `no_isbn` varchar(50) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_buku`
--

INSERT INTO `t_buku` (`id_buku`, `kode`, `judul`, `pengarang`, `penerbit`, `no_isbn`, `jumlah`, `tgl_entri`) VALUES
(2, 'A1', 'Judul kita belajar', 'andi sasongko', 'CItra surabaya', '212B-4234-DS1', 5, '2023-01-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_guru`
--

CREATE TABLE `t_guru` (
  `id_guru` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jk` int(2) NOT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_guru`
--

INSERT INTO `t_guru` (`id_guru`, `nip`, `nama`, `alamat`, `jk`, `hp`, `tgl_lahir`, `tgl_entri`) VALUES
(2, '66', 'Ajeng raharjo', 'jakarta', 1, '5453453', '2023-01-09', '2023-01-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_log`
--

CREATE TABLE `t_log` (
  `id_log` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `jam_masuk` time DEFAULT NULL,
  `jam_keluar` time DEFAULT NULL,
  `status` int(1) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_log`
--

INSERT INTO `t_log` (`id_log`, `username`, `jam_masuk`, `jam_keluar`, `status`, `tanggal`) VALUES
(159, 'gilang@gmail.com', '08:37:21', NULL, 2, '2023-01-10'),
(160, 'andi@gmail.com', '08:38:45', NULL, 2, '2023-01-10'),
(161, 'andi@gmail.com', '08:39:44', NULL, 1, '2023-01-10'),
(162, 'andi@gmail.com', '09:38:21', NULL, 1, '2023-01-10'),
(163, 'andi@gmail.com', '10:28:15', NULL, 1, '2023-01-10'),
(164, 'andi@gmail.com', '11:20:51', NULL, 1, '2023-01-10'),
(165, 'andi@gmail.com', '12:45:36', NULL, 1, '2023-01-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_setting_aplikasi`
--

CREATE TABLE `t_setting_aplikasi` (
  `id_setting` int(2) NOT NULL,
  `nm_aplikasi` varchar(50) NOT NULL,
  `nm_footer` varchar(100) NOT NULL,
  `foto_aplikasi` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_setting_aplikasi`
--

INSERT INTO `t_setting_aplikasi` (`id_setting`, `nm_aplikasi`, `nm_footer`, `foto_aplikasi`) VALUES
(3, 'SIPER1', 'Prayogi Academy', 'apple-logo-png-dallas-shootings-don-add-are-speech-zones-used-4.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_siswa`
--

CREATE TABLE `t_siswa` (
  `id_siswa` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jk` int(2) NOT NULL,
  `hp` varchar(30) DEFAULT NULL,
  `id_kelas` int(3) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_entri` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_siswa`
--

INSERT INTO `t_siswa` (`id_siswa`, `nis`, `nama`, `alamat`, `jk`, `hp`, `id_kelas`, `tgl_lahir`, `tgl_entri`) VALUES
(2, '123', 'ALI', 'surabya', 1, '085173418206', 3, '2023-01-09', '2023-01-10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_user`
--

CREATE TABLE `t_user` (
  `id_user` int(5) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `password` varchar(300) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` int(2) NOT NULL,
  `foto` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `t_user`
--

INSERT INTO `t_user` (`id_user`, `user_name`, `password`, `nama`, `level`, `foto`) VALUES
(1, 'andi@gmail.com', '$2y$10$m7hzm9cMIzGfY4RCS4j8jOaHoBtCKTi6idGTpkhn2K.gVhr0UXeB.', 'Administrator', 1, 'user.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `r_kelas`
--
ALTER TABLE `r_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `t_buku`
--
ALTER TABLE `t_buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indeks untuk tabel `t_guru`
--
ALTER TABLE `t_guru`
  ADD PRIMARY KEY (`id_guru`);

--
-- Indeks untuk tabel `t_log`
--
ALTER TABLE `t_log`
  ADD PRIMARY KEY (`id_log`);

--
-- Indeks untuk tabel `t_setting_aplikasi`
--
ALTER TABLE `t_setting_aplikasi`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indeks untuk tabel `t_siswa`
--
ALTER TABLE `t_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indeks untuk tabel `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `r_kelas`
--
ALTER TABLE `r_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_buku`
--
ALTER TABLE `t_buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_guru`
--
ALTER TABLE `t_guru`
  MODIFY `id_guru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_log`
--
ALTER TABLE `t_log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT untuk tabel `t_setting_aplikasi`
--
ALTER TABLE `t_setting_aplikasi`
  MODIFY `id_setting` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_siswa`
--
ALTER TABLE `t_siswa`
  MODIFY `id_siswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `t_user`
--
ALTER TABLE `t_user`
  MODIFY `id_user` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
