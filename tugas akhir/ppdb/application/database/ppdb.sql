-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Jun 2022 pada 14.56
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppdb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_berkas`
--

CREATE TABLE `data_berkas` (
  `id_data_berkas` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nilai_indo` varchar(3) NOT NULL,
  `nilai_ing` varchar(3) NOT NULL,
  `matematika` varchar(3) NOT NULL,
  `ipa` varchar(3) NOT NULL,
  `foto_ijasah_smp` varchar(255) NOT NULL,
  `foto_shun` varchar(255) NOT NULL,
  `berkas_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_berkas`
--

INSERT INTO `data_berkas` (`id_data_berkas`, `id_user`, `nilai_indo`, `nilai_ing`, `matematika`, `ipa`, `foto_ijasah_smp`, `foto_shun`, `berkas_created`) VALUES
(1, 3, '22', '22', '22', '22', '222222/foto_piala2.png', '222222/IMG_20200615_094924.jpg', '2022-06-07 20:32:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_diri_pribadi`
--

CREATE TABLE `data_diri_pribadi` (
  `id_data_diri_pribadi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `kelamin` char(1) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_diri_pribadi`
--

INSERT INTO `data_diri_pribadi` (`id_data_diri_pribadi`, `id_user`, `username`, `nama`, `tempat_lahir`, `tanggal_lahir`, `agama`, `kelamin`, `alamat`, `telp`) VALUES
(1, 3, '222222', '222222', '2', '2022-06-07', 'ISLAM', 'L', '22', '2222222222');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_diri_sekolah`
--

CREATE TABLE `data_diri_sekolah` (
  `id_data_diri_sekolah` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `asal_sekolah` varchar(40) NOT NULL,
  `nisn` varchar(14) NOT NULL,
  `tahun_lulus` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_diri_sekolah`
--

INSERT INTO `data_diri_sekolah` (`id_data_diri_sekolah`, `id_user`, `asal_sekolah`, `nisn`, `tahun_lulus`) VALUES
(1, 3, '22', '2222222222', 0000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_ortu`
--

CREATE TABLE `data_ortu` (
  `id_data_ortu` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_ortu` varchar(40) NOT NULL,
  `pekerjaan` varchar(25) NOT NULL,
  `alamat_ortu` text NOT NULL,
  `telp_ortu` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_ortu`
--

INSERT INTO `data_ortu` (`id_data_ortu`, `id_user`, `nama_ortu`, `pekerjaan`, `alamat_ortu`, `telp_ortu`) VALUES
(1, 3, '22', '2222', '222', '222222');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_qrcode`
--

CREATE TABLE `data_qrcode` (
  `id_data_qrcode` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `token` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_qrcode`
--

INSERT INTO `data_qrcode` (`id_data_qrcode`, `id_user`, `token`) VALUES
(1, 3, 'MFoymoPcaA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `env_agenda`
--

CREATE TABLE `env_agenda` (
  `env_agenda_id` int(11) NOT NULL,
  `agenda` text NOT NULL,
  `tapel` varchar(10) NOT NULL,
  `foto_daftar_ulang` varchar(255) NOT NULL,
  `foto_bg` varchar(255) NOT NULL,
  `aktif` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `env_agenda`
--

INSERT INTO `env_agenda` (`env_agenda_id`, `agenda`, `tapel`, `foto_daftar_ulang`, `foto_bg`, `aktif`) VALUES
(1, 'Gelombang 1 : \r\n\r\nGelombang 2 : \r\n', '2022/2023', '92460509_3447371505278005_6142364697174736896_n_(1).png', 'foto_piala1.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `env_kontak_admin`
--

CREATE TABLE `env_kontak_admin` (
  `env_kontak_id` int(11) NOT NULL,
  `nama_kontak` varchar(40) NOT NULL,
  `nomor_kontak` varchar(16) NOT NULL,
  `email_admin` varchar(50) NOT NULL,
  `alamat_admin` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `env_kontak_admin`
--

INSERT INTO `env_kontak_admin` (`env_kontak_id`, `nama_kontak`, `nomor_kontak`, `email_admin`, `alamat_admin`) VALUES
(1, 'FARID', '085640967027', '111202080014@mhs.dinus.ac.id', 'KEDIRI');

-- --------------------------------------------------------

--
-- Struktur dari tabel `env_pembayaran`
--

CREATE TABLE `env_pembayaran` (
  `env_pembayaran_id` int(11) NOT NULL,
  `nama_bank` varchar(10) NOT NULL,
  `jml_uang` varchar(8) NOT NULL,
  `rekening` varchar(40) NOT NULL,
  `atas_nama` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `env_pembayaran`
--

INSERT INTO `env_pembayaran` (`env_pembayaran_id`, `nama_bank`, `jml_uang`, `rekening`, `atas_nama`) VALUES
(1, 'BRI', '50.000', '16108010022002', 'FARID');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(100) NOT NULL,
  `image` varchar(128) NOT NULL,
  `level` int(1) NOT NULL COMMENT '1: admin, 2: user',
  `is_active` int(1) NOT NULL COMMENT '0: nonaktif, 1: aktif',
  `date_created` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`user_id`, `nama`, `username`, `password`, `image`, `level`, `is_active`, `date_created`) VALUES
(1, 'admin', 'admin', 'admin', 'admin/shipit.png', 1, 1, '2020-04-02 18:33:34'),
(2, '111111', '111111', '$2y$10$J5NsI22ITIXRxbVvApsV2OazFaN5BBdF1YxDMBEM7sbduBxh.TJYW', '111111/logo_smp_airlangga.png', 1, 1, '2022-06-07 20:11:56'),
(3, '222222', '222222', '$2y$10$H6zVReMrP5gJYi3XT3e2Me7zhM9Og15mi9XBx9w2uTONWKF6j3z.G', '222222/foto_piala21.png', 2, 1, '2022-06-07 20:23:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_daftar`
--

CREATE TABLE `user_daftar` (
  `id_user_daftar` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `telp` varchar(16) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `foto_bukti_transfer` varchar(255) NOT NULL,
  `status` int(1) NOT NULL COMMENT '1: dikonfirmasi, 2: ditolak',
  `daftar_created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_daftar`
--

INSERT INTO `user_daftar` (`id_user_daftar`, `id_user`, `telp`, `email`, `foto_bukti_transfer`, `status`, `daftar_created`) VALUES
(1, 2, '085640967027', 'taufiq.saja@gmail.com', '111111/logo_smp_airlangga.jpg', 1, '2022-06-07 20:12:39'),
(2, 3, '2222222222', '2@dad.aa', '222222/mobil_edit.png', 1, '2022-06-07 20:28:14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_berkas`
--
ALTER TABLE `data_berkas`
  ADD PRIMARY KEY (`id_data_berkas`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `data_diri_pribadi`
--
ALTER TABLE `data_diri_pribadi`
  ADD PRIMARY KEY (`id_data_diri_pribadi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `data_diri_sekolah`
--
ALTER TABLE `data_diri_sekolah`
  ADD PRIMARY KEY (`id_data_diri_sekolah`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `data_ortu`
--
ALTER TABLE `data_ortu`
  ADD PRIMARY KEY (`id_data_ortu`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `data_qrcode`
--
ALTER TABLE `data_qrcode`
  ADD PRIMARY KEY (`id_data_qrcode`),
  ADD UNIQUE KEY `id_user_2` (`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `env_agenda`
--
ALTER TABLE `env_agenda`
  ADD PRIMARY KEY (`env_agenda_id`);

--
-- Indeks untuk tabel `env_kontak_admin`
--
ALTER TABLE `env_kontak_admin`
  ADD PRIMARY KEY (`env_kontak_id`);

--
-- Indeks untuk tabel `env_pembayaran`
--
ALTER TABLE `env_pembayaran`
  ADD PRIMARY KEY (`env_pembayaran_id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indeks untuk tabel `user_daftar`
--
ALTER TABLE `user_daftar`
  ADD PRIMARY KEY (`id_user_daftar`),
  ADD KEY `id_user` (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_berkas`
--
ALTER TABLE `data_berkas`
  MODIFY `id_data_berkas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_diri_pribadi`
--
ALTER TABLE `data_diri_pribadi`
  MODIFY `id_data_diri_pribadi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_diri_sekolah`
--
ALTER TABLE `data_diri_sekolah`
  MODIFY `id_data_diri_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_ortu`
--
ALTER TABLE `data_ortu`
  MODIFY `id_data_ortu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `data_qrcode`
--
ALTER TABLE `data_qrcode`
  MODIFY `id_data_qrcode` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `env_agenda`
--
ALTER TABLE `env_agenda`
  MODIFY `env_agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `env_kontak_admin`
--
ALTER TABLE `env_kontak_admin`
  MODIFY `env_kontak_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `env_pembayaran`
--
ALTER TABLE `env_pembayaran`
  MODIFY `env_pembayaran_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_daftar`
--
ALTER TABLE `user_daftar`
  MODIFY `id_user_daftar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `data_berkas`
--
ALTER TABLE `data_berkas`
  ADD CONSTRAINT `data_berkas_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `data_diri_pribadi`
--
ALTER TABLE `data_diri_pribadi`
  ADD CONSTRAINT `data_diri_pribadi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `data_diri_sekolah`
--
ALTER TABLE `data_diri_sekolah`
  ADD CONSTRAINT `data_diri_sekolah_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `data_ortu`
--
ALTER TABLE `data_ortu`
  ADD CONSTRAINT `data_ortu_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `data_qrcode`
--
ALTER TABLE `data_qrcode`
  ADD CONSTRAINT `data_qrcode_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Ketidakleluasaan untuk tabel `user_daftar`
--
ALTER TABLE `user_daftar`
  ADD CONSTRAINT `user_daftar_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
