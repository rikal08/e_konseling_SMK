-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Apr 2020 pada 04.04
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `konseling`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_chat`
--

CREATE TABLE `tb_chat` (
  `id` int(11) NOT NULL,
  `nm_pengirim` varchar(50) NOT NULL,
  `nm_penerima` varchar(50) NOT NULL,
  `pesan_time` date NOT NULL,
  `penerima` varchar(50) NOT NULL,
  `pengirim` varchar(50) NOT NULL,
  `conten` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_chat`
--

INSERT INTO `tb_chat` (`id`, `nm_pengirim`, `nm_penerima`, `pesan_time`, `penerima`, `pengirim`, `conten`) VALUES
(25, ' BUDIMAN ISWANDI', 'ANARKI', '2020-04-12', '099099090909012321', '123234454365870987', 'asfdsfgsdgsd'),
(26, 'ANARKI', 'BUDIMAN ISWANDI', '2020-04-12', '123234454365870987', '099099090909012321', 'dsgsdghsdhsdhsdh');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_guru`
--

CREATE TABLE `tb_guru` (
  `nip_guru` varchar(25) NOT NULL,
  `nama_guru` varchar(50) NOT NULL,
  `tempat_lahir_guru` varchar(50) NOT NULL,
  `tgl_lahir_guru` date NOT NULL,
  `kelamin_guru` varchar(10) NOT NULL,
  `agama_guru` varchar(15) NOT NULL,
  `jabatan_guru` varchar(20) NOT NULL,
  `alamat_guru` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_guru`
--

INSERT INTO `tb_guru` (`nip_guru`, `nama_guru`, `tempat_lahir_guru`, `tgl_lahir_guru`, `kelamin_guru`, `agama_guru`, `jabatan_guru`, `alamat_guru`, `no_hp`, `foto`) VALUES
('123234454365870987', 'BUDIMAN ISWANDI', 'padang barat', '2011-11-11', 'Laki-Laki', 'Islam', 'Guru', 'padang barat', '214444444444', '1582600187.png'),
('194509780012008709', 'GUSNIAR', 'payukumbuh', '1980-11-11', 'Perempuan', 'Islam', 'GURU BK', 'sawah padang aua kuning, payakumbuh', '085319675490', '1582601097.png'),
('214353244345235', 'NURUL', 'padang', '1998-12-12', 'Laki-Laki', 'Islam', 'Guru', 'payakumbuh', '123124124214', '1586533271.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jurusan`
--

CREATE TABLE `tb_jurusan` (
  `id` int(11) NOT NULL,
  `kode_jurusan` varchar(20) NOT NULL,
  `nama_jurusan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jurusan`
--

INSERT INTO `tb_jurusan` (`id`, `kode_jurusan`, `nama_jurusan`) VALUES
(10, 'P', 'PERKANTORAN'),
(11, 'KP', 'KEPERAWATAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id` int(11) NOT NULL,
  `kode_kelas` varchar(20) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL,
  `nip_guru` varchar(30) NOT NULL,
  `kode_jurusan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kelas`
--

INSERT INTO `tb_kelas` (`id`, `kode_kelas`, `nama_kelas`, `nip_guru`, `kode_jurusan`) VALUES
(9, 'K003', '3 B KEPERAWATAN', '214353244345235', 'KP'),
(11, 'K004', '3A KEPERAWATAN', '123234454365870987', 'KP');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ortu_siswa`
--

CREATE TABLE `tb_ortu_siswa` (
  `no_identitas` varchar(50) NOT NULL,
  `nis_siswa` varchar(50) NOT NULL,
  `nama_ortu` varchar(100) NOT NULL,
  `tmpt_lahir_ortu` text NOT NULL,
  `tgl_lahir_ortu` date NOT NULL,
  `jenis_kel_ortu` varchar(20) NOT NULL,
  `agama_ortu` varchar(20) NOT NULL,
  `pekerjaan_ortu` varchar(20) NOT NULL,
  `alamat_ortu` text NOT NULL,
  `nohp_ortu` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_ortu_siswa`
--

INSERT INTO `tb_ortu_siswa` (`no_identitas`, `nis_siswa`, `nama_ortu`, `tmpt_lahir_ortu`, `tgl_lahir_ortu`, `jenis_kel_ortu`, `agama_ortu`, `pekerjaan_ortu`, `alamat_ortu`, `nohp_ortu`) VALUES
('000921323813', '3424', 'PUTRI', 'PAYAKUMBUH', '1969-01-12', 'PEREMPUAN', 'Islam', 'PNS', 'PAYAKUMBUH', '082038128312'),
('099099090909012321', '3978437253295732', 'ANARKI', 'PAYAKUMBUH', '1970-01-01', 'LAKI-LAKI', 'Islam', 'PNS', 'PAYAKUMBUH', '092014821048');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggaran`
--

CREATE TABLE `tb_pelanggaran` (
  `id` int(11) NOT NULL,
  `kode_pelanggaran` varchar(20) NOT NULL,
  `nama_pelanggaran` varchar(500) NOT NULL,
  `poin_pelanggaran` int(11) NOT NULL,
  `ketegori_pelanggaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pelanggaran`
--

INSERT INTO `tb_pelanggaran` (`id`, `kode_pelanggaran`, `nama_pelanggaran`, `poin_pelanggaran`, `ketegori_pelanggaran`) VALUES
(9, '001', 'MEROKOK', 20, 'BERAT'),
(10, '002', 'CABUT', 9, 'RINGAN'),
(11, '003', 'BUANG SAMPAH SEMBARANGAN', 10, 'RINGAN'),
(12, '004', 'TERLMABAT', 2, 'RINGAN'),
(13, '005', 'TIDAK RAPI', 10, 'RINGAN');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pelanggaran_siswa`
--

CREATE TABLE `tb_pelanggaran_siswa` (
  `id` int(11) NOT NULL,
  `nis_siswa` varchar(50) NOT NULL,
  `kode_pelanggaran` varchar(20) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `tgl_pela` date NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_pelanggaran_siswa`
--

INSERT INTO `tb_pelanggaran_siswa` (`id`, `nis_siswa`, `kode_pelanggaran`, `lokasi`, `tgl_pela`, `ket`) VALUES
(16, '3978437253295732', '001', 'SDGSDG', '2011-11-11', 'SFBFSH'),
(17, '3978437253295732', '001', 'SEKOLAH', '2011-11-11', 'sgsdgs'),
(18, '3978437253295732', '001', 'SEKOLAH', '2011-11-11', 'merokok di sekolah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_poin_siswa`
--

CREATE TABLE `tb_poin_siswa` (
  `id` int(11) NOT NULL,
  `nis_siswa` varchar(30) NOT NULL,
  `jumlah_poin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_poin_siswa`
--

INSERT INTO `tb_poin_siswa` (`id`, `nis_siswa`, `jumlah_poin`) VALUES
(11, '3978437253295732', 60),
(13, '124241', 0),
(14, '8395723857', 29),
(15, '3424', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sanksi`
--

CREATE TABLE `tb_sanksi` (
  `id` int(11) NOT NULL,
  `kode_sanksi` varchar(20) NOT NULL,
  `poin_min` int(11) NOT NULL,
  `poin_max` int(11) NOT NULL,
  `nama_sanksi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_sanksi`
--

INSERT INTO `tb_sanksi` (`id`, `kode_sanksi`, `poin_min`, `poin_max`, `nama_sanksi`) VALUES
(12, '001', 2, 20, 'PEMBINAAN KEPADA SISWA'),
(13, '002', 20, 40, 'PEMANGGILAN ORANG TUA PERTAMA'),
(14, '003', 40, 70, 'PEMANGGILAN ORANG TUA KE DUA'),
(15, '004', 70, 90, 'PEMANGGILAN ORANG TUA KE TIGA'),
(16, '005', 90, 100, 'PENGEMBALIAN KEPADA ORANG TUA/WALI SISWA');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sanksi_siswa`
--

CREATE TABLE `tb_sanksi_siswa` (
  `id` int(11) NOT NULL,
  `nis_siswa` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `kode_sanksi` varchar(10) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_sanksi_siswa`
--

INSERT INTO `tb_sanksi_siswa` (`id`, `nis_siswa`, `tgl`, `kode_sanksi`, `status`) VALUES
(13, '3978437253295732', '2020-04-12', '002', 'Sanksi Telah Dijatuhkan'),
(16, '3978437253295732', '2020-04-12', '003', 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nis_siswa` varchar(50) NOT NULL,
  `kode_kelas` varchar(20) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `tempat_lahir_siswa` varchar(100) NOT NULL,
  `tgl_lahir_siswa` date NOT NULL,
  `jenis_kelamin_siswa` varchar(20) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_siswa`
--

INSERT INTO `tb_siswa` (`nis_siswa`, `kode_kelas`, `nama_siswa`, `tempat_lahir_siswa`, `tgl_lahir_siswa`, `jenis_kelamin_siswa`, `agama`, `alamat`, `no_hp`, `foto`) VALUES
('3424', 'K004', 'AISYAH', 'PAYAKUMBUH', '1999-01-02', 'PEREMPUAN', 'ISLAM', 'PAYAKUMBUH', '089273213712', '1586718294.png'),
('3978437253295732', 'K003', 'BIMA ANARKI', 'PAYAKUMBUH', '1999-01-01', 'LAKI-LAKI', 'ISLAM', 'payakumbuh', '089089089089', '1583771575.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `id_user` varchar(50) NOT NULL,
  `user` varchar(20) NOT NULL,
  `pass` text NOT NULL,
  `lv` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `id_user`, `user`, `pass`, `lv`) VALUES
(1, '194509780012008709', 'G001', '202cb962ac59075b964b07152d234b70', 'admin'),
(51, '123234454365870987', 'G002', '202cb962ac59075b964b07152d234b70', 'Guru'),
(57, '3978437253295732', 'S001', '202cb962ac59075b964b07152d234b70', 'Siswa'),
(58, '099099090909012321', 'OT001', '202cb962ac59075b964b07152d234b70', 'ortu'),
(61, '214353244345235', 'G003', '202cb962ac59075b964b07152d234b70', 'Guru'),
(67, '3424', 'S002', '202cb962ac59075b964b07152d234b70', 'Siswa'),
(68, '000921323813', 'OT002', '202cb962ac59075b964b07152d234b70', 'ortu');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_chat`
--
ALTER TABLE `tb_chat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_guru`
--
ALTER TABLE `tb_guru`
  ADD PRIMARY KEY (`nip_guru`);

--
-- Indeks untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_ortu_siswa`
--
ALTER TABLE `tb_ortu_siswa`
  ADD PRIMARY KEY (`no_identitas`);

--
-- Indeks untuk tabel `tb_pelanggaran`
--
ALTER TABLE `tb_pelanggaran`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pelanggaran_siswa`
--
ALTER TABLE `tb_pelanggaran_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_poin_siswa`
--
ALTER TABLE `tb_poin_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_sanksi`
--
ALTER TABLE `tb_sanksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_sanksi_siswa`
--
ALTER TABLE `tb_sanksi_siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nis_siswa`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_chat`
--
ALTER TABLE `tb_chat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `tb_jurusan`
--
ALTER TABLE `tb_jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `tb_pelanggaran`
--
ALTER TABLE `tb_pelanggaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `tb_pelanggaran_siswa`
--
ALTER TABLE `tb_pelanggaran_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_poin_siswa`
--
ALTER TABLE `tb_poin_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_sanksi`
--
ALTER TABLE `tb_sanksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tb_sanksi_siswa`
--
ALTER TABLE `tb_sanksi_siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
