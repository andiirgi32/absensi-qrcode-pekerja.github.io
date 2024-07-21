-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jul 2024 pada 00.33
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensiqrcodepekerjasmknlabuang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen`
--

CREATE TABLE `absen` (
  `id` int(11) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `tanggal` date NOT NULL,
  `waktudatang` time NOT NULL,
  `keterangandatang` varchar(255) NOT NULL,
  `waktupulang` time NOT NULL,
  `keteranganpulang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `absen`
--

INSERT INTO `absen` (`id`, `nip`, `tanggal`, `waktudatang`, `keterangandatang`, `waktupulang`, `keteranganpulang`) VALUES
(112, '220170', '2024-02-28', '13:05:21', '', '00:00:00', ''),
(113, '210187', '2024-02-29', '06:56:05', 'Tepat Waktu', '00:00:00', ''),
(114, '210389', '2024-02-27', '13:10:04', '', '00:00:00', ''),
(115, '520901', '2024-02-29', '13:55:40', '', '00:00:00', ''),
(117, '210188', '2024-02-29', '22:58:38', 'Terlambat', '00:00:00', ''),
(118, '210200', '2024-02-29', '02:22:12', 'Absen Cepat', '00:00:00', ''),
(120, '520901', '2024-03-01', '02:26:57', 'Absen Cepat', '00:00:00', ''),
(123, '210187', '2024-03-01', '07:26:40', 'Tepat Waktu', '00:00:00', ''),
(124, '210188', '2024-03-01', '07:27:19', 'Tepat Waktu', '00:00:00', ''),
(125, '210200', '2024-03-01', '07:27:55', 'Tepat Waktu', '00:00:00', ''),
(129, '210193', '2024-03-01', '13:25:37', 'Terlambat', '00:00:00', ''),
(130, '123456', '2024-03-01', '13:31:01', 'Terlambat', '00:00:00', ''),
(131, '210389', '2024-03-01', '22:38:31', 'Terlambat', '00:00:00', ''),
(132, '210187', '2024-03-02', '06:30:32', 'Tepat Waktu', '00:00:00', ''),
(133, '210205', '2024-03-02', '06:30:46', 'Tepat Waktu', '00:00:00', ''),
(134, '210389', '2024-03-02', '06:30:56', 'Tepat Waktu', '00:00:00', ''),
(135, '210193', '2024-03-02', '08:08:29', 'Terlambat', '00:00:00', ''),
(136, '210200', '2024-03-02', '08:08:40', 'Terlambat', '00:00:00', ''),
(137, '210188', '2024-03-02', '08:08:56', 'Terlambat', '00:00:00', ''),
(138, '210389', '2024-06-28', '10:28:32', 'Terlambat', '00:00:00', ''),
(139, '19661231 201412 2 007', '2024-07-20', '10:28:44', 'Terlambat', '16:30:00', ''),
(141, '19790719 201409 2 002', '2024-07-20', '11:31:13', 'Terlambat', '16:00:00', ''),
(142, '19790719 201409 2 002', '2024-07-21', '08:26:43', 'Terlambat', '00:00:00', ''),
(143, '19661231 201412 2 007', '2024-07-21', '08:28:19', 'Terlambat', '00:00:00', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `akses`
--

CREATE TABLE `akses` (
  `aksesid` int(11) NOT NULL,
  `kodeakses` varchar(255) NOT NULL,
  `qrcode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `akses`
--

INSERT INTO `akses` (`aksesid`, `kodeakses`, `qrcode`) VALUES
(5, '12345678', '1588762993_qrcode (6).png'),
(7, 'qazwsxed', '295966891_qrcode.png'),
(8, 'plokmijn', '97138218_qrcode (2).png'),
(9, 'kljyknshk', '989427883_qrcode.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `golongan`
--

CREATE TABLE `golongan` (
  `golonganid` int(11) NOT NULL,
  `golongan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `golongan`
--

INSERT INTO `golongan` (`golonganid`, `golongan`) VALUES
(1, 'III.b'),
(2, 'IV.b'),
(3, 'IX'),
(5, 'Tidak Memiliki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `jabatanid` int(11) NOT NULL,
  `jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`jabatanid`, `jabatan`) VALUES
(12, 'STAF'),
(13, 'KEPALA TATA USAHA'),
(14, 'KEPALA SEKOLAH'),
(15, 'GURU'),
(17, 'PTT');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pangkat`
--

CREATE TABLE `pangkat` (
  `pangkatid` int(11) NOT NULL,
  `pangkat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pangkat`
--

INSERT INTO `pangkat` (`pangkatid`, `pangkat`) VALUES
(7, 'Penata Muda Tk.I'),
(8, 'Pembina Tk.I'),
(10, 'Ahli Pertama'),
(12, 'Penata Muda'),
(14, 'Tidak Memiliki');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pekerja`
--

CREATE TABLE `pekerja` (
  `idpekerja` int(11) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `fotopekerja` varchar(255) NOT NULL,
  `jabatanid` int(11) NOT NULL,
  `pangkatid` int(11) NOT NULL,
  `golonganid` int(11) NOT NULL,
  `jk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pekerja`
--

INSERT INTO `pekerja` (`idpekerja`, `nip`, `nama`, `fotopekerja`, `jabatanid`, `pangkatid`, `golonganid`, `jk`) VALUES
(25, '19790719 201409 2 002', 'Andi Jumriani, S.E', '1552915212_Gambar WhatsApp 2024-07-22 pukul 06.06.17_96476059.jpg', 12, 7, 1, 'Perempuan'),
(28, '19720702 200501 1 010', 'Darwis, S.S., M. Pd.', '2050040851_4636.jpg', 14, 8, 2, 'Laki-Laki'),
(29, '19661231 201412 2 007', 'Harmawati. H, S.Sos', '1058227182__7c6dac42-2d2c-4352-b5a8-5d7999df8290-removebg-preview.png', 13, 7, 1, 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `namalengkap` varchar(255) NOT NULL,
  `nip` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `fotouser` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `hakakses` varchar(255) NOT NULL,
  `jabatanid` int(11) NOT NULL,
  `pangkatid` int(11) NOT NULL,
  `golonganid` int(11) NOT NULL,
  `idpekerja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `email`, `namalengkap`, `nip`, `alamat`, `fotouser`, `role`, `hakakses`, `jabatanid`, `pangkatid`, `golonganid`, `idpekerja`) VALUES
(24, 'luke', '12345678', 'user1@gmail.com', 'Luke', '10702 76493892 2 231', 'Puppole', '770998616_1666610097370.jpg', 'Admin', 'Diizinkan', 17, 14, 5, 29),
(33, 'wahab', '12345678', 'wahab@gmail.com', 'Abdul Wahab S.T', '', 'Desa Suruang', '1406930735_Gambar WhatsApp 2024-02-28 pukul 14.48.52_2ae08e11.jpg', 'Guru', 'Diizinkan', 15, 10, 3, 0),
(37, 'darwis', '12345678', 'darwis@gmail.com', 'Darwis, S.S., M. Pd.', '19720702 200501 1 010', 'Entahlah', '598296547_4636.jpg', 'Kepala Sekolah', 'Diizinkan', 14, 8, 2, 28),
(38, 'harma', '12345678', 'harma@gmail.com', 'Harmawati. H, S.Sos', '19661231 201412 2 007', 'Entah', '681462021__7c6dac42-2d2c-4352-b5a8-5d7999df8290.jpeg', 'Kepala Tata Usaha', 'Diizinkan', 13, 7, 1, 29),
(39, 'andijum', '12345678', 'andijum@gmail.com', 'Andi Jumriani, S.E', '19790719 201409 2 002', 'Dusun Puppole', '1303871228_Gambar WhatsApp 2024-07-22 pukul 06.06.17_96476059.jpg', 'STAF', 'Diizinkan', 12, 7, 1, 25);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen`
--
ALTER TABLE `absen`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `akses`
--
ALTER TABLE `akses`
  ADD PRIMARY KEY (`aksesid`);

--
-- Indeks untuk tabel `golongan`
--
ALTER TABLE `golongan`
  ADD PRIMARY KEY (`golonganid`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`jabatanid`);

--
-- Indeks untuk tabel `pangkat`
--
ALTER TABLE `pangkat`
  ADD PRIMARY KEY (`pangkatid`);

--
-- Indeks untuk tabel `pekerja`
--
ALTER TABLE `pekerja`
  ADD PRIMARY KEY (`idpekerja`),
  ADD KEY `jurusanid` (`pangkatid`),
  ADD KEY `kelasid` (`jabatanid`),
  ADD KEY `golonganid` (`golonganid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD KEY `idpekerja` (`idpekerja`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen`
--
ALTER TABLE `absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;

--
-- AUTO_INCREMENT untuk tabel `akses`
--
ALTER TABLE `akses`
  MODIFY `aksesid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `golongan`
--
ALTER TABLE `golongan`
  MODIFY `golonganid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `jabatanid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `pangkat`
--
ALTER TABLE `pangkat`
  MODIFY `pangkatid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `pekerja`
--
ALTER TABLE `pekerja`
  MODIFY `idpekerja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pekerja`
--
ALTER TABLE `pekerja`
  ADD CONSTRAINT `pekerja_ibfk_1` FOREIGN KEY (`jabatanid`) REFERENCES `jabatan` (`jabatanid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pekerja_ibfk_2` FOREIGN KEY (`golonganid`) REFERENCES `golongan` (`golonganid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pekerja_ibfk_3` FOREIGN KEY (`pangkatid`) REFERENCES `pangkat` (`pangkatid`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
