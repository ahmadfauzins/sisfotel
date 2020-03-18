-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Mar 2020 pada 03.40
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2020_sisfotel`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(100) NOT NULL,
  `img` varchar(50) NOT NULL DEFAULT 'default.png',
  `role` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `auth`
--

INSERT INTO `auth` (`id`, `email`, `name`, `password`, `img`, `role`) VALUES
(18, 'kadinkominfotik@brebeskab.go.id', 'Kepala Dinas', '441c9d45e54ac3321c25f0e346cef5396ae6088f', 'default.png', 1),
(19, 'adminkominfotik@brebeskab.go.id', 'Admin', 'af3dbfe86368370bdf2ec7456944df627c8865f5', 'download7.png', 2),
(20, 'loketkominfotik@brebeskab.go.id', 'Pendaftaran', 'ef5d5e12b7c277b6beb10df250c150cc1145c43c', 'download1.png', 3),
(22, 'tekniskominfotik@brebeskab.go.id', 'Tim Teknis', '1d28cc17f60d3f92e02a83eeef330e4165859d04', 'download2.png', 4),
(24, 'kasikominfotik@brebeskab.go.id', 'Kasi Informatika', 'ef5d5e12b7c277b6beb10df250c150cc1145c43c', 'download1.png', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_berkas`
--

CREATE TABLE `tb_berkas` (
  `id` int(10) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `srt_perm_menara` varchar(100) NOT NULL,
  `ktp_pemohon` varchar(100) NOT NULL,
  `srt_kuasa` varchar(100) NOT NULL,
  `srt_perny_sosial` varchar(100) NOT NULL,
  `srt_perj_lahan` varchar(100) NOT NULL,
  `srt_tdk_sengketa` varchar(100) NOT NULL,
  `srt_izi_usaha` varchar(100) NOT NULL,
  `srt_rekom_kades` varchar(100) NOT NULL,
  `srt_rekom_camat` varchar(100) NOT NULL,
  `srt_jmn_tower` varchar(100) NOT NULL,
  `srt_kesepakatan` varchar(100) NOT NULL,
  `srt_setuju_keluarga` varchar(100) NOT NULL,
  `srt_perny_aksesjalan` varchar(100) NOT NULL,
  `srt_perny_pembangunan` varchar(100) NOT NULL,
  `srt_pemiliktanah` varchar(100) NOT NULL,
  `srt_perny_sewa` varchar(100) NOT NULL,
  `kk_pemilik` varchar(100) NOT NULL,
  `fc_sert_tanah` varchar(100) NOT NULL,
  `pajak_pbb` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_berkas`
--

INSERT INTO `tb_berkas` (`id`, `kode`, `srt_perm_menara`, `ktp_pemohon`, `srt_kuasa`, `srt_perny_sosial`, `srt_perj_lahan`, `srt_tdk_sengketa`, `srt_izi_usaha`, `srt_rekom_kades`, `srt_rekom_camat`, `srt_jmn_tower`, `srt_kesepakatan`, `srt_setuju_keluarga`, `srt_perny_aksesjalan`, `srt_perny_pembangunan`, `srt_pemiliktanah`, `srt_perny_sewa`, `kk_pemilik`, `fc_sert_tanah`, `pajak_pbb`) VALUES
(1, '2', '/api_sisfotel/foto/srt_perm_menara1.jpeg', '/api_sisfotel/foto/ktp_pemohon1.jpeg', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_document`
--

CREATE TABLE `tb_document` (
  `id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_document`
--

INSERT INTO `tb_document` (`id`, `url`, `name`) VALUES
(1, 'http://192.168.38.20/api_sisfotel/dokumen/1.pdf', 'menara'),
(2, 'http://192.168.38.20/api_sisfotel/dokumen/2.pdf', 'menara'),
(3, 'http://192.168.38.20/api_sisfotel/dokumen/3.pdf', 'menara'),
(4, 'http://192.168.38.20/api_sisfotel/dokumen/4.pdf', 'menara'),
(5, 'http://192.168.38.20/api_sisfotel/dokumen/5.pdf', 'menara'),
(6, 'http://192.168.38.20/api_sisfotel/dokumen/6.pdf', 'ok'),
(7, 'http://192.168.38.20/api_sisfotel/dokumen/7.pdf', 'data'),
(8, 'http://192.168.38.20/api_sisfotel/dokumen/8.pdf', 'menara'),
(9, 'http://192.168.38.20/api_sisfotel/dokumen/9.pdf', ''),
(10, 'http://192.168.38.20/api_sisfotel/dokumen/10.pdf', ''),
(11, 'http://192.168.38.20/api_sisfotel/dokumen/11.pdf', ''),
(12, 'http://192.168.38.20/api_sisfotel/dokumen/12.pdf', ''),
(13, 'http://192.168.38.20/api_sisfotel/dokumen/13.pdf', ''),
(14, 'http://192.168.38.20/api_sisfotel/dokumen/14.pdf', ''),
(15, 'http://192.168.38.20/api_sisfotel/dokumen/15.pdf', ''),
(16, 'http://192.168.43.243/api_sisfotel/dokumen/16.pdf', 'gis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_menara`
--

CREATE TABLE `tb_menara` (
  `id` int(11) NOT NULL,
  `sitename` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `type` varchar(100) NOT NULL,
  `tinggi` varchar(10) NOT NULL,
  `latitude` varchar(50) NOT NULL,
  `longitude` varchar(50) NOT NULL,
  `status` varchar(100) NOT NULL,
  `id_pemohon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_menara`
--

INSERT INTO `tb_menara` (`id`, `sitename`, `alamat`, `desa`, `kecamatan`, `tahun`, `type`, `tinggi`, `latitude`, `longitude`, `status`, `id_pemohon`) VALUES
(1, 'tower', 'sitanggal', '', '', '12 Maret 2', '', '50', '', '', '', 0),
(2, 'tower', 'sitanggal', '', '', '12 Maret 2', '', '50', '', '', '', 0),
(3, '', 'kskss', '', '', '16 March 2', '', '60', '', '', '', 0),
(4, 'hsjaj', 'kskss', '', '', '16 March 2', '', '60', '', '', '', 0),
(5, 'hsjaj', 'kskss', '', '', '16 March 2', '', '60', '', '', '', 0),
(6, 'ksjsn', 'kanaan', '', '', '16 March 2', '', '44', '', '', '', 0),
(7, 'Hahaa', 'Larangan Brebes', '', '', '18 March 2', '', '60', '', '', '', 0),
(8, 'nsns', 'nsnbsns', '', '', '18 March 2', '', '9494', '', '', '', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pemohon`
--

CREATE TABLE `tb_pemohon` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `identitas` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pemohon`
--

INSERT INTO `tb_pemohon` (`id`, `user_id`, `nama`, `identitas`, `alamat`, `email`, `telepon`) VALUES
(1, 11, 'fauzi', '123', 'fauzi', 'fauzi@gmail.com', '123456'),
(2, 0, 'Cova', '12', 'cbb', 'ahmadfauzi@gmail.com', '0358'),
(3, 0, 'hha', '048484', 'haha', 'haha@gmail.com', '0885'),
(4, 0, 'hahhaa', '0440', 'hahaha', 'hahaa@gmail.com', '111'),
(5, 0, 'Ahmad Fauzi', '3329151203980005', 'Brebes', 'fauzinesia@yahoo.com', '085695826885');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pengajuan`
--

CREATE TABLE `tb_pengajuan` (
  `id` int(11) NOT NULL,
  `no_surat` varchar(20) NOT NULL,
  `operator` varchar(20) NOT NULL,
  `site_id` int(10) NOT NULL,
  `site_name` varchar(100) NOT NULL,
  `tinggi` int(5) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `berdiri` varchar(30) NOT NULL,
  `pemilik_tanah` varchar(100) NOT NULL,
  `batas_u` varchar(100) NOT NULL,
  `batas_s` varchar(100) NOT NULL,
  `batas_b` varchar(100) NOT NULL,
  `batas_t` varchar(100) NOT NULL,
  `lama_sewa` varchar(5) NOT NULL,
  `lat` int(20) NOT NULL,
  `ling` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pengajuan`
--

INSERT INTO `tb_pengajuan` (`id`, `no_surat`, `operator`, `site_id`, `site_name`, `tinggi`, `alamat`, `berdiri`, `pemilik_tanah`, `batas_u`, `batas_s`, `batas_b`, `batas_t`, `lama_sewa`, `lat`, `ling`) VALUES
(1, '', '', 123, 'tower', 50, 'sitanggal', '12 Maret 2010', '', 'rumah', 'totko', 'swalayan', 'sawah', '5', -12309878, -12309878),
(2, '', 'INdosat', 123, 'tower', 50, 'sitanggal', '12 Maret 2010', 'hj oke', 'rumah', 'totko', 'swalayan', 'sawah', '5', -12309878, -12309878),
(3, '', 'THREE', 0, '', 60, 'kskss', '16 March 2020', '', 'kaja', 'ksks', 'keke', 'ksksk', '', 0, 0),
(4, '', 'THREE', 23, 'hsjaj', 60, 'kskss', '16 March 2020', 'hah', 'kaja', 'ksks', 'keke', 'ksksk', '12', 646464, 0),
(5, '', 'THREE', 23, 'hsjaj', 60, 'kskss', '16 March 2020', 'hah', 'kaja', 'ksks', 'keke', 'ksksk', '12', 8404949, 646464),
(6, '22kj/w/23', 'AXIS', 22, 'ksjsn', 44, 'kanaan', '16 March 2020', 'kaja', 'jsns', 'msns', 'nsns', 'msms', '1', 9494, 94949),
(7, '32/SKm/Vim/@9', 'TELKOMSEL', 1234, 'Hahaa', 60, 'Larangan Brebes', '18 March 2020', 'heja', 'heja', 'gedubf', 'tiko', 'kali', '10', 1230896, 6180946),
(8, '11', 'Lain nya', 0, 'nsns', 9494, 'nsnbsns', '18 March 2020', 'nsns', 'hshs', 'nns', 'nene', 'nene', '911', 649401, 949464);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id` int(10) NOT NULL,
  `nip` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `gol` varchar(10) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `jab_survey` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_provider`
--

CREATE TABLE `tb_provider` (
  `id` int(10) NOT NULL,
  `operator` varchar(30) NOT NULL,
  `nama_pt` varchar(100) NOT NULL,
  `alamat_pt` varchar(100) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `nama_pj` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_rekomendasi`
--

CREATE TABLE `tb_rekomendasi` (
  `id` int(11) NOT NULL,
  `pemohon` varchar(100) NOT NULL,
  `nama_pt` varchar(100) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `survei` datetime NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `lat` varchar(100) NOT NULL,
  `ling` varchar(100) NOT NULL,
  `tinggi` int(10) NOT NULL,
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_survey`
--

CREATE TABLE `tb_survey` (
  `id` int(10) NOT NULL,
  `tanggal_survey` date NOT NULL,
  `petugas` varchar(50) NOT NULL,
  `nomor` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `hasil` tinyint(1) NOT NULL,
  `validasi` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_sub` varchar(100) NOT NULL,
  `ktp_sub` varchar(20) NOT NULL,
  `alamat_sub` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `provider` varchar(25) NOT NULL,
  `nama_pem` varchar(100) NOT NULL,
  `alamat_pt_pemohon` varchar(255) NOT NULL,
  `no_telp_pemohon` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `date_register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `nama_sub`, `ktp_sub`, `alamat_sub`, `email`, `telepon`, `provider`, `nama_pem`, `alamat_pt_pemohon`, `no_telp_pemohon`, `status`, `is_approved`, `date_register`) VALUES
(1, 'fauzi.tikami@gmail.com', '31383f56e8ffca55b083f1b2bbf0444059a77949', 'fauzi', '', 'fauzi', 'fauzi.tikami@gmail.com', '123456', 'Indosat', '', '', '', 1, 1, '2020-03-15 10:49:12'),
(10, 'ahmadfauzi', '31383f56e8ffca55b083f1b2bbf0444059a77949', 'Ahmad Fauzi', '', 'brebes', 'siandong@gmail.com', '0856', 'INDOSAT', '', '', '', 0, 0, '2020-03-15 10:56:06'),
(11, 'fauzii', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'fauzi', '123', 'fauzi', 'fauzi@gmail.com', '123456', 'Indosat', 'alu', 'alu', '123456', 0, 0, '2020-03-16 00:48:08'),
(12, 'Coba', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'Cova', '12', 'cbb', 'ahmadfauzi@gmail.com', '0358', 'INDOSAT', 'hhhu', 'akak', '77', 0, 0, '2020-03-15 23:20:18'),
(13, 'haha', '637d1f5c6e6d1be22ed907eb3d223d858ca396d8', 'hha', '048484', 'haha', 'haha@gmail.com', '0885', 'THREE', 'haha', 'kaja', '8404', 0, 0, '2020-03-15 23:56:44'),
(14, 'hahaaa', '6d73d34e71cd212d35f709b9dff6a52b2aa582ec', 'hahhaa', '0440', 'hahaha', 'hahaa@gmail.com', '111', 'XL AXIATA', 'haha', 'haha', '64', 0, 0, '2020-03-16 00:08:17'),
(15, 'fauzins', '31383f56e8ffca55b083f1b2bbf0444059a77949', 'Ahmad Fauzi', '3329151203980005', 'Brebes', 'fauzinesia@yahoo.com', '085695826885', 'TELKOMSEL', 'H Wika', 'Siandong', '081572731234', 1, 1, '2020-03-17 17:05:46');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indeks untuk tabel `tb_berkas`
--
ALTER TABLE `tb_berkas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_document`
--
ALTER TABLE `tb_document`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_menara`
--
ALTER TABLE `tb_menara`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pemohon`
--
ALTER TABLE `tb_pemohon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pengajuan`
--
ALTER TABLE `tb_pengajuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_provider`
--
ALTER TABLE `tb_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_rekomendasi`
--
ALTER TABLE `tb_rekomendasi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_survey`
--
ALTER TABLE `tb_survey`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tb_berkas`
--
ALTER TABLE `tb_berkas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tb_document`
--
ALTER TABLE `tb_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_menara`
--
ALTER TABLE `tb_menara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_pemohon`
--
ALTER TABLE `tb_pemohon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_pengajuan`
--
ALTER TABLE `tb_pengajuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_provider`
--
ALTER TABLE `tb_provider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_rekomendasi`
--
ALTER TABLE `tb_rekomendasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_survey`
--
ALTER TABLE `tb_survey`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
