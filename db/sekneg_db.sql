-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2017 at 05:19 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sekneg_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `about_id` int(11) NOT NULL,
  `about_title` varchar(500) NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`about_id`, `about_title`, `about_desc`) VALUES
(1, 'Tentang SOP', '<p>SOP (Standar Operasional Prosedur) adalah serangkaian instruksi tertulis yang dibakukan mengenai berbagai proses penyelenggaraan aktivitas organisasi, bagaimana dan kapan harus dilakukan, dimana dan oleh siapa dilakukan.</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `access_input`
--

CREATE TABLE `access_input` (
  `satker_id` int(11) NOT NULL,
  `access_status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `access_menu`
--

CREATE TABLE `access_menu` (
  `access_menu_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `access_menu_a` char(1) NOT NULL,
  `access_menu_e` char(1) NOT NULL,
  `access_menu_d` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `access_menu`
--

INSERT INTO `access_menu` (`access_menu_id`, `menu_id`, `user_group_id`, `access_menu_a`, `access_menu_e`, `access_menu_d`) VALUES
(148, 64, 9, '', '', ''),
(149, 65, 9, '1', '1', '1'),
(150, 67, 9, '1', '1', '1'),
(151, 68, 9, '', '', ''),
(152, 69, 9, '1', '1', '1'),
(153, 70, 9, '1', '1', '1'),
(154, 71, 9, '1', '1', '1'),
(155, 72, 9, '1', '1', '1'),
(196, 7, 10, '', '', ''),
(197, 11, 10, '1', '1', '1'),
(198, 64, 10, '', '', ''),
(199, 66, 10, '1', '1', '1'),
(200, 68, 10, '', '', ''),
(201, 69, 10, '1', '1', '1'),
(202, 70, 10, '1', '1', '1'),
(203, 71, 10, '1', '1', '1'),
(204, 72, 10, '1', '1', '1'),
(229, 1, 1, '', '', ''),
(230, 2, 1, '1', '1', '1'),
(231, 3, 1, '1', '1', '1'),
(232, 6, 1, '1', '1', '1'),
(233, 58, 1, '', '', ''),
(234, 59, 1, '1', '1', '1'),
(235, 60, 1, '1', '1', '1'),
(236, 61, 1, '1', '1', '1'),
(237, 62, 1, '1', '1', '1'),
(238, 63, 1, '1', '1', '1'),
(239, 7, 1, '', '', ''),
(240, 8, 1, '1', '1', '1'),
(241, 9, 1, '1', '1', '1'),
(242, 10, 1, '1', '1', '1'),
(243, 11, 1, '1', '1', '1'),
(244, 12, 1, '1', '1', '1'),
(245, 13, 1, '1', '1', '1'),
(246, 77, 1, '1', '1', '1'),
(247, 64, 1, '', '', ''),
(248, 65, 1, '1', '1', '1'),
(249, 66, 1, '1', '1', '1'),
(250, 67, 1, '1', '1', '1'),
(251, 76, 1, '1', '1', '1'),
(252, 68, 1, '', '', ''),
(253, 69, 1, '1', '1', '1'),
(254, 70, 1, '1', '1', '1'),
(255, 71, 1, '1', '1', '1'),
(256, 72, 1, '1', '1', '1'),
(257, 73, 1, '', '', ''),
(258, 74, 1, '1', '1', '1'),
(259, 75, 1, '1', '1', '1'),
(260, 1, 11, '', '', ''),
(261, 3, 11, '1', '1', '1'),
(262, 58, 11, '', '', ''),
(263, 59, 11, '1', '1', '1'),
(264, 60, 11, '1', '1', '1'),
(265, 61, 11, '1', '1', '1'),
(266, 62, 11, '1', '1', '1'),
(267, 63, 11, '1', '1', '1'),
(268, 7, 11, '', '', ''),
(269, 8, 11, '1', '1', '1'),
(270, 9, 11, '1', '1', '1'),
(271, 10, 11, '1', '1', '1'),
(272, 77, 11, '1', '1', '1'),
(273, 64, 11, '', '', ''),
(274, 76, 11, '1', '1', '1'),
(275, 68, 11, '', '', ''),
(276, 69, 11, '1', '1', '1'),
(277, 70, 11, '1', '1', '1'),
(278, 71, 11, '1', '1', '1'),
(279, 72, 11, '1', '1', '1'),
(280, 73, 11, '', '', ''),
(281, 74, 11, '1', '1', '1'),
(282, 75, 11, '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `bagian_id` int(11) NOT NULL,
  `satuan_organisasi_id` int(11) NOT NULL,
  `unit_kerja_id` int(11) NOT NULL,
  `bagian_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`bagian_id`, `satuan_organisasi_id`, `unit_kerja_id`, `bagian_nama`) VALUES
(1, 1, 6, 'TU'),
(2, 1, 1, 'Tata Laksana');

-- --------------------------------------------------------

--
-- Table structure for table `chating`
--

CREATE TABLE `chating` (
  `chating_id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `chating_message` varchar(100) NOT NULL,
  `chating_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `evaluasi`
--

CREATE TABLE `evaluasi` (
  `evaluasi_id` int(11) NOT NULL,
  `evaluasi_tanggal` date NOT NULL,
  `evaluasi_status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluasi`
--

INSERT INTO `evaluasi` (`evaluasi_id`, `evaluasi_tanggal`, `evaluasi_status`) VALUES
(1, '2017-11-04', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `evaluasi_detail`
--

CREATE TABLE `evaluasi_detail` (
  `evaluasi_detail_id` int(11) NOT NULL,
  `evaluasi_id` int(11) NOT NULL,
  `sop_alias` varchar(100) NOT NULL,
  `evaluasi_detail_hasil` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `evaluasi_detail`
--

INSERT INTO `evaluasi_detail` (`evaluasi_detail_id`, `evaluasi_id`, `sop_alias`, `evaluasi_detail_hasil`) VALUES
(2, 1, '7574524205', ''),
(3, 1, '7687592307', '');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE `jawaban` (
  `jawaban_id` int(11) NOT NULL,
  `sop_alias` varchar(100) NOT NULL,
  `jawaban_ip` varchar(50) NOT NULL,
  `jawaban_tanggal` date NOT NULL,
  `jawaban_pilihan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`jawaban_id`, `sop_alias`, `jawaban_ip`, `jawaban_tanggal`, `jawaban_pilihan`) VALUES
(4, '7416764056', '::1', '2017-11-06', 'Pertanyaan 2');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_diskusi`
--

CREATE TABLE `kategori_diskusi` (
  `kategori_diskusi_id` int(11) NOT NULL,
  `kategori_diskusi_judul` varchar(250) NOT NULL,
  `kategori_diskusi_ket` varchar(500) NOT NULL,
  `kategori_diskusi_status` char(1) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_diskusi`
--

INSERT INTO `kategori_diskusi` (`kategori_diskusi_id`, `kategori_diskusi_judul`, `kategori_diskusi_ket`, `kategori_diskusi_status`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 'perkenalan', 'untuk perkenalan aplikasi', 'Y', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(2, 'Diskusi 1', 'Diskusi 1', 'Y', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', ''),
(3, 'Diskusi 2', 'Diskusi 2', 'N', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_sop`
--

CREATE TABLE `kategori_sop` (
  `kategori_id` int(11) NOT NULL,
  `kategori_parent` int(11) NOT NULL,
  `kategori_level` int(11) NOT NULL,
  `kategori_nama` varchar(100) NOT NULL,
  `kategori_status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_sop`
--

INSERT INTO `kategori_sop` (`kategori_id`, `kategori_parent`, `kategori_level`, `kategori_nama`, `kategori_status`) VALUES
(1, 0, 1, 'PELAYANAN', 'Y'),
(10, 0, 1, 'RUTIN', 'Y'),
(11, 0, 1, 'PENUGASAN', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `kegiatan`
--

CREATE TABLE `kegiatan` (
  `kegiatan_id` int(11) NOT NULL,
  `kegiatan_kategori` varchar(20) NOT NULL,
  `kegiatan_nama` varchar(100) NOT NULL,
  `kegiatan_desc` text NOT NULL,
  `kegiatan_gambar` varchar(100) NOT NULL,
  `kegiatan_tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kegiatan`
--

INSERT INTO `kegiatan` (`kegiatan_id`, `kegiatan_kategori`, `kegiatan_nama`, `kegiatan_desc`, `kegiatan_gambar`, `kegiatan_tanggal`) VALUES
(1, 'Sosialisasi', 'Kegiatan 1', 'desc Kegiatan 1\nini', '1DXH9421.JPG', '2017-10-01'),
(2, 'Sosialisasi', 'Kegiatan 2', 'desc Kegiatan 2', 'IMG_4784.JPG', '2017-10-01'),
(3, 'Sosialisasi', 'Kegiatan 3', 'desc Kegiatan 3', 'IMG_4788.JPG', '2017-10-01'),
(14, 'Sosialisasi', 'Kegiatan 1', 'desc Kegiatan 1\r\nini', 'IMG_4808.JPG', '2017-10-01'),
(15, 'Sosialisasi', 'Kegiatan 2', 'desc Kegiatan 2', 'IMG_4818.JPG', '2017-10-01'),
(16, 'Sosialisasi', 'Kegiatan 3', 'desc Kegiatan 3', 'IMG_4821.JPG', '2017-10-01');

-- --------------------------------------------------------

--
-- Table structure for table `kontak_kami`
--

CREATE TABLE `kontak_kami` (
  `kontak_kami_id` int(11) NOT NULL,
  `kontak_kami_nama` varchar(50) NOT NULL,
  `kontak_kami_telepon` varchar(15) NOT NULL,
  `kontak_kami_email` varchar(50) NOT NULL,
  `kontak_kami_alamat` varchar(100) NOT NULL,
  `kontak_kami_isi` text NOT NULL,
  `kontak_kami_tanggal` date NOT NULL,
  `kontak_kami_status` char(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kontak_kami`
--

INSERT INTO `kontak_kami` (`kontak_kami_id`, `kontak_kami_nama`, `kontak_kami_telepon`, `kontak_kami_email`, `kontak_kami_alamat`, `kontak_kami_isi`, `kontak_kami_tanggal`, `kontak_kami_status`, `user_id`) VALUES
(2, 'Biro Perencanaan', '09', 'mulyana4hmad@gmail.com', 'jakarta', 'isi pesan', '2017-10-26', 'R', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kritik_saran`
--

CREATE TABLE `kritik_saran` (
  `kritik_saran_id` int(11) NOT NULL,
  `kritik_saran_nama` varchar(50) NOT NULL,
  `kritik_saran_judul` varchar(50) NOT NULL,
  `kritik_saran_isi` text NOT NULL,
  `kritik_saran_tanggal` date NOT NULL,
  `kritik_saran_status` char(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kritik_saran`
--

INSERT INTO `kritik_saran` (`kritik_saran_id`, `kritik_saran_nama`, `kritik_saran_judul`, `kritik_saran_isi`, `kritik_saran_tanggal`, `kritik_saran_status`, `user_id`) VALUES
(1, 'Biro Perencanaan', 'judul krik', 'isi kritk', '2017-10-26', 'R', 2);

-- --------------------------------------------------------

--
-- Table structure for table `manual_book`
--

CREATE TABLE `manual_book` (
  `manual_book_id` int(11) NOT NULL,
  `manual_book_title` varchar(500) NOT NULL,
  `manual_book_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manual_book`
--

INSERT INTO `manual_book` (`manual_book_id`, `manual_book_title`, `manual_book_desc`) VALUES
(1, 'manual 1', '<p>manual desc 1</p>\n'),
(2, 'manual 2', '<p>desc</p>\n');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `menu_parent` int(11) NOT NULL,
  `menu_order` int(11) NOT NULL,
  `menu_level` int(11) NOT NULL,
  `menu_icon` varchar(50) NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_link` varchar(100) NOT NULL,
  `menu_sts_child` char(1) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `menu_parent`, `menu_order`, `menu_level`, `menu_icon`, `menu_name`, `menu_link`, `menu_sts_child`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 0, 1, 1, 'wb-settings', 'Settings', '#', 'Y', '2017-05-31 11:09:41', 'kanwiljatim@kemenag.go.id', '0000-00-00 00:00:00', ''),
(2, 1, 1, 2, '', 'User Group', 'settings/user_group', 'T', '2017-05-31 11:23:42', 'admin', '0000-00-00 00:00:00', ''),
(3, 1, 2, 2, '', 'User Manager', 'settings/user_manager', 'T', '2017-05-31 11:24:30', 'admin', '0000-00-00 00:00:00', ''),
(6, 1, 3, 2, '', 'Menu Manager', 'settings/menu_manager', 'T', '2017-05-31 13:45:06', 'admin', '0000-00-00 00:00:00', ''),
(7, 0, 3, 1, 'wb-bookmark', 'Master', '#', 'Y', '2017-05-31 13:45:25', 'admin', '0000-00-00 00:00:00', ''),
(8, 7, 1, 2, '', 'Satuan Organisasi', 'master/satuan_organisasi', 'T', '2017-05-31 13:45:46', 'admin', '0000-00-00 00:00:00', ''),
(9, 7, 2, 2, '', 'Unit Kerja', 'master/unit_kerja', 'T', '2017-05-31 13:46:05', 'admin', '0000-00-00 00:00:00', ''),
(10, 7, 3, 2, '', 'Bagian', 'master/bagian', 'T', '2017-05-31 13:46:27', 'admin', '0000-00-00 00:00:00', ''),
(11, 7, 4, 2, '', 'Jabatan Pengesah', 'master/jabatan_pengesah', 'T', '2017-05-31 13:52:00', 'admin', '0000-00-00 00:00:00', ''),
(12, 7, 5, 2, '', 'Jenis SOP', 'master/jenis_sop', 'T', '2017-05-31 13:52:24', 'admin', '0000-00-00 00:00:00', ''),
(13, 7, 6, 2, '', 'Simbol Panah', 'master/simbol_panah', 'T', '2017-05-31 13:52:45', 'admin', '0000-00-00 00:00:00', ''),
(58, 0, 2, 1, 'wb-home', 'Front End', '#', 'Y', '2017-10-23 22:57:52', 'admin', '0000-00-00 00:00:00', ''),
(59, 58, 1, 2, '', 'Slide', 'front/slide', 'T', '2017-10-23 23:03:31', 'admin', '0000-00-00 00:00:00', ''),
(60, 58, 2, 2, '', 'Tentang Kami', 'front/tentang_kami', 'T', '2017-10-23 23:03:50', 'admin', '0000-00-00 00:00:00', ''),
(61, 58, 3, 2, '', 'Agenda', 'front/agenda', 'T', '2017-10-23 23:04:04', 'admin', '0000-00-00 00:00:00', ''),
(62, 58, 4, 2, '', 'Berita', 'front/pengumuman', 'T', '2017-10-23 23:04:20', 'admin', '0000-00-00 00:00:00', ''),
(63, 58, 5, 2, '', 'Kegiatan', 'front/kegiatan', 'T', '2017-10-23 23:04:35', 'admin', '0000-00-00 00:00:00', ''),
(64, 0, 4, 1, 'wb-pencil', 'SOP', '#', 'Y', '2017-10-23 23:04:59', 'admin', '0000-00-00 00:00:00', ''),
(65, 64, 1, 2, '', 'Penyusunan SOP', 'sop/penyusunan_sop', 'T', '2017-10-23 23:05:17', 'admin', '0000-00-00 00:00:00', ''),
(66, 64, 2, 2, '', 'Pengesahan SOP', 'sop/pengesahan_sop', 'T', '2017-10-23 23:05:33', 'admin', '0000-00-00 00:00:00', ''),
(67, 64, 3, 2, '', 'Revisi SOP', 'sop/revisi_sop', 'T', '2017-10-24 09:18:28', 'admin', '0000-00-00 00:00:00', ''),
(68, 0, 5, 1, 'wb-chat', 'Komunikasi', '#', 'Y', '2017-10-25 15:39:15', 'admin', '0000-00-00 00:00:00', ''),
(69, 68, 1, 2, '', 'Chatting', 'komunikasi/chatting', 'T', '2017-10-25 15:39:37', 'admin', '0000-00-00 00:00:00', ''),
(70, 68, 2, 2, '', 'Forum Diskusi', 'komunikasi/forum', 'T', '2017-10-25 15:39:55', 'admin', '0000-00-00 00:00:00', ''),
(71, 68, 3, 2, '', 'Kritik dan Saran', 'komunikasi/kritik_saran', 'T', '2017-10-25 15:40:27', 'admin', '0000-00-00 00:00:00', ''),
(72, 68, 4, 2, '', 'Kontak Kami', 'komunikasi/kontak_kami', 'T', '2017-10-25 15:40:52', 'admin', '0000-00-00 00:00:00', ''),
(73, 0, 6, 1, 'wb-pie-chart', 'Laporan', '#', 'Y', '2017-10-25 15:41:05', 'admin', '0000-00-00 00:00:00', ''),
(74, 73, 1, 2, '', 'Daftar SOP', 'laporan/sop', 'T', '2017-10-25 15:41:26', 'admin', '0000-00-00 00:00:00', ''),
(75, 73, 2, 2, '', 'Hasil Evaluasi', 'laporan/evaluasi', 'T', '2017-10-25 15:41:43', 'admin', '0000-00-00 00:00:00', ''),
(76, 64, 4, 2, '', 'Evaluasi SOP', 'sop/evaluasi_sop', 'T', '2017-10-25 17:19:33', 'admin', '0000-00-00 00:00:00', ''),
(77, 7, 7, 2, '', 'Pertanyaan', 'master/pertanyaan', 'T', '2017-11-01 13:52:38', 'admin', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `notif`
--

CREATE TABLE `notif` (
  `notif_id` bigint(20) NOT NULL,
  `notif_title` varchar(200) NOT NULL,
  `notif_desc` text NOT NULL,
  `notif_type` char(3) NOT NULL,
  `notif_jenis` enum('reviu','revisi') NOT NULL,
  `revisi_id` int(11) NOT NULL,
  `reviu_id` int(11) NOT NULL,
  `notif_date` date NOT NULL,
  `notif_icon` varchar(100) NOT NULL,
  `notif_link` varchar(100) NOT NULL,
  `notif_status` char(1) NOT NULL,
  `notif_action` enum('belum','sudah') NOT NULL,
  `sop_alias` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pegawai_nama` varchar(100) NOT NULL,
  `pegawai_jabatan` varchar(100) NOT NULL,
  `pegawai_nip` varchar(100) NOT NULL,
  `pegawai_email` varchar(50) NOT NULL,
  `pegawai_nohp` int(15) NOT NULL,
  `pegawai_ttl` varchar(100) NOT NULL,
  `pegawai_tmt_pns` varchar(100) NOT NULL,
  `pegawai_golongan` varchar(100) NOT NULL,
  `pegawai_pend_terakhir` varchar(100) NOT NULL,
  `pegawai_instansi_kerja` varchar(100) NOT NULL,
  `pegawai_unit_kerja` int(11) NOT NULL,
  `pegawai_unit_kerja_induk` varchar(100) NOT NULL,
  `pegawai_kedudukan` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`pegawai_id`, `user_id`, `pegawai_nama`, `pegawai_jabatan`, `pegawai_nip`, `pegawai_email`, `pegawai_nohp`, `pegawai_ttl`, `pegawai_tmt_pns`, `pegawai_golongan`, `pegawai_pend_terakhir`, `pegawai_instansi_kerja`, `pegawai_unit_kerja`, `pegawai_unit_kerja_induk`, `pegawai_kedudukan`) VALUES
(2, 2, 'Biro Perencanaan', '-', '1234', '', 0, '', '', '', '', '', 2, '', ''),
(3, 526, 'Ahmad Mulyana', '', '123', '', 0, '', '', '', '', '', 0, '', ''),
(4, 527, 'Pengesah Roren', '', '321', '', 0, '', '', '', '', '', 0, '', ''),
(5, 528, 'Pengesah Roum', '', '12344', '', 0, '', '', '', '', '', 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(100) NOT NULL,
  `pengumuman_gambar` varchar(100) NOT NULL,
  `pengumuman_isi` text NOT NULL,
  `pengumuman_tanggal` date NOT NULL,
  `pengumuman_penulis` varchar(50) NOT NULL,
  `pengumuman_alias` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_ip` varchar(20) NOT NULL,
  `pengunjung_tanggal` date NOT NULL,
  `pengunjung_hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`pengunjung_id`, `pengunjung_ip`, `pengunjung_tanggal`, `pengunjung_hits`) VALUES
(1, '::1', '2017-10-08', 10),
(2, '::1', '2017-10-10', 121),
(3, '::1', '2017-10-11', 112),
(4, '::1', '2017-10-12', 10),
(5, '::1', '2017-10-13', 56),
(6, '127.0.0.1', '2017-10-14', 1),
(7, '::1', '2017-10-15', 4),
(8, '::1', '2017-10-16', 17),
(9, '::1', '2017-10-19', 42),
(10, '::1', '2017-10-20', 1),
(11, '::1', '2017-10-22', 2),
(12, '::1', '2017-10-24', 15),
(13, '::1', '2017-10-25', 1),
(14, '::1', '2017-10-27', 1),
(15, '::1', '2017-10-29', 1),
(16, '::1', '2017-10-30', 16),
(17, '::1', '2017-11-01', 3),
(18, '::1', '2017-11-02', 6),
(19, '::1', '2017-11-03', 5),
(20, '::1', '2017-11-04', 11),
(21, '::1', '2017-11-05', 49),
(22, '::1', '2017-11-06', 21),
(23, '::1', '2017-11-09', 1),
(24, '::1', '2017-11-12', 1),
(25, '::1', '2017-11-13', 4),
(26, '::1', '2017-11-15', 1),
(27, '::1', '2017-11-19', 5),
(28, '::1', '2017-11-20', 2),
(29, '::1', '2017-11-24', 29),
(30, '127.0.0.1', '2017-11-26', 1),
(31, '::1', '2017-11-27', 116),
(32, '::1', '2017-11-28', 4),
(33, '127.0.0.1', '2017-12-14', 2),
(34, '::1', '2017-12-17', 1),
(35, '::1', '2017-12-19', 3);

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `penilaian_id` int(11) NOT NULL,
  `satker_kode` int(11) NOT NULL,
  `komponen_penilaian_id` int(11) NOT NULL,
  `komponen_penilaian_parenttop` int(11) NOT NULL,
  `komponen_penilaian_parent` int(11) NOT NULL,
  `komponen_penilaian_nama` varchar(250) NOT NULL,
  `komponen_penilaian_bobot` int(11) NOT NULL,
  `penilaian_nilai` int(10) NOT NULL,
  `sop_no` varchar(100) NOT NULL,
  `sop_alias` varchar(500) NOT NULL,
  `sop_nama` varchar(500) NOT NULL,
  `penilaian_tanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penyusun_sop`
--

CREATE TABLE `penyusun_sop` (
  `penyusun_sop` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `sop_alias` varchar(500) NOT NULL,
  `penyusun_tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penyusun_sop`
--

INSERT INTO `penyusun_sop` (`penyusun_sop`, `pegawai_id`, `sop_alias`, `penyusun_tanggal`) VALUES
(1, 2, '8971981357', '2017-12-19 22:32:32');

-- --------------------------------------------------------

--
-- Table structure for table `pertanyaan`
--

CREATE TABLE `pertanyaan` (
  `pertanyaan_id` int(11) NOT NULL,
  `pertanyaan_isi` varchar(200) NOT NULL,
  `pertanyaan_status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pertanyaan`
--

INSERT INTO `pertanyaan` (`pertanyaan_id`, `pertanyaan_isi`, `pertanyaan_status`) VALUES
(1, 'Pertanyaan 1', 'Y'),
(2, 'Pertanyaan 2', 'Y'),
(3, 'Pertanyaan 3', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `post_content`
--

CREATE TABLE `post_content` (
  `content_id` int(11) NOT NULL,
  `content_nama` varchar(100) NOT NULL,
  `content_isi` text NOT NULL,
  `content_menu` varchar(50) NOT NULL,
  `content_alias` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_content`
--

INSERT INTO `post_content` (`content_id`, `content_nama`, `content_isi`, `content_menu`, `content_alias`) VALUES
(1, 'Latar Belakang', '<p style="text-align: justify;">Ketentuan tentang tata cara penyusunan dan evaluasi Standard Operating Procedures di lingkungan Kementerian Sekretariat Negara telah diatur dalam Peraturan Menteri Sekretaris Negara Nomor 21 Tahun 2011 tentang Petunjuk Pelaksanaan Penyusunan dan Evaluasi Standard Operating Procedures Kementerian Sekretariat Negara Republik Indonesia. Dalam rangka menindaklanjuti Peraturan Menteri dimaksud telah ditetapkan Peraturan Menteri Sekretaris Negara Nomor 15 Tahun 2012 tentang Standard Operating Procedures Unit Kerja di Lingkungan Kementerian Sekretariat Negara.</p>\n\n<p style="text-align: justify;">Dengan telah ditetapkannya Peraturan Presiden Nomor 24 Tahun 2015 tentang Kementerian Sekretariat Negara dan Peraturan Menteri Sekretaris Negara Nomor 3 Tahun 2015 tentang Organisasi dan Tata Kerja Kementerian Sekretariat Negara sebagaimana telah diubah dengan Peraturan Menteri Sekretaris Negara Nomor 8 Tahun 2016 tentang Perubahan Atas Peraturan Menteri Sekretaris Negara Nomor 3 Tahun 2015 tentang Organisasi dan Tata Kerja Kementerian Sekretariat Negara yang menggantikan Peraturan Menteri Sekretaris Negara Nomor 2 Tahun 2011 tentang Organisasi dan Tata Kerja Kementerian Sekretariat Negara, penyebutan dan singkatan satuan organisasi/unit kerja yang diatur dalam Peraturan Menteri Sekretaris Negara Nomor 21 Tahun 2011 tentang Petunjuk Pelaksanaan Penyusunan dan Evaluasi Standard Operating Procedures Kementerian Sekretariat Negara Republik Indonesia perlu disesuaikan dengan perubahan organisasi Kementerian Sekretariat Negara.</p>\n\n<p style="text-align: justify;">Berdasarkan pertimbangan tersebut di atas, telah ditetapkan peraturan Menteri Sekretaris Negara Nomor 11 Tahun 2016 tentang petunjuk pelaksanaan Penyusunan dan evaluasi <em>Standard Operating Procedures </em>Kementerian Sekretaris Negara. Untuk mewujudkan keseragaman format SOP dan untuk efektifitas penyusunan SOP telah dibangun sistem penyusunan SOP secara elektronik.</p>\n', 'tentang_kami', 'latar-belakang'),
(2, 'Maksud dan Tujuan', '<p>Maksud penyusunan Petunjuk Pelaksanaan Penyusunan dan Evaluasi <em>Standard Operating Procedures </em>Kementerian Sekretariat Negara ini adalah sebagai acuan bagi para pejabat/pegawai di lingkungan Kementerian Sekretariat Negara dalam menyusun dan mengevaluasi SOP sesuai dengan tugas dan fungsi satuan organisasi/unit kerja serta Istana-istana Kepresidenan di daerah.</p>\n\n<p>Tujuan Petunjuk Pelaksanaan ini adalah tersusunnya <em>Standard</em> <em>Operating Procedures </em>Kementerian Sekretariat Negara yang baku, sehingga penyelenggaraan tugas dan fungsinya dapat dilaksanakan dengan efektif, efisien, transparan, dan akuntabel.</p>\n', 'tentang_kami', 'maksud-dan-tujuan'),
(3, 'Jadwal Kegiatan ', '<ol>\n	<li><span style="font-size:16px">Pemberitahuan oleh Biro Ortala-AK</span></li>\n	<li><span style="font-size:16px">Bimtek penggunaan aplikasi e-SOP kepada seluruh satuan organisasi/unit kerja</span></li>\n	<li><span style="font-size:16px">Penyusunan oleh masing-masing unit kerja</span></li>\n	<li><span style="font-size:16px">Reviu oleh admin Biro Ortala-AK</span></li>\n	<li><span style="font-size:16px">Pengesahan oleh pimpinan masing-masing unit kerja</span></li>\n	<li><span style="font-size:16px">Sosialisasi dan diseminasi</span></li>\n</ol>\n', 'agenda', 'jadwal-kegiatan-');

-- --------------------------------------------------------

--
-- Table structure for table `replay_diskusi`
--

CREATE TABLE `replay_diskusi` (
  `replay_diskusi_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `kategori_diskusi_id` int(11) NOT NULL,
  `diskusi_id` int(11) NOT NULL,
  `replay_diskusi_judul` varchar(200) NOT NULL,
  `replay_diskusi_isi` text NOT NULL,
  `replay_diskusi_quote` text NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `modified_on` datetime NOT NULL,
  `modified_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replay_diskusi`
--

INSERT INTO `replay_diskusi` (`replay_diskusi_id`, `user_id`, `kategori_diskusi_id`, `diskusi_id`, `replay_diskusi_judul`, `replay_diskusi_isi`, `replay_diskusi_quote`, `created_on`, `created_by`, `modified_on`, `modified_by`) VALUES
(1, 4468, 1, 2, 'Re: judul', '<p>isi replay</p>\n', '', '2017-06-04 14:32:27', 'admin', '0000-00-00 00:00:00', ''),
(2, 4468, 1, 2, 'Re: judul', '<p>isi apa maksud loh ??</p>\n', '<div class=header-quote>\n			<img src=http://localhost/e-sop/assets/images/quote.png> admin wrote:\n		</div>\n		<div class=body-quote>\n			<p>isi replay</p>\n\n		</div>', '2017-06-04 15:45:31', 'admin', '0000-00-00 00:00:00', ''),
(3, 4468, 1, 2, 'Re: judul', '<p>judul aja</p>\n', '', '2017-06-06 16:36:36', 'admin', '0000-00-00 00:00:00', ''),
(4, 4468, 3, 4, 'Re: ccccc', '<p>ddddd</p>\n', '', '2017-07-04 15:15:11', 'admin', '0000-00-00 00:00:00', ''),
(5, 4468, 3, 5, 'Re: ABCDE', '<p>fghij</p>\n', '', '2017-07-04 15:45:50', 'admin', '0000-00-00 00:00:00', ''),
(6, 4502, 1, 6, 'Re: Saya Dari Bagian 3', '<p>perkenalkan nama saya Galgadot&nbsp; wonder woman</p>\n', '', '2017-07-13 14:12:16', 'Kasubbagsspk', '0000-00-00 00:00:00', ''),
(19, 4498, 1, 6, 'Re: Saya Dari Bagian 3', '<p>Galgadot&nbsp; wonder woman itu dari mana ?</p>\n', '<div class=header-quote>\n			<img src=http://localhost/e-sop/assets/images/quote.png> Kasubbagsspk wrote:\n		</div>\n		<div class=body-quote>\n			<p>perkenalkan nama saya Galgadot  wonder woman</p>\n\n		</div>', '2017-07-13 14:15:47', 'Kasubbagpojab2', '0000-00-00 00:00:00', ''),
(20, 4502, 1, 6, 'Re: Saya Dari Bagian 3', '<p>dari kampung sawah pakkkkkk... masa ga tau sie...</p>\n', '<div class=header-quote>\n			<img src=http://10.2.40.159/e-sop/assets/images/quote.png> Kasubbagpojab2 wrote:\n		</div>\n		<div class=body-quote>\n			<p>Galgadot  wonder woman itu dari mana ?</p>\n\n		</div>', '2017-07-13 14:16:55', 'Kasubbagsspk', '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `revisi`
--

CREATE TABLE `revisi` (
  `revisi_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sop_alias` varchar(100) NOT NULL,
  `sop_revisi_alias` varchar(100) NOT NULL,
  `revisi_catatan` text NOT NULL,
  `revisi_catatan_admin` text NOT NULL,
  `revisi_status` enum('pending','ditolak','diterima') NOT NULL,
  `revisi_tanggal` date NOT NULL,
  `revisi_tanggal_tindakan` date NOT NULL,
  `revisi_selesai` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reviu`
--

CREATE TABLE `reviu` (
  `reviu_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sop_alias` varchar(100) NOT NULL,
  `reviu_catatan` text NOT NULL,
  `reviu_status` enum('pending','ditolak','diterima') NOT NULL,
  `reviu_tanggal` date NOT NULL,
  `reviu_tanggal_tindakan` date NOT NULL,
  `reviu_selesai` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `satuan_organisasi`
--

CREATE TABLE `satuan_organisasi` (
  `satuan_organisasi_id` int(11) NOT NULL,
  `satuan_organisasi_nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `satuan_organisasi`
--

INSERT INTO `satuan_organisasi` (`satuan_organisasi_id`, `satuan_organisasi_nama`) VALUES
(1, 'Sekretariat Kementerian'),
(2, 'Sekretariat Presiden'),
(3, 'Sekretariat Wakil Presiden'),
(4, 'Sekretariat Militer Presiden'),
(5, 'Deputi Bidang Hukum Dan Perundang-Undangan'),
(6, 'Deputi Bidang Hubungan Kelembagaan Dan Kemasyarakatan'),
(7, 'Deputi Bidang Administrasi Aparatur'),
(8, '-');

-- --------------------------------------------------------

--
-- Table structure for table `simbol`
--

CREATE TABLE `simbol` (
  `simbol_id` int(11) NOT NULL,
  `simbol_nama` varchar(100) NOT NULL,
  `simbol_img` varchar(100) NOT NULL,
  `simbol_margin` varchar(500) NOT NULL,
  `simbol_img_pdf` varchar(100) NOT NULL,
  `simbol_margin_pdf` varchar(500) NOT NULL,
  `simbol_margin_pdf_decision` varchar(500) NOT NULL,
  `simbol_status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simbol`
--

INSERT INTO `simbol` (`simbol_id`, `simbol_nama`, `simbol_img`, `simbol_margin`, `simbol_img_pdf`, `simbol_margin_pdf`, `simbol_margin_pdf_decision`, `simbol_status`) VALUES
(1, '1-2', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(3, '2-1', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(177, '1-1', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(178, '1-3', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(179, '3-1', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(180, '1-4', '1-4.png', 'margin-top:-126px; margin-left:-134px', '1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(181, '4-1', '4-1.png', 'margin-top:-126px; margin-left:-15px', '4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(182, '1-5', '1-5.png', 'margin-top:-126px; margin-left:-174px', '1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(183, '5-1', '5-1.png', 'margin-top:-126px; margin-left:-15px', '5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(184, '6-1', '6-1.png', 'margin-top:-126px; margin-left:-15px', '6-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(185, '7-1', '7-1.png', 'margin-top:-126px; margin-left:-15px', '7-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(186, '8-1', '8-1.png', 'margin-top:-126px; margin-left:-15px', '8-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(187, '9-1', '9-1.png', 'margin-top:-126px; margin-left:-15px', '9-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(188, '10-1', '10-1.png', 'margin-top:-126px; margin-left:-15px', '10-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(189, '11-1', '11-1.png', 'margin-top:-126px; margin-left:-15px', '11-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(190, '12-1', '12-1.png', 'margin-top:-126px; margin-left:-15px', '12-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(191, '13-1', '13-1.png', 'margin-top:-126px; margin-left:-15px', '13-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(192, '14-1', '14-1.png', 'margin-top:-126px; margin-left:-15px', '14-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(193, '15-1', '15-1.png', 'margin-top:-126px; margin-left:-15px', '15-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(194, '1-6', '1-6.png', 'margin-top:-126px; margin-left:-214px', '1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(195, '1-7', '1-7.png', 'margin-top:-126px; margin-left:-254px', '1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(196, '1-8', '1-8.png', 'margin-top:-126px; margin-left:-294px', '1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(197, '1-9', '1-9.png', 'margin-top:-126px; margin-left:-334px', '1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(198, '1-10', '1-10.png', 'margin-top:-126px; margin-left:-374px', '1-10.png', 'margin-top:-126px; margin-left:-374px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(199, '1-11', '1-11.png', 'margin-top:-126px; margin-left:-414px', '1-11.png', 'margin-top:-126px; margin-left:-414px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(200, '1-12', '1-12.png', 'margin-top:-126px; margin-left:-454px', '1-12.png', 'margin-top:-126px; margin-left:-454px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(201, '1-13', '1-13.png', 'margin-top:-126px; margin-left:-494px', '1-13.png', 'margin-top:-126px; margin-left:-494px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(202, '1-14', '1-14.png', 'margin-top:-126px; margin-left:-534px', '1-14.png', 'margin-top:-126px; margin-left:-534px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(203, '1-15', '1-15.png', 'margin-top:-126px; margin-left:-574px', '1-15.png', 'margin-top:-126px; margin-left:-574px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(204, '2-2', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(205, '3-3', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(206, '4-4', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(207, '5-5', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(208, '6-6', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(209, '7-7', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(210, '8-8', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(211, '9-9', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(212, '10-10', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(213, '11-11', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(214, '12-12', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(215, '13-13', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(216, '14-14', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(217, '15-15', '1-1.png', 'margin-top:-126px; margin-left:-15px', '1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(218, '2-3', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(219, '3-4', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(220, '4-5', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(221, '5-6', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(222, '6-7', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(223, '7-8', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(224, '8-9', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(225, '9-10', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(226, '10-11', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(227, '11-12', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(228, '12-13', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(229, '13-14', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(230, '14-15', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(231, '2-4', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(232, '2-5', '1-4.png', 'margin-top:-126px; margin-left:-134px', '1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(233, '2-6', '1-5.png', 'margin-top:-126px; margin-left:-174px', '1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(234, '2-7', '1-6.png', 'margin-top:-126px; margin-left:-214px', '1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(235, '2-8', '1-7.png', 'margin-top:-126px; margin-left:-254px', '1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(236, '2-9', '1-8.png', 'margin-top:-126px; margin-left:-294px', '1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(237, '2-10', '1-9.png', 'margin-top:-126px; margin-left:-334px', '1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(238, '2-11', '1-10.png', 'margin-top:-126px; margin-left:-374px', '1-10.png', 'margin-top:-126px; margin-left:-374px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(239, '2-12', '1-11.png', 'margin-top:-126px; margin-left:-414px', '1-11.png', 'margin-top:-126px; margin-left:-414px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(240, '2-13', '1-12.png', 'margin-top:-126px; margin-left:-454px', '1-12.png', 'margin-top:-126px; margin-left:-454px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(241, '2-14', '1-13.png', 'margin-top:-126px; margin-left:-494px', '1-13.png', 'margin-top:-126px; margin-left:-494px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(242, '2-15', '1-14.png', 'margin-top:-126px; margin-left:-534px', '1-14.png', 'margin-top:-126px; margin-left:-534px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(243, '3-2', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(244, '3-4', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(245, '3-5', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(246, '3-6', '1-4.png', 'margin-top:-126px; margin-left:-134px', '1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(247, '3-7', '1-5.png', 'margin-top:-126px; margin-left:-174px', '1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(248, '3-8', '1-6.png', 'margin-top:-126px; margin-left:-214px', '1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(249, '3-9', '1-7.png', 'margin-top:-126px; margin-left:-254px', '1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(250, '3-10', '1-8.png', 'margin-top:-126px; margin-left:-294px', '1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(251, '3-11', '1-9.png', 'margin-top:-126px; margin-left:-334px', '1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(252, '3-12', '1-10.png', 'margin-top:-126px; margin-left:-374px', '1-10.png', 'margin-top:-126px; margin-left:-374px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(253, '3-13', '1-11.png', 'margin-top:-126px; margin-left:-414px', '1-11.png', 'margin-top:-126px; margin-left:-414px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(254, '3-14', '1-12.png', 'margin-top:-126px; margin-left:-454px', '1-12.png', 'margin-top:-126px; margin-left:-454px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(255, '3-15', '1-13.png', 'margin-top:-126px; margin-left:-494px', '1-13.png', 'margin-top:-126px; margin-left:-494px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(269, '4-2', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(270, '4-3', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(271, '4-5', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(272, '4-6', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(273, '4-7', '1-4.png', 'margin-top:-126px; margin-left:-134px', '1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(274, '4-8', '1-5.png', 'margin-top:-126px; margin-left:-174px', '1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(275, '4-9', '1-6.png', 'margin-top:-126px; margin-left:-214px', '1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(276, '4-10', '1-7.png', 'margin-top:-126px; margin-left:-254px', '1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(277, '4-11', '1-8.png', 'margin-top:-126px; margin-left:-294px', '1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(278, '4-12', '1-9.png', 'margin-top:-126px; margin-left:-334px', '1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(279, '4-13', '1-10.png', 'margin-top:-126px; margin-left:-374px', '1-10.png', 'margin-top:-126px; margin-left:-374px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(280, '4-14', '1-11.png', 'margin-top:-126px; margin-left:-414px', '1-11.png', 'margin-top:-126px; margin-left:-414px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(281, '4-15', '1-12.png', 'margin-top:-126px; margin-left:-454px', '1-12.png', 'margin-top:-126px; margin-left:-454px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(282, '5-2', '4-1.png', 'margin-top:-126px; margin-left:-15px', '4-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(283, '5-3', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(284, '5-4', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(285, '5-6', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(286, '5-7', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(287, '5-8', '1-4.png', 'margin-top:-126px; margin-left:-134px', '1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(288, '5-9', '1-5.png', 'margin-top:-126px; margin-left:-174px', '1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(289, '5-10', '1-6.png', 'margin-top:-126px; margin-left:-214px', '1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(290, '5-11', '1-7.png', 'margin-top:-126px; margin-left:-254px', '1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(291, '5-12', '1-8.png', 'margin-top:-126px; margin-left:-294px', '1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(292, '5-13', '1-9.png', 'margin-top:-126px; margin-left:-334px', '1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(293, '5-14', '1-10.png', 'margin-top:-126px; margin-left:-374px', '1-10.png', 'margin-top:-126px; margin-left:-374px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(294, '5-15', '1-11.png', 'margin-top:-126px; margin-left:-414px', '1-11.png', 'margin-top:-126px; margin-left:-414px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(295, '6-2', '5-1.png', 'margin-top:-126px; margin-left:-15px', '5-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(296, '6-3', '4-1.png', 'margin-top:-126px; margin-left:-15px', '4-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(297, '6-4', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(298, '6-5', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(299, '6-7', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(300, '6-8', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(301, '6-9', '1-4.png', 'margin-top:-126px; margin-left:-134px', '1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(302, '6-10', '1-5.png', 'margin-top:-126px; margin-left:-174px', '1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(303, '6-11', '1-6.png', 'margin-top:-126px; margin-left:-214px', '1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(304, '6-12', '1-7.png', 'margin-top:-126px; margin-left:-254px', '1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(305, '6-13', '1-8.png', 'margin-top:-126px; margin-left:-294px', '1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(306, '6-14', '1-9.png', 'margin-top:-126px; margin-left:-334px', '1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(307, '6-15', '1-10.png', 'margin-top:-126px; margin-left:-374px', '1-10.png', 'margin-top:-126px; margin-left:-374px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(308, '7-2', '6-1.png', 'margin-top:-126px; margin-left:-15px', '6-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(309, '7-3', '5-1.png', 'margin-top:-126px; margin-left:-15px', '5-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(310, '7-4', '4-1.png', 'margin-top:-126px; margin-left:-15px', '4-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(311, '7-5', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(312, '7-6', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(313, '7-8', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(314, '7-9', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(315, '7-10', '1-4.png', 'margin-top:-126px; margin-left:-134px', '1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(316, '7-11', '1-5.png', 'margin-top:-126px; margin-left:-174px', '1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(317, '7-12', '1-6.png', 'margin-top:-126px; margin-left:-214px', '1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(318, '7-13', '1-7.png', 'margin-top:-126px; margin-left:-254px', '1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(319, '7-14', '1-8.png', 'margin-top:-126px; margin-left:-294px', '1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(320, '7-15', '1-9.png', 'margin-top:-126px; margin-left:-334px', '1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(321, '8-2', '7-1.png', 'margin-top:-126px; margin-left:-15px', '7-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(322, '8-3', '6-1.png', 'margin-top:-126px; margin-left:-15px', '6-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(323, '8-4', '5-1.png', 'margin-top:-126px; margin-left:-15px', '5-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(324, '8-5', '4-1.png', 'margin-top:-126px; margin-left:-15px', '4-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(325, '8-6', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(326, '8-7', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(327, '8-9', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(328, '8-10', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(329, '8-11', '1-4.png', 'margin-top:-126px; margin-left:-134px', '1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(330, '8-12', '1-5.png', 'margin-top:-126px; margin-left:-174px', '1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(331, '8-13', '1-6.png', 'margin-top:-126px; margin-left:-214px', '1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(332, '8-14', '1-7.png', 'margin-top:-126px; margin-left:-254px', '1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(333, '8-15', '1-8.png', 'margin-top:-126px; margin-left:-294px', '1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(334, '9-2', '8-1.png', 'margin-top:-126px; margin-left:-15px', '8-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(335, '9-3', '7-1.png', 'margin-top:-126px; margin-left:-15px', '7-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(336, '9-4', '6-1.png', 'margin-top:-126px; margin-left:-15px', '6-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(337, '9-5', '5-1.png', 'margin-top:-126px; margin-left:-15px', '5-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(338, '9-6', '4-1.png', 'margin-top:-126px; margin-left:-15px', '4-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(339, '9-7', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(340, '9-8', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(341, '9-10', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(342, '9-11', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(343, '9-12', '1-4.png', 'margin-top:-126px; margin-left:-134px', '1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(344, '9-13', '1-5.png', 'margin-top:-126px; margin-left:-174px', '1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(345, '9-14', '1-6.png', 'margin-top:-126px; margin-left:-214px', '1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(346, '9-15', '1-7.png', 'margin-top:-126px; margin-left:-254px', '1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(347, '10-2', '9-1.png', 'margin-top:-126px; margin-left:-15px', '9-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(348, '10-3', '8-1.png', 'margin-top:-126px; margin-left:-15px', '8-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(349, '10-4', '7-1.png', 'margin-top:-126px; margin-left:-15px', '7-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(350, '10-5', '6-1.png', 'margin-top:-126px; margin-left:-15px', '6-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(351, '10-6', '5-1.png', 'margin-top:-126px; margin-left:-15px', '5-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(352, '10-7', '4-1.png', 'margin-top:-126px; margin-left:-15px', '4-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(353, '10-8', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(354, '10-9', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(355, '10-11', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(356, '10-12', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(357, '10-13', '1-4.png', 'margin-top:-126px; margin-left:-134px', '1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(358, '10-14', '1-5.png', 'margin-top:-126px; margin-left:-174px', '1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(359, '10-15', '1-6.png', 'margin-top:-126px; margin-left:-214px', '1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(360, '11-2', '10-1.png', 'margin-top:-126px; margin-left:-15px', '10-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(361, '11-3', '9-1.png', 'margin-top:-126px; margin-left:-15px', '9-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(362, '11-4', '8-1.png', 'margin-top:-126px; margin-left:-15px', '8-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(363, '11-5', '7-1.png', 'margin-top:-126px; margin-left:-15px', '7-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(364, '11-6', '6-1.png', 'margin-top:-126px; margin-left:-15px', '6-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(365, '11-7', '5-1.png', 'margin-top:-126px; margin-left:-15px', '5-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(366, '11-8', '4-1.png', 'margin-top:-126px; margin-left:-15px', '4-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(367, '11-9', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(368, '11-10', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(369, '11-12', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(370, '11-13', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(371, '11-14', '1-4.png', 'margin-top:-126px; margin-left:-134px', '1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(372, '11-15', '1-5.png', 'margin-top:-126px; margin-left:-174px', '1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(373, '12-2', '11-1.png', 'margin-top:-126px; margin-left:-15px', '11-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(374, '12-3', '10-1.png', 'margin-top:-126px; margin-left:-15px', '10-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(375, '12-4', '9-1.png', 'margin-top:-126px; margin-left:-15px', '9-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(376, '12-3', '8-1.png', 'margin-top:-126px; margin-left:-15px', '8-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(377, '12-4', '7-1.png', 'margin-top:-126px; margin-left:-15px', '7-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(378, '12-7', '6-1.png', 'margin-top:-126px; margin-left:-15px', '6-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(379, '12-8', '5-1.png', 'margin-top:-126px; margin-left:-15px', '5-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(380, '12-9', '4-1.png', 'margin-top:-126px; margin-left:-15px', '4-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(381, '12-10', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(382, '12-11', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(383, '12-13', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(384, '12-14', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(385, '12-15', '1-4.png', 'margin-top:-126px; margin-left:-134px', '1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(386, '13-2', '12-1.png', 'margin-top:-126px; margin-left:-15px', '12-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(387, '13-3', '11-1.png', 'margin-top:-126px; margin-left:-15px', '11-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(388, '13-4', '10-1.png', 'margin-top:-126px; margin-left:-15px', '10-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(389, '13-5', '9-1.png', 'margin-top:-126px; margin-left:-15px', '9-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(390, '13-6', '8-1.png', 'margin-top:-126px; margin-left:-15px', '8-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(391, '13-7', '7-1.png', 'margin-top:-126px; margin-left:-15px', '7-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(392, '13-8', '6-1.png', 'margin-top:-126px; margin-left:-15px', '6-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(393, '13-9', '5-1.png', 'margin-top:-126px; margin-left:-15px', '5-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(394, '13-10', '4-1.png', 'margin-top:-126px; margin-left:-15px', '4-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(395, '13-11', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(396, '13-12', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(397, '13-14', '1-2.png', 'margin-top:-126px; margin-left:-53px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(398, '13-15', '1-3.png', 'margin-top:-126px; margin-left:-94px', '1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(399, '14-2', '13-1.png', 'margin-top:-126px; margin-left:-15px', '13-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(400, '14-3', '12-1.png', 'margin-top:-126px; margin-left:-15px', '12-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(401, '14-4', '11-1.png', 'margin-top:-126px; margin-left:-15px', '11-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(402, '14-5', '10-1.png', 'margin-top:-126px; margin-left:-15px', '10-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(403, '14-6', '9-1.png', 'margin-top:-126px; margin-left:-15px', '9-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(404, '14-7', '8-1.png', 'margin-top:-126px; margin-left:-15px', '8-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(405, '14-8', '7-1.png', 'margin-top:-126px; margin-left:-15px', '7-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(406, '14-9', '6-1.png', 'margin-top:-126px; margin-left:-15px', '6-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(407, '14-10', '5-1.png', 'margin-top:-126px; margin-left:-15px', '5-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(408, '14-11', '4-1.png', 'margin-top:-126px; margin-left:-15px', '4-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(409, '14-12', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(410, '14-13', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(411, '15-2', '14-1.png', 'margin-top:-126px; margin-left:-15px', '14-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(412, '15-3', '13-1.png', 'margin-top:-126px; margin-left:-15px', '13-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(413, '15-4', '12-1.png', 'margin-top:-126px; margin-left:-15px', '12-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(414, '15-5', '11-1.png', 'margin-top:-126px; margin-left:-15px', '11-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(415, '15-6', '10-1.png', 'margin-top:-126px; margin-left:-15px', '10-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(416, '15-7', '9-1.png', 'margin-top:-126px; margin-left:-15px', '9-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(417, '15-8', '8-1.png', 'margin-top:-126px; margin-left:-15px', '8-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(418, '15-9', '7-1.png', 'margin-top:-126px; margin-left:-15px', '7-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(419, '15-10', '6-1.png', 'margin-top:-126px; margin-left:-15px', '6-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(420, '15-11', '5-1.png', 'margin-top:-126px; margin-left:-15px', '5-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(421, '15-12', '4-1.png', 'margin-top:-126px; margin-left:-15px', '4-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(422, '15-13', '3-1.png', 'margin-top:-126px; margin-left:-15px', '3-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(423, '15-14', '2-1.png', 'margin-top:-126px; margin-left:-15px', '2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(424, '1-1,2', '1-1,2.png', 'margin-top:-126px; margin-left:-15px', '1-1,2.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(425, '1-1,2,3', '1-1,2,3.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(426, '1-1,2,3,4', '1-1,2,3,4.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3,4.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(427, '1-1,2,3,4,5', '1-1,2,3,4,5.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3,4,5.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(428, '1-1,2,3,4,5,6', '1-1,2,3,4,5,6.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3,4,5,6.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(429, '1-1,2,3,4,5,6,7', '1-1,2,3,4,5,6,7.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3,4,5,6,7.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(430, '1-1,2,3,4,5,6,7,8', '1-1,2,3,4,5,6,7,8.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3,4,5,6,7,8.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(431, '1-1,2,3,4,5,6,7,8,9', '1-1,2,3,4,5,6,7,8,9.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3,4,5,6,7,8,9.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(432, '1-1,2,3,4,5,6,7,8,9,10', '1-1,2,3,4,5,6,7,8,9,10.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3,4,5,6,7,8,9,10.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(433, '1-1,2,3,4,5,6,7,8,9,10,11', '1-1,2,3,4,5,6,7,8,9,10,11.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3,4,5,6,7,8,9,10,11.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(434, '1-1,2,3,4,5,6,7,8,9,10,11,12', '1-1,2,3,4,5,6,7,8,9,10,11,12.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3,4,5,6,7,8,9,10,11,12.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(435, '1-1,2,3,4,5,6,7,8,9,10,11,12,13', '1-1,2,3,4,5,6,7,8,9,10,11,12,13.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3,4,5,6,7,8,9,10,11,12,13.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(436, '1-1,2,3,4,5,6,7,8,9,10,11,12,13,14', '1-1,2,3,4,5,6,7,8,9,10,11,12,13,14.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3,4,5,6,7,8,9,10,11,12,13,14.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(437, '1-1,2,3,4,5,6,7,8,9,10,11,12,13,14,15', '1-1,2,3,4,5,6,7,8,9,10,11,12,13,14,15.png', 'margin-top:-126px; margin-left:-15px', '1-1,2,3,4,5,6,7,8,9,10,11,12,13,14,15.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(438, '1,2-1', '1,2-1.png', 'margin-top:-126px; margin-left:-15px', '1,2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(439, '1,2,3-1', '1,2-1.png', 'margin-top:-126px; margin-left:-15px', '1,2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(440, '1,2,3,4-1', '1,2,3,4-1.png', 'margin-top:-126px; margin-left:-15px', '1,2,3,4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(441, '1,2,3,4,5-1', '1,2,3,4,5-1.png', 'margin-top:-126px; margin-left:-15px', '1,2,3,4,5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(442, '1,2,3,4,5,6-1', '1,2,3,4,5,6-1.png', 'margin-top:-126px; margin-left:-15px', '1,2,3,4,5,6-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(443, '1,2,3,4,5,6,7-1', '1,2,3,4,5,6,7-1.png', 'margin-top:-126px; margin-left:-15px', '1,2,3,4,5,6,7-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(444, '1,2,3,4,5,6,7,8-1', '1,2,3,4,5,6,7,8-1.png', 'margin-top:-126px; margin-left:-15px', '1,2,3,4,5,6,7,8-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(445, '1,2,3,4,5,6,7,8,9-1', '1,2,3,4,5,6,7,8,9-1.png', 'margin-top:-126px; margin-left:-15px', '1,2,3,4,5,6,7,8,9-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(446, '1,2,3,4,5,6,7,8,9,10-1', '1,2,3,4,5,6,7,8,9,10-1.png', 'margin-top:-126px; margin-left:-15px', '1,2,3,4,5,6,7,8,9,10-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(447, '1,2,3,4,5,6,7,8,9,10,11-1', '1,2,3,4,5,6,7,8,9,10,11-1.png', 'margin-top:-126px; margin-left:-15px', '1,2,3,4,5,6,7,8,9,10,11-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(448, '1,2,3,4,5,6,7,8,9,10,11,12-1', '1,2,3,4,5,6,7,8,9,10,11,12-1.png', 'margin-top:-126px; margin-left:-15px', '1,2,3,4,5,6,7,8,9,10,11,12-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(449, '1,2,3,4,5,6,7,8,9,10,11,12,13-1', '1,2,3,4,5,6,7,8,9,10,11,12,13-1.png', 'margin-top:-126px; margin-left:-15px', '1,2,3,4,5,6,7,8,9,10,11,12,13-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(450, '1,2,3,4,5,6,7,8,9,10,11,12,13,14-1', '1,2,3,4,5,6,7,8,9,10,11,12,13,14-1.png', 'margin-top:-126px; margin-left:-15px', '1,2,3,4,5,6,7,8,9,10,11,12,13,14-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(451, '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15-1', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15-1.png', 'margin-top:-126px; margin-left:-15px', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(452, 'd-y-1-2', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(453, 'd-y-1-1', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(454, 'd-y-1-3', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(455, 'd-y-1-4', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(456, 'd-y-1-5', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(457, 'd-y-1-6', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(458, 'd-y-1-7', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(459, 'd-y-1-8', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(460, 'd-y-1-9', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(461, 'd-y-1-10', 'd-y-1-10.png', 'margin-top:-126px; margin-left:-374px', 'd-y-1-10.png', 'margin-top:-126px; margin-left:-374px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(462, 'd-y-1-11', 'd-y-1-11.png', 'margin-top:-126px; margin-left:-414px', 'd-y-1-11.png', 'margin-top:-126px; margin-left:-414px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(463, 'd-y-1-12', 'd-y-1-12.png', 'margin-top:-126px; margin-left:-454px', 'd-y-1-12.png', 'margin-top:-126px; margin-left:-454px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(464, 'd-y-1-13', 'd-y-1-13.png', 'margin-top:-126px; margin-left:-494px', 'd-y-1-13.png', 'margin-top:-126px; margin-left:-494px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(465, 'd-y-1-14', 'd-y-1-14.png', 'margin-top:-126px; margin-left:-534px', 'd-y-1-14.png', 'margin-top:-126px; margin-left:-534px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(466, 'd-y-1-15', 'd-y-1-15.png', 'margin-top:-126px; margin-left:-574px', 'd-y-1-15.png', 'margin-top:-126px; margin-left:-574px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(467, 'd-y-2-1', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', '', 'Y'),
(468, 'd-y-3-1', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(469, 'd-y-4-1', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(470, 'd-y-5-1', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(471, 'd-y-6-1', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(472, 'd-y-7-1', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(473, 'd-y-8-1', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(474, 'd-y-9-1', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(475, 'd-y-10-1', 'd-y-10-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-10-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(476, 'd-y-11-1', 'd-y-11-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-11-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(477, 'd-y-12-1', 'd-y-12-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-12-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(478, 'd-y-13-1', 'd-y-13-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-13-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(479, 'd-y-14-1', 'd-y-14-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-14-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(480, 'd-y-15-1', 'd-y-15-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-15-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(481, 'd-t-1-2', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', '', 'Y'),
(482, 'd-t-1-1', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(483, 'd-t-1-3', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-80px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-80px', '', 'Y'),
(496, 'd-t-1-4', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-120px', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-120px', '', 'Y'),
(497, 'd-t-1-5', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-160px', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-160px', '', 'Y'),
(498, 'd-t-1-6', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-200px', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-200px', '', 'Y'),
(499, 'd-t-1-7', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-240px', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-240px', '', 'Y'),
(500, 'd-t-1-8', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-280px', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-280px', '', 'Y'),
(501, 'd-t-1-9', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-320px', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-320px', '', 'Y'),
(502, 'd-t-1-10', 'd-t-1-10.png', 'margin-top:-135px; margin-left:-360px', 'd-t-1-10.png', 'margin-top:-135px; margin-left:-360px', '', 'Y'),
(503, 'd-t-1-11', 'd-t-1-11.png', 'margin-top:-135px; margin-left:-400px', 'd-t-1-11.png', 'margin-top:-135px; margin-left:-400px', '', 'Y'),
(504, 'd-t-1-12', 'd-t-1-12.png', 'margin-top:-135px; margin-left:-440px', 'd-t-1-12.png', 'margin-top:-135px; margin-left:-440px', '', 'Y'),
(505, 'd-t-1-13', 'd-t-1-13.png', 'margin-top:-135px; margin-left:-480px', 'd-t-1-13.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(506, 'd-t-1-14', 'd-t-1-14.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-14.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(507, 'd-t-1-15', 'd-t-1-15.png', 'margin-top:-135px; margin-left:-560px', 'd-t-1-15.png', 'margin-top:-135px; margin-left:-560px', '', 'Y'),
(522, 'd-t-2-2', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(523, 'd-t-3-3', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(524, 'd-t-4-4', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(525, 'd-t-5-5', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(526, 'd-t-6-6', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(527, 'd-t-7-7', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(528, 'd-t-8-8', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(529, 'd-t-9-9', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(530, 'd-t-10-10', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(531, 'd-t-11-11', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(532, 'd-t-12-12', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(533, 'd-t-13-13', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(534, 'd-t-14-14', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(535, 'd-t-15-15', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'd-t-1-1.png', 'margin-top:-135px; margin-left:-11px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(575, 'd-t-2-3', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', '', 'Y'),
(576, 'd-t-2-4', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-80px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-80px', '', 'Y'),
(577, 'd-t-2-5', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-120px', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-120px', '', 'Y');
INSERT INTO `simbol` (`simbol_id`, `simbol_nama`, `simbol_img`, `simbol_margin`, `simbol_img_pdf`, `simbol_margin_pdf`, `simbol_margin_pdf_decision`, `simbol_status`) VALUES
(578, 'd-t-2-6', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-160px', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-160px', '', 'Y'),
(579, 'd-t-2-7', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-200px', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-200px', '', 'Y'),
(580, 'd-t-2-8', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-240px', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-240px', '', 'Y'),
(581, 'd-t-2-9', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-280px', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-280px', '', 'Y'),
(582, 'd-t-2-10', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-320px', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-320px', '', 'Y'),
(583, 'd-t-2-11', 'd-t-1-10.png', 'margin-top:-135px; margin-left:-360px', 'd-t-1-10.png', 'margin-top:-135px; margin-left:-360px', '', 'Y'),
(584, 'd-t-2-12', 'd-t-1-11.png', 'margin-top:-135px; margin-left:-400px', 'd-t-1-11.png', 'margin-top:-135px; margin-left:-400px', '', 'Y'),
(585, 'd-t-2-13', 'd-t-1-12.png', 'margin-top:-135px; margin-left:-440px', 'd-t-1-12.png', 'margin-top:-135px; margin-left:-440px', '', 'Y'),
(586, 'd-t-2-14', 'd-t-1-13.png', 'margin-top:-135px; margin-left:-480px', 'd-t-1-13.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(587, 'd-t-2-15', 'd-t-1-14.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-14.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(588, 'd-t-2-1', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(589, 'd-t-3-1', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(590, 'd-t-3-2', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(591, 'd-t-3-4', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-80px', '', 'Y'),
(592, 'd-t-3-5', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-120px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-120px', '', 'Y'),
(593, 'd-t-3-6', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-160px', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-160px', '', 'Y'),
(594, 'd-t-3-7', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-200px', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-200px', '', 'Y'),
(595, 'd-t-3-8', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-240px', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-240px', '', 'Y'),
(596, 'd-t-3-9', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-280px', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-280px', '', 'Y'),
(597, 'd-t-3-10', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-320px', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-320px', '', 'Y'),
(598, 'd-t-3-11', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-360px', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-360px', '', 'Y'),
(599, 'd-t-3-12', 'd-t-1-10.png', 'margin-top:-135px; margin-left:-400px', 'd-t-1-10.png', 'margin-top:-135px; margin-left:-400px', '', 'Y'),
(600, 'd-t-3-13', 'd-t-1-11.png', 'margin-top:-135px; margin-left:-440px', 'd-t-1-11.png', 'margin-top:-135px; margin-left:-440px', '', 'Y'),
(601, 'd-t-3-14', 'd-t-1-12.png', 'margin-top:-135px; margin-left:-480px', 'd-t-1-12.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(602, 'd-t-3-15', 'd-t-1-13.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-13.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(603, 'd-t-4-1', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(604, 'd-t-4-2', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(605, 'd-t-4-3', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(606, 'd-t-4-5', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-120px', '', 'Y'),
(607, 'd-t-4-6', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-160px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-160px', '', 'Y'),
(608, 'd-t-4-7', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-200px', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-200px', '', 'Y'),
(609, 'd-t-4-8', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-240px', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-240px', '', 'Y'),
(610, 'd-t-4-9', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-280px', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-280px', '', 'Y'),
(611, 'd-t-4-10', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-320px', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-320px', '', 'Y'),
(612, 'd-t-4-11', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-360px', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-360px', '', 'Y'),
(613, 'd-t-4-12', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-400px', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-400px', '', 'Y'),
(614, 'd-t-4-13', 'd-t-1-10.png', 'margin-top:-135px; margin-left:-440px', 'd-t-1-10.png', 'margin-top:-135px; margin-left:-440px', '', 'Y'),
(615, 'd-t-4-14', 'd-t-1-11.png', 'margin-top:-135px; margin-left:-480px', 'd-t-1-11.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(616, 'd-t-4-15', 'd-t-1-12.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-12.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(617, 'd-t-5-1', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(618, 'd-t-5-2', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(619, 'd-t-5-3', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(620, 'd-t-5-4', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(621, 'd-t-5-6', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-160px', '', 'Y'),
(622, 'd-t-5-7', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-200px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-200px', '', 'Y'),
(623, 'd-t-5-8', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-240px', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-240px', '', 'Y'),
(624, 'd-t-5-9', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-280px', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-280px', '', 'Y'),
(625, 'd-t-5-10', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-320px', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-320px', '', 'Y'),
(626, 'd-t-5-11', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-360px', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-360px', '', 'Y'),
(627, 'd-t-5-12', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-400px', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-400px', '', 'Y'),
(628, 'd-t-5-13', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-440px', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-440px', '', 'Y'),
(629, 'd-t-5-14', 'd-t-1-10.png', 'margin-top:-135px; margin-left:-480px', 'd-t-1-10.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(630, 'd-t-5-15', 'd-t-1-11.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-11.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(631, 'd-t-6-1', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(632, 'd-t-6-2', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(633, 'd-t-6-3', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(634, 'd-t-6-4', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(635, 'd-t-6-5', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(636, 'd-t-6-7', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-200px', '', 'Y'),
(637, 'd-t-6-8', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-240px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-240px', '', 'Y'),
(638, 'd-t-6-9', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-280px', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-280px', '', 'Y'),
(639, 'd-t-6-10', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-320px', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-320px', '', 'Y'),
(640, 'd-t-6-11', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-360px', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-360px', '', 'Y'),
(641, 'd-t-6-12', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-400px', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-400px', '', 'Y'),
(642, 'd-t-6-13', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-440px', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-440px', '', 'Y'),
(643, 'd-t-6-14', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-480px', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(644, 'd-t-6-15', 'd-t-1-10.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-10.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(645, 'd-t-7-1', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(646, 'd-t-7-2', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(647, 'd-t-7-3', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(648, 'd-t-7-4', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(649, 'd-t-7-5', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(650, 'd-t-7-6', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(651, 'd-t-7-8', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-240px', '', 'Y'),
(652, 'd-t-7-9', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-280px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-280px', '', 'Y'),
(653, 'd-t-7-10', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-320px', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-320px', '', 'Y'),
(654, 'd-t-7-11', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-360px', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-360px', '', 'Y'),
(655, 'd-t-7-12', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-400px', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-400px', '', 'Y'),
(656, 'd-t-7-13', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-440px', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-440px', '', 'Y'),
(657, 'd-t-7-14', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-480px', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(658, 'd-t-7-15', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-9.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(659, 'd-t-8-1', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(660, 'd-t-8-2', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(661, 'd-t-8-3', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(662, 'd-t-8-4', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(663, 'd-t-8-5', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(664, 'd-t-8-6', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(665, 'd-t-8-7', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(666, 'd-t-8-9', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-280px', '', 'Y'),
(667, 'd-t-8-10', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-320px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-320px', '', 'Y'),
(668, 'd-t-8-11', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-360px', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-360px', '', 'Y'),
(669, 'd-t-8-12', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-400px', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-400px', '', 'Y'),
(670, 'd-t-8-13', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-440px', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-440px', '', 'Y'),
(671, 'd-t-8-14', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-480px', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(672, 'd-t-8-15', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-8.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(673, 'd-t-9-1', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(674, 'd-t-9-2', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(675, 'd-t-9-3', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(676, 'd-t-9-4', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(677, 'd-t-9-5', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(678, 'd-t-9-6', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(679, 'd-t-9-7', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(680, 'd-t-9-8', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(681, 'd-t-9-10', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-320px', '', 'Y'),
(682, 'd-t-9-11', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-360px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-360px', '', 'Y'),
(683, 'd-t-9-12', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-400px', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-400px', '', 'Y'),
(684, 'd-t-9-13', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-440px', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-440px', '', 'Y'),
(685, 'd-t-9-14', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-480px', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(686, 'd-t-9-15', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-7.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(687, 'd-t-10-1', 'd-t-10-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-10-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(688, 'd-t-10-2', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(689, 'd-t-10-3', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(690, 'd-t-10-4', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(691, 'd-t-10-5', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(692, 'd-t-10-6', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(693, 'd-t-10-7', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(694, 'd-t-10-8', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(695, 'd-t-10-9', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(696, 'd-t-10-11', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-360px', '', 'Y'),
(697, 'd-t-10-12', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-400px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-400px', '', 'Y'),
(698, 'd-t-10-13', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-440px', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-440px', '', 'Y'),
(699, 'd-t-10-14', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-480px', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(700, 'd-t-10-15', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-6.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(701, 'd-t-11-1', 'd-t-11-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-11-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(702, 'd-t-11-2', 'd-t-10-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-10-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(703, 'd-t-11-3', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(704, 'd-t-11-4', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(705, 'd-t-11-5', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(706, 'd-t-11-6', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(707, 'd-t-11-7', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(708, 'd-t-11-8', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(709, 'd-t-11-9', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(710, 'd-t-11-10', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(711, 'd-t-11-12', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-400px', '', 'Y'),
(712, 'd-t-11-13', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-440px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-440px', '', 'Y'),
(713, 'd-t-11-14', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-480px', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(714, 'd-t-11-15', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-5.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(715, 'd-t-12-1', 'd-t-12-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-12-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(716, 'd-t-12-2', 'd-t-11-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-11-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(717, 'd-t-12-3', 'd-t-10-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-10-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(718, 'd-t-12-4', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(719, 'd-t-12-5', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(720, 'd-t-12-6', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(721, 'd-t-12-7', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(722, 'd-t-12-8', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(723, 'd-t-12-9', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(724, 'd-t-12-10', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(725, 'd-t-12-11', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(726, 'd-t-12-13', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-440px', '', 'Y'),
(727, 'd-t-12-14', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-480px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(728, 'd-t-12-15', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-4.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(729, 'd-t-13-1', 'd-t-13-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-13-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(730, 'd-t-13-2', 'd-t-12-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-12-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(731, 'd-t-13-3', 'd-t-11-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-11-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(732, 'd-t-13-4', 'd-t-10-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-10-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(733, 'd-t-13-5', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(734, 'd-t-13-6', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(735, 'd-t-13-7', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(736, 'd-t-13-8', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(737, 'd-t-13-9', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(738, 'd-t-13-10', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(739, 'd-t-13-11', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(740, 'd-t-13-12', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(741, 'd-t-13-14', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-480px', '', 'Y'),
(742, 'd-t-13-15', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-520px', 'd-t-1-3.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(743, 'd-t-14-1', 'd-t-14-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-14-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(744, 'd-t-14-2', 'd-t-13-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-13-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(745, 'd-t-14-3', 'd-t-12-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-12-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(746, 'd-t-14-4', 'd-t-11-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-11-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(747, 'd-t-14-5', 'd-t-10-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-10-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(748, 'd-t-14-6', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(749, 'd-t-14-7', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(750, 'd-t-14-8', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(751, 'd-t-14-9', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(752, 'd-t-14-10', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(753, 'd-t-14-11', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(754, 'd-t-14-12', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(755, 'd-t-14-13', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(756, 'd-t-14-15', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-40px', 'd-t-1-2.png', 'margin-top:-135px; margin-left:-520px', '', 'Y'),
(757, 'd-t-15-1', 'd-t-15-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-15-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(758, 'd-t-15-2', 'd-t-14-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-14-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(759, 'd-t-15-3', 'd-t-13-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-13-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(760, 'd-t-15-4', 'd-t-12-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-12-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(761, 'd-t-15-5', 'd-t-11-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-11-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(762, 'd-t-15-6', 'd-t-10-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-10-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(763, 'd-t-15-7', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-9-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(764, 'd-t-15-8', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-8-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(765, 'd-t-15-9', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-7-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(766, 'd-t-15-10', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-6-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(767, 'd-t-15-11', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-5-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(768, 'd-t-15-12', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-4-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(769, 'd-t-15-13', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-3-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(770, 'd-t-15-14', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', 'd-t-2-1.png', 'margin-top:-135px; margin-left:0px', '', 'Y'),
(771, 'd-y-2-2', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(772, 'd-y-2-3', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(773, 'd-y-2-4', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(774, 'd-y-2-5', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(775, 'd-y-2-6', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(776, 'd-y-2-7', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(777, 'd-y-2-8', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(778, 'd-y-2-9', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(779, 'd-y-2-10', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(780, 'd-y-2-11', 'd-y-1-10.png', 'margin-top:-126px; margin-left:-374px', 'd-y-1-10.png', 'margin-top:-126px; margin-left:-374px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(781, 'd-y-2-12', 'd-y-1-11.png', 'margin-top:-126px; margin-left:-414px', 'd-y-1-11.png', 'margin-top:-126px; margin-left:-414px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(782, 'd-y-2-13', 'd-y-1-12.png', 'margin-top:-126px; margin-left:-454px', 'd-y-1-12.png', 'margin-top:-126px; margin-left:-454px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(783, 'd-y-2-14', 'd-y-1-13.png', 'margin-top:-126px; margin-left:-494px', 'd-y-1-13.png', 'margin-top:-126px; margin-left:-494px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(784, 'd-y-2-15', 'd-y-1-14.png', 'margin-top:-126px; margin-left:-534px', 'd-y-1-14.png', 'margin-top:-126px; margin-left:-534px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(785, 'd-y-3-2', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(786, 'd-y-3-3', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(787, 'd-y-3-4', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(788, 'd-y-3-5', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(789, 'd-y-3-6', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(790, 'd-y-3-7', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(791, 'd-y-3-8', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(792, 'd-y-3-9', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(793, 'd-y-3-10', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(794, 'd-y-3-11', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(795, 'd-y-3-12', 'd-y-1-10.png', 'margin-top:-126px; margin-left:-374px', 'd-y-1-10.png', 'margin-top:-126px; margin-left:-374px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(796, 'd-y-3-13', 'd-y-1-11.png', 'margin-top:-126px; margin-left:-414px', 'd-y-1-11.png', 'margin-top:-126px; margin-left:-414px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(797, 'd-y-3-14', 'd-y-1-12.png', 'margin-top:-126px; margin-left:-454px', 'd-y-1-12.png', 'margin-top:-126px; margin-left:-454px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(798, 'd-y-3-15', 'd-y-1-13.png', 'margin-top:-126px; margin-left:-494px', 'd-y-1-13.png', 'margin-top:-126px; margin-left:-494px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(799, 'd-y-4-2', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(800, 'd-y-4-3', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(801, 'd-y-4-4', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(802, 'd-y-4-5', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(803, 'd-y-4-6', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(804, 'd-y-4-7', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(805, 'd-y-4-8', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(806, 'd-y-4-9', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(807, 'd-y-4-10', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(808, 'd-y-4-11', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(809, 'd-y-4-12', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(810, 'd-y-4-13', 'd-y-1-10.png', 'margin-top:-126px; margin-left:-374px', 'd-y-1-10.png', 'margin-top:-126px; margin-left:-374px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(811, 'd-y-4-14', 'd-y-1-11.png', 'margin-top:-126px; margin-left:-414px', 'd-y-1-11.png', 'margin-top:-126px; margin-left:-414px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(812, 'd-y-4-15', 'd-y-1-12.png', 'margin-top:-126px; margin-left:-454px', 'd-y-1-12.png', 'margin-top:-126px; margin-left:-454px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(813, 'd-y-5-2', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(814, 'd-y-5-3', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(815, 'd-y-5-4', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(816, 'd-y-5-5', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(817, 'd-y-5-6', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(818, 'd-y-5-7', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(819, 'd-y-5-8', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(820, 'd-y-5-9', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(821, 'd-y-5-10', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(822, 'd-y-5-11', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(823, 'd-y-5-12', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(824, 'd-y-5-13', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(825, 'd-y-5-14', 'd-y-1-10.png', 'margin-top:-126px; margin-left:-374px', 'd-y-1-10.png', 'margin-top:-126px; margin-left:-374px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(826, 'd-y-5-15', 'd-y-1-11.png', 'margin-top:-126px; margin-left:-414px', 'd-y-1-11.png', 'margin-top:-126px; margin-left:-414px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(827, 'd-y-6-2', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(828, 'd-y-6-3', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(829, 'd-y-6-4', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(830, 'd-y-6-5', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(831, 'd-y-6-6', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(832, 'd-y-6-7', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(833, 'd-y-6-8', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(834, 'd-y-6-9', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(835, 'd-y-6-10', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(836, 'd-y-6-11', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(837, 'd-y-6-12', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(838, 'd-y-6-13', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(839, 'd-y-6-14', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(840, 'd-y-6-15', 'd-y-1-10.png', 'margin-top:-126px; margin-left:-374px', 'd-y-1-10.png', 'margin-top:-126px; margin-left:-374px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(841, 'd-y-7-2', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(842, 'd-y-7-3', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(843, 'd-y-7-4', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(844, 'd-y-7-5', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(845, 'd-y-7-6', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(846, 'd-y-7-7', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(847, 'd-y-7-8', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(848, 'd-y-7-9', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(849, 'd-y-7-10', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(850, 'd-y-7-11', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(851, 'd-y-7-12', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(852, 'd-y-7-13', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(853, 'd-y-7-14', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(854, 'd-y-7-15', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'd-y-1-9.png', 'margin-top:-126px; margin-left:-334px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(855, 'd-y-8-2', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(856, 'd-y-8-3', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(857, 'd-y-8-4', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(858, 'd-y-8-5', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(859, 'd-y-8-6', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(860, 'd-y-8-7', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(861, 'd-y-8-8', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(862, 'd-y-8-9', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(863, 'd-y-8-10', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(864, 'd-y-8-11', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(865, 'd-y-8-12', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(866, 'd-y-8-13', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(867, 'd-y-8-14', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(868, 'd-y-8-15', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'd-y-1-8.png', 'margin-top:-126px; margin-left:-294px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(869, 'd-y-9-2', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(870, 'd-y-9-3', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(871, 'd-y-9-4', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(872, 'd-y-9-5', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(873, 'd-y-9-6', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(874, 'd-y-9-7', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(875, 'd-y-9-8', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(876, 'd-y-9-9', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(877, 'd-y-9-10', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(878, 'd-y-9-11', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(879, 'd-y-9-12', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(880, 'd-y-9-13', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(881, 'd-y-9-14', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(882, 'd-y-9-15', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'd-y-1-7.png', 'margin-top:-126px; margin-left:-254px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(883, 'd-y-10-2', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(884, 'd-y-10-3', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(885, 'd-y-10-4', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(886, 'd-y-10-5', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(887, 'd-y-10-6', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(888, 'd-y-10-7', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(889, 'd-y-10-8', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(890, 'd-y-10-9', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(891, 'd-y-10-10', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(892, 'd-y-10-11', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(893, 'd-y-10-12', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(894, 'd-y-10-13', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(895, 'd-y-10-14', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(896, 'd-y-10-15', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'd-y-1-6.png', 'margin-top:-126px; margin-left:-214px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(897, 'd-y-11-2', 'd-y-10-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-10-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(898, 'd-y-11-3', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(899, 'd-y-11-4', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(900, 'd-y-11-5', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(901, 'd-y-11-6', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(902, 'd-y-11-7', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(903, 'd-y-11-8', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(904, 'd-y-11-9', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(905, 'd-y-11-10', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(906, 'd-y-11-11', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(907, 'd-y-11-12', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(908, 'd-y-11-13', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(909, 'd-y-11-14', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y');
INSERT INTO `simbol` (`simbol_id`, `simbol_nama`, `simbol_img`, `simbol_margin`, `simbol_img_pdf`, `simbol_margin_pdf`, `simbol_margin_pdf_decision`, `simbol_status`) VALUES
(910, 'd-y-11-15', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'd-y-1-5.png', 'margin-top:-126px; margin-left:-174px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(911, 'd-y-12-2', 'd-y-11-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-11-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(912, 'd-y-12-3', 'd-y-10-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-10-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(913, 'd-y-12-4', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(914, 'd-y-12-5', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(915, 'd-y-12-6', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(916, 'd-y-12-7', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(917, 'd-y-12-8', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(918, 'd-y-12-9', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(919, 'd-y-12-10', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(920, 'd-y-12-11', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(921, 'd-y-12-12', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(922, 'd-y-12-13', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(923, 'd-y-12-14', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(924, 'd-y-12-15', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'd-y-1-4.png', 'margin-top:-126px; margin-left:-134px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(925, 'd-y-13-2', 'd-y-12-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-12-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(926, 'd-y-13-3', 'd-y-11-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-11-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(927, 'd-y-13-4', 'd-y-10-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-10-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(928, 'd-y-13-5', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(929, 'd-y-13-6', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(930, 'd-y-13-7', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(931, 'd-y-13-8', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(932, 'd-y-13-9', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(933, 'd-y-13-10', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(934, 'd-y-13-11', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(935, 'd-y-13-12', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(936, 'd-y-13-13', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(937, 'd-y-13-14', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(938, 'd-y-13-15', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'd-y-1-3.png', 'margin-top:-126px; margin-left:-94px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(939, 'd-y-14-2', 'd-y-13-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-13-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(940, 'd-y-14-3', 'd-y-12-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-12-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(941, 'd-y-14-4', 'd-y-11-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-11-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(942, 'd-y-14-5', 'd-y-10-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-10-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(943, 'd-y-14-6', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(944, 'd-y-14-7', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(945, 'd-y-14-8', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(946, 'd-y-14-9', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(947, 'd-y-14-10', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(948, 'd-y-14-11', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(949, 'd-y-14-12', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(950, 'd-y-14-13', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(951, 'd-y-14-14', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(952, 'd-y-14-15', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'd-y-1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(953, 'd-y-15-2', 'd-y-14-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-14-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(954, 'd-y-15-3', 'd-y-13-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-13-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(955, 'd-y-15-4', 'd-y-12-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-12-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(956, 'd-y-15-5', 'd-y-11-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-11-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(957, 'd-y-15-6', 'd-y-10-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-10-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(958, 'd-y-15-7', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-9-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(959, 'd-y-15-8', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-8-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(960, 'd-y-15-9', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-7-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(961, 'd-y-15-10', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-6-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(962, 'd-y-15-11', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-5-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(963, 'd-y-15-12', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-4-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(964, 'd-y-15-13', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-3-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(965, 'd-y-15-14', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-2-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(966, 'd-y-15-15', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'd-y-1-1.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(967, '2-1,2', '2-1,2.png', 'margin-top:-126px; margin-left:-15px', '2-1,2.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(968, '2-1,2,3', '2-1,2,3.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(969, '2-1,2,3,4', '2-1,2,3,4.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3,4.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(970, '2-1,2,3,4,5', '2-1,2,3,4,5.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3,4,5.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(971, '2-1,2,3,4,5,6', '2-1,2,3,4,5,6.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3,4,5,6.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(972, '2-1,2,3,4,5,6,7', '2-1,2,3,4,5,6,7.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3,4,5,6,7.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(973, '2-1,2,3,4,5,6,7,8', '2-1,2,3,4,5,6,7,8.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3,4,5,6,7,8.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(974, '2-1,2,3,4,5,6,7,8,9', '2-1,2,3,4,5,6,7,8,9.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3,4,5,6,7,8,9.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(975, '2-1,2,3,4,5,6,7,8,9,10', '2-1,2,3,4,5,6,7,8,9,10.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3,4,5,6,7,8,9,10.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(976, '2-1,2,3,4,5,6,7,8,9,10,11', '2-1,2,3,4,5,6,7,8,9,10,11.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3,4,5,6,7,8,9,10,11.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(977, '2-1,2,3,4,5,6,7,8,9,10,11,12', '2-1,2,3,4,5,6,7,8,9,10,11,12.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3,4,5,6,7,8,9,10,11,12.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(978, '2-1,2,3,4,5,6,7,8,9,10,11,12,13', '2-1,2,3,4,5,6,7,8,9,10,11,12,13.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3,4,5,6,7,8,9,10,11,12,13.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(979, '2-1,2,3,4,5,6,7,8,9,10,11,12,13,14', '2-1,2,3,4,5,6,7,8,9,10,11,12,13,14.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3,4,5,6,7,8,9,10,11,12,13,14.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(980, '2-1,2,3,4,5,6,7,8,9,10,11,12,13,14,15', '2-1,2,3,4,5,6,7,8,9,10,11,12,13,14,15.png', 'margin-top:-126px; margin-left:-15px', '2-1,2,3,4,5,6,7,8,9,10,11,12,13,14,15.png', 'margin-top:-126px; margin-left:-15px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(981, 'k-atas-1-1', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(982, 'k-atas-1-2', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(983, 'k-atas-1-3', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(984, 'k-atas-1-4', 'k-atas-1-4.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(985, 'k-atas-1-5', 'k-atas-1-5.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(986, 'k-atas-1-6', 'k-atas-1-6.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(987, 'k-atas-1-7', 'k-atas-1-7.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(988, 'k-atas-1-8', 'k-atas-1-8.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(989, 'k-atas-1-9', 'k-atas-1-9.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(990, 'k-atas-1-10', 'k-atas-1-10.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(991, 'k-atas-1-11', 'k-atas-1-11.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(992, 'k-atas-1-12', 'k-atas-1-12.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(993, 'k-atas-1-13', 'k-atas-1-13.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(994, 'k-atas-1-14', 'k-atas-1-14.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(995, 'k-atas-1-15', 'k-atas-1-15.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(996, 'k-atas-2-1', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(997, 'k-atas-2-2', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(998, 'k-atas-2-3', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(999, 'k-atas-2-4', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1000, 'k-atas-2-5', 'k-atas-1-4.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1001, 'k-atas-2-6', 'k-atas-1-5.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1002, 'k-atas-2-7', 'k-atas-1-6.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1003, 'k-atas-2-8', 'k-atas-1-7.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1004, 'k-atas-2-9', 'k-atas-1-8.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1005, 'k-atas-2-10', 'k-atas-1-9.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1006, 'k-atas-2-11', 'k-atas-1-10.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1007, 'k-atas-2-12', 'k-atas-1-11.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1008, 'k-atas-2-13', 'k-atas-1-12.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1009, 'k-atas-2-14', 'k-atas-1-13.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1010, 'k-atas-2-15', 'k-atas-1-14.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1011, 'k-atas-3-1', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1012, 'k-atas-3-2', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1013, 'k-atas-3-3', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1014, 'k-atas-3-4', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1015, 'k-atas-3-5', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1016, 'k-atas-3-6', 'k-atas-1-4.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1017, 'k-atas-3-7', 'k-atas-1-5.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1018, 'k-atas-3-8', 'k-atas-1-6.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1019, 'k-atas-3-9', 'k-atas-1-7.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1020, 'k-atas-3-10', 'k-atas-1-8.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1021, 'k-atas-3-11', 'k-atas-1-9.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1022, 'k-atas-3-12', 'k-atas-1-10.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1023, 'k-atas-3-13', 'k-atas-1-11.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1024, 'k-atas-3-14', 'k-atas-1-12.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1025, 'k-atas-3-15', 'k-atas-1-13.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1026, 'k-atas-4-1', 'k-atas-4-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1027, 'k-atas-4-2', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1028, 'k-atas-4-3', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1029, 'k-atas-4-4', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1030, 'k-atas-4-5', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1031, 'k-atas-4-6', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1032, 'k-atas-4-7', 'k-atas-1-4.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1033, 'k-atas-4-8', 'k-atas-1-5.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1034, 'k-atas-4-9', 'k-atas-1-6.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1035, 'k-atas-4-10', 'k-atas-1-7.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1036, 'k-atas-4-11', 'k-atas-1-8.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1037, 'k-atas-4-12', 'k-atas-1-9.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1038, 'k-atas-4-13', 'k-atas-1-10.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1039, 'k-atas-4-14', 'k-atas-1-11.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1040, 'k-atas-4-15', 'k-atas-1-12.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1041, 'k-atas-5-1', 'k-atas-5-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1042, 'k-atas-5-2', 'k-atas-4-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1043, 'k-atas-5-3', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1044, 'k-atas-5-4', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1045, 'k-atas-5-5', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1046, 'k-atas-5-6', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1047, 'k-atas-5-7', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1048, 'k-atas-5-8', 'k-atas-1-4.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1049, 'k-atas-5-9', 'k-atas-1-5.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1050, 'k-atas-5-10', 'k-atas-1-6.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1051, 'k-atas-5-11', 'k-atas-1-7.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1052, 'k-atas-5-12', 'k-atas-1-8.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1053, 'k-atas-5-13', 'k-atas-1-9.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1054, 'k-atas-5-14', 'k-atas-1-10.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1055, 'k-atas-5-15', 'k-atas-1-11.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1056, 'k-atas-6-1', 'k-atas-6-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1057, 'k-atas-6-2', 'k-atas-5-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1058, 'k-atas-6-3', 'k-atas-4-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1059, 'k-atas-6-4', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1060, 'k-atas-6-5', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1061, 'k-atas-6-6', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1062, 'k-atas-6-7', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1063, 'k-atas-6-8', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1064, 'k-atas-6-9', 'k-atas-1-4.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1065, 'k-atas-6-10', 'k-atas-1-5.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1066, 'k-atas-6-11', 'k-atas-1-6.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1067, 'k-atas-6-12', 'k-atas-1-7.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1068, 'k-atas-6-13', 'k-atas-1-8.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1069, 'k-atas-6-14', 'k-atas-1-9.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1070, 'k-atas-6-15', 'k-atas-1-10.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1071, 'k-atas-7-1', 'k-atas-7-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1072, 'k-atas-7-2', 'k-atas-6-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1073, 'k-atas-7-3', 'k-atas-5-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1074, 'k-atas-7-4', 'k-atas-4-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1075, 'k-atas-7-5', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1076, 'k-atas-7-6', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1077, 'k-atas-7-7', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1078, 'k-atas-7-8', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1079, 'k-atas-7-9', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1080, 'k-atas-7-10', 'k-atas-1-4.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1081, 'k-atas-7-11', 'k-atas-1-5.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1082, 'k-atas-7-12', 'k-atas-1-6.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1083, 'k-atas-7-13', 'k-atas-1-7.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1084, 'k-atas-7-14', 'k-atas-1-8.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1085, 'k-atas-7-15', 'k-atas-1-9.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1086, 'k-atas-8-1', 'k-atas-8-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1087, 'k-atas-8-2', 'k-atas-7-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1088, 'k-atas-8-3', 'k-atas-6-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1089, 'k-atas-8-4', 'k-atas-5-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1090, 'k-atas-8-5', 'k-atas-4-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1091, 'k-atas-8-6', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1092, 'k-atas-8-7', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1093, 'k-atas-8-8', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1094, 'k-atas-8-9', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1095, 'k-atas-8-10', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1096, 'k-atas-8-11', 'k-atas-1-4.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1097, 'k-atas-8-12', 'k-atas-1-5.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1098, 'k-atas-8-13', 'k-atas-1-6.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1099, 'k-atas-8-14', 'k-atas-1-7.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1100, 'k-atas-8-15', 'k-atas-1-8.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1101, 'k-atas-9-1', 'k-atas-9-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1102, 'k-atas-9-2', 'k-atas-8-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1103, 'k-atas-9-3', 'k-atas-7-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1104, 'k-atas-9-4', 'k-atas-6-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1105, 'k-atas-9-5', 'k-atas-5-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1106, 'k-atas-9-6', 'k-atas-4-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1107, 'k-atas-9-7', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1108, 'k-atas-9-8', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1109, 'k-atas-9-9', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1110, 'k-atas-9-10', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1111, 'k-atas-9-11', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1112, 'k-atas-9-12', 'k-atas-1-4.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1113, 'k-atas-9-13', 'k-atas-1-5.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1114, 'k-atas-9-14', 'k-atas-1-6.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1115, 'k-atas-9-15', 'k-atas-1-7.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1116, 'k-atas-10-1', 'k-atas-10-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1117, 'k-atas-10-2', 'k-atas-9-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1118, 'k-atas-10-3', 'k-atas-8-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1119, 'k-atas-10-4', 'k-atas-7-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1120, 'k-atas-10-5', 'k-atas-6-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1121, 'k-atas-10-6', 'k-atas-5-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1122, 'k-atas-10-7', 'k-atas-4-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1123, 'k-atas-10-8', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1124, 'k-atas-10-9', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1125, 'k-atas-10-10', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1126, 'k-atas-10-11', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1127, 'k-atas-10-12', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1128, 'k-atas-10-13', 'k-atas-1-4.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1129, 'k-atas-10-14', 'k-atas-1-5.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1130, 'k-atas-10-15', 'k-atas-1-6.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1131, 'k-atas-11-1', 'k-atas-11-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1132, 'k-atas-11-2', 'k-atas-10-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1133, 'k-atas-11-3', 'k-atas-9-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1134, 'k-atas-11-4', 'k-atas-8-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1135, 'k-atas-11-5', 'k-atas-7-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1136, 'k-atas-11-6', 'k-atas-6-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1137, 'k-atas-11-7', 'k-atas-5-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1138, 'k-atas-11-8', 'k-atas-4-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1139, 'k-atas-11-9', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1140, 'k-atas-11-10', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1141, 'k-atas-11-11', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1142, 'k-atas-11-12', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1143, 'k-atas-11-13', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1144, 'k-atas-11-14', 'k-atas-1-4.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1145, 'k-atas-11-15', 'k-atas-1-5.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1146, 'k-atas-12-1', 'k-atas-12-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1147, 'k-atas-12-2', 'k-atas-11-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1148, 'k-atas-12-3', 'k-atas-10-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1149, 'k-atas-12-4', 'k-atas-9-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1150, 'k-atas-12-5', 'k-atas-8-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1151, 'k-atas-12-6', 'k-atas-7-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1152, 'k-atas-12-7', 'k-atas-6-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1153, 'k-atas-12-8', 'k-atas-5-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1154, 'k-atas-12-9', 'k-atas-4-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1155, 'k-atas-12-10', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1156, 'k-atas-12-11', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1157, 'k-atas-12-12', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1158, 'k-atas-12-13', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1159, 'k-atas-12-14', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1160, 'k-atas-12-15', 'k-atas-1-4.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1161, 'k-atas-13-1', 'k-atas-13-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1162, 'k-atas-13-2', 'k-atas-12-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1163, 'k-atas-13-3', 'k-atas-11-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1164, 'k-atas-13-4', 'k-atas-10-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1165, 'k-atas-13-5', 'k-atas-9-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1166, 'k-atas-13-6', 'k-atas-8-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1167, 'k-atas-13-7', 'k-atas-7-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1168, 'k-atas-13-8', 'k-atas-6-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1169, 'k-atas-13-9', 'k-atas-5-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1170, 'k-atas-13-10', 'k-atas-4-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1171, 'k-atas-13-11', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1172, 'k-atas-13-12', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1173, 'k-atas-13-13', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1174, 'k-atas-13-14', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1175, 'k-atas-13-15', 'k-atas-1-3.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1176, 'k-atas-14-1', 'k-atas-14-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1177, 'k-atas-14-2', 'k-atas-13-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1178, 'k-atas-14-3', 'k-atas-12-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1179, 'k-atas-14-4', 'k-atas-11-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1180, 'k-atas-14-5', 'k-atas-10-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1181, 'k-atas-14-6', 'k-atas-9-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1182, 'k-atas-14-7', 'k-atas-8-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1183, 'k-atas-14-8', 'k-atas-7-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1184, 'k-atas-14-9', 'k-atas-6-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1185, 'k-atas-14-10', 'k-atas-5-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1186, 'k-atas-14-11', 'k-atas-4-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1187, 'k-atas-14-12', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1188, 'k-atas-14-13', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1189, 'k-atas-14-14', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1190, 'k-atas-14-15', 'k-atas-1-2.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1191, 'k-atas-15-1', 'k-atas-15-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1192, 'k-atas-15-2', 'k-atas-14-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1193, 'k-atas-15-3', 'k-atas-13-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1194, 'k-atas-15-4', 'k-atas-12-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1195, 'k-atas-15-5', 'k-atas-11-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1196, 'k-atas-15-6', 'k-atas-10-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1197, 'k-atas-15-7', 'k-atas-9-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1198, 'k-atas-15-8', 'k-atas-8-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1199, 'k-atas-15-9', 'k-atas-7-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y');
INSERT INTO `simbol` (`simbol_id`, `simbol_nama`, `simbol_img`, `simbol_margin`, `simbol_img_pdf`, `simbol_margin_pdf`, `simbol_margin_pdf_decision`, `simbol_status`) VALUES
(1200, 'k-atas-15-10', 'k-atas-6-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1201, 'k-atas-15-11', 'k-atas-5-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1202, 'k-atas-15-12', 'k-atas-4-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1203, 'k-atas-15-13', 'k-atas-3-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1204, 'k-atas-15-14', 'k-atas-2-1.png', 'margin-top:15px; margin-left:-13px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y'),
(1205, 'k-atas-15-15', 'k-atas-1-1.png', 'margin-top:15px; margin-left:-17px', '1-2.png', 'margin-top:-126px; margin-left:-53px', 'margin-top:9px; margin-left:-4px;', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `slide_id` int(11) NOT NULL,
  `slide_judul` varchar(100) NOT NULL,
  `slide_isi` varchar(200) NOT NULL,
  `slide_gambar` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`slide_id`, `slide_judul`, `slide_isi`, `slide_gambar`) VALUES
(4, 'Standard Operating Procedures', 'Mewujudkan sistem, proses, dan prosedur kerja yang jelas, efektif, efisien, terukur, dan sesuai dengan prinsip-prinsip good governance', 'bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `sop`
--

CREATE TABLE `sop` (
  `sop_id` int(11) NOT NULL,
  `sop_nourut` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `sop_nama_satker` varchar(300) NOT NULL,
  `sop_unit_kerja` varchar(500) NOT NULL,
  `sop_no` varchar(100) NOT NULL,
  `sop_tgl_pembuatan` varchar(20) NOT NULL,
  `sop_tgl_revisi` varchar(20) NOT NULL,
  `sop_tgl_efektif` varchar(20) NOT NULL,
  `sop_disahkan_jabatan` varchar(500) NOT NULL,
  `sop_disahkan_nama` varchar(100) NOT NULL,
  `sop_disahkan_nip` varchar(50) NOT NULL,
  `sop_nama` varchar(500) NOT NULL,
  `sop_dasar_hukum` text NOT NULL,
  `sop_kualifikasi` text NOT NULL,
  `sop_keterkaitan` text NOT NULL,
  `sop_peralatan` text NOT NULL,
  `sop_peringatan` text NOT NULL,
  `sop_pencatatan` text NOT NULL,
  `sop_kegiatan` varchar(200) NOT NULL,
  `sop_pelaksana1` varchar(100) NOT NULL,
  `sop_pelaksana2` varchar(100) NOT NULL,
  `sop_pelaksana3` varchar(100) NOT NULL,
  `sop_pelaksana4` varchar(100) NOT NULL,
  `sop_pelaksana5` varchar(100) NOT NULL,
  `sop_pelaksana6` varchar(100) NOT NULL,
  `sop_pelaksana7` varchar(100) NOT NULL,
  `sop_pelaksana8` varchar(100) NOT NULL,
  `sop_pelaksana9` varchar(100) NOT NULL,
  `sop_pelaksana10` varchar(100) NOT NULL,
  `sop_pelaksana11` varchar(100) NOT NULL,
  `sop_pelaksana12` varchar(100) NOT NULL,
  `sop_pelaksana13` varchar(100) NOT NULL,
  `sop_pelaksana14` varchar(100) NOT NULL,
  `sop_pelaksana15` varchar(100) NOT NULL,
  `sop_nm_pel1` varchar(100) NOT NULL,
  `sop_nm_pel2` varchar(100) NOT NULL,
  `sop_nm_pel3` varchar(100) NOT NULL,
  `sop_nm_pel4` varchar(100) NOT NULL,
  `sop_nm_pel5` varchar(100) NOT NULL,
  `sop_nm_pel6` varchar(100) NOT NULL,
  `sop_nm_pel7` varchar(100) NOT NULL,
  `sop_nm_pel8` varchar(100) NOT NULL,
  `sop_nm_pel9` varchar(100) NOT NULL,
  `sop_nm_pel10` varchar(100) NOT NULL,
  `sop_nm_pel11` varchar(100) NOT NULL,
  `sop_nm_pel12` varchar(100) NOT NULL,
  `sop_nm_pel13` varchar(100) NOT NULL,
  `sop_nm_pel14` varchar(100) NOT NULL,
  `sop_nm_pel15` varchar(100) NOT NULL,
  `sop_pelaksana_perbaris` varchar(50) NOT NULL,
  `sop_decision_perbaris` varchar(5) NOT NULL,
  `sop_jml_pelaksana` int(10) NOT NULL,
  `sop_kelengkapan` varchar(200) NOT NULL,
  `sop_waktu` varchar(50) NOT NULL,
  `sop_hasil` varchar(100) NOT NULL,
  `sop_keterangan` varchar(200) NOT NULL,
  `sop_konektor` char(1) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `satker_kode` int(6) NOT NULL,
  `satuan_organisasi_id` int(11) NOT NULL,
  `satuan_organisasi_nama` varchar(100) NOT NULL,
  `unit_kerja_id` int(11) NOT NULL,
  `sop_status` enum('DRAFT','DRAFT REVISI','DISAHKAN') NOT NULL,
  `sop_step` enum('','admin','pengesah') NOT NULL,
  `sop_pengesah_nama` varchar(50) NOT NULL,
  `sop_pengesah_gambar` text NOT NULL,
  `sop_pengesah_user` int(11) NOT NULL,
  `sop_alias` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sop`
--

INSERT INTO `sop` (`sop_id`, `sop_nourut`, `kategori_id`, `sop_nama_satker`, `sop_unit_kerja`, `sop_no`, `sop_tgl_pembuatan`, `sop_tgl_revisi`, `sop_tgl_efektif`, `sop_disahkan_jabatan`, `sop_disahkan_nama`, `sop_disahkan_nip`, `sop_nama`, `sop_dasar_hukum`, `sop_kualifikasi`, `sop_keterkaitan`, `sop_peralatan`, `sop_peringatan`, `sop_pencatatan`, `sop_kegiatan`, `sop_pelaksana1`, `sop_pelaksana2`, `sop_pelaksana3`, `sop_pelaksana4`, `sop_pelaksana5`, `sop_pelaksana6`, `sop_pelaksana7`, `sop_pelaksana8`, `sop_pelaksana9`, `sop_pelaksana10`, `sop_pelaksana11`, `sop_pelaksana12`, `sop_pelaksana13`, `sop_pelaksana14`, `sop_pelaksana15`, `sop_nm_pel1`, `sop_nm_pel2`, `sop_nm_pel3`, `sop_nm_pel4`, `sop_nm_pel5`, `sop_nm_pel6`, `sop_nm_pel7`, `sop_nm_pel8`, `sop_nm_pel9`, `sop_nm_pel10`, `sop_nm_pel11`, `sop_nm_pel12`, `sop_nm_pel13`, `sop_nm_pel14`, `sop_nm_pel15`, `sop_pelaksana_perbaris`, `sop_decision_perbaris`, `sop_jml_pelaksana`, `sop_kelengkapan`, `sop_waktu`, `sop_hasil`, `sop_keterangan`, `sop_konektor`, `user_id`, `satker_kode`, `satuan_organisasi_id`, `satuan_organisasi_nama`, `unit_kerja_id`, `sop_status`, `sop_step`, `sop_pengesah_nama`, `sop_pengesah_gambar`, `sop_pengesah_user`, `sop_alias`) VALUES
(1, 1, 0, 'SEKRETARIAT KEMENTERIAN', 'BIRO PERENCANAAN', '1/2017', '12 Desember 2017', '-', '', 'Kepala Biro Perencanaan', 'Pengesah Roren', '321', 'SOP CONTOH', 'asd', 'a', 'a', 's', 'a', 'Disimpan sbg data manual', 'a', '1-Y', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a', 'a', 'a', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', 3, '', '', '', '', '', 2, 0, 1, 'Sekretariat Kementerian', 1, 'DRAFT', '', '', '', 0, '8971981357'),
(2, 1, 0, 'SEKRETARIAT KEMENTERIAN', 'BIRO PERENCANAAN', '1/2017', '12 Desember 2017', '-', '', 'Kepala Biro Perencanaan', 'Pengesah Roren', '321', 'SOP CONTOH', 'asd', 'a', 'a', 's', 'a', 'Disimpan sbg data manual', 'a', '', '2-Y', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a', 'a', 'a', '', '', '', '', '', '', '', '', '', '', '', '', '2', '2-Y', 3, '', '', '', '', '0', 2, 0, 1, 'Sekretariat Kementerian', 1, 'DRAFT', '', '', '', 0, '8971981357'),
(3, 1, 0, 'SEKRETARIAT KEMENTERIAN', 'BIRO PERENCANAAN', '1/2017', '12 Desember 2017', '-', '', 'Kepala Biro Perencanaan', 'Pengesah Roren', '321', 'SOP CONTOH', 'asd', 'a', 'a', 's', 'a', 'Disimpan sbg data manual', 'a', '1-Y', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a', 'a', 'a', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', 3, '', '', '', '', '', 2, 0, 1, 'Sekretariat Kementerian', 1, 'DRAFT', '', '', '', 0, '8971981357'),
(4, 1, 0, 'SEKRETARIAT KEMENTERIAN', 'BIRO PERENCANAAN', '1/2017', '12 Desember 2017', '-', '', 'Kepala Biro Perencanaan', 'Pengesah Roren', '321', 'SOP CONTOH', 'asd', 'a', 'a', 's', 'a', 'Disimpan sbg data manual', 'a', '1-Y', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a', 'a', 'a', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', 3, '', '', '', '', '', 2, 0, 1, 'Sekretariat Kementerian', 1, 'DRAFT', '', '', '', 0, '8971981357'),
(5, 1, 0, 'SEKRETARIAT KEMENTERIAN', 'BIRO PERENCANAAN', '1/2017', '12 Desember 2017', '-', '', 'Kepala Biro Perencanaan', 'Pengesah Roren', '321', 'SOP CONTOH', 'asd', 'a', 'a', 's', 'a', 'Disimpan sbg data manual', 'a', '1-Y', '2-Y', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a', 'a', 'a', '', '', '', '', '', '', '', '', '', '', '', '', '1,2', '', 3, '', '', '', '', '', 2, 0, 1, 'Sekretariat Kementerian', 1, 'DRAFT', '', '', '', 0, '8971981357'),
(6, 1, 0, 'SEKRETARIAT KEMENTERIAN', 'BIRO PERENCANAAN', '1/2017', '12 Desember 2017', '-', '', 'Kepala Biro Perencanaan', 'Pengesah Roren', '321', 'SOP CONTOH', 'asd', 'a', 'a', 's', 'a', 'Disimpan sbg data manual', 'a', '', '2-Y', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a', 'a', 'a', '', '', '', '', '', '', '', '', '', '', '', '', '2', '', 3, '', '', '', '', '', 2, 0, 1, 'Sekretariat Kementerian', 1, 'DRAFT', '', '', '', 0, '8971981357'),
(7, 1, 0, 'SEKRETARIAT KEMENTERIAN', 'BIRO PERENCANAAN', '1/2017', '12 Desember 2017', '-', '', 'Kepala Biro Perencanaan', 'Pengesah Roren', '321', 'SOP CONTOH', 'asd', 'a', 'a', 's', 'a', 'Disimpan sbg data manual', 'a', '1-Y', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a', 'a', 'a', '', '', '', '', '', '', '', '', '', '', '', '', '1', '1-Y', 3, '', '', '', '', '0', 2, 0, 1, 'Sekretariat Kementerian', 1, 'DRAFT', '', '', '', 0, '8971981357'),
(8, 1, 0, 'SEKRETARIAT KEMENTERIAN', 'BIRO PERENCANAAN', '1/2017', '12 Desember 2017', '-', '', 'Kepala Biro Perencanaan', 'Pengesah Roren', '321', 'SOP CONTOH', 'asd', 'a', 'a', 's', 'a', 'Disimpan sbg data manual', 'a', '1-Y', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a', 'a', 'a', '', '', '', '', '', '', '', '', '', '', '', '', '1', '', 3, '', '', '', '', '', 2, 0, 1, 'Sekretariat Kementerian', 1, 'DRAFT', '', '', '', 0, '8971981357');

-- --------------------------------------------------------

--
-- Table structure for table `sop_revisi`
--

CREATE TABLE `sop_revisi` (
  `sop_id` int(11) NOT NULL,
  `sop_nourut` int(11) NOT NULL,
  `kategori_id` int(11) NOT NULL,
  `sop_nama_satker` varchar(300) NOT NULL,
  `sop_unit_kerja` varchar(500) NOT NULL,
  `sop_no` varchar(100) NOT NULL,
  `sop_tgl_pembuatan` varchar(20) NOT NULL,
  `sop_tgl_revisi` varchar(20) NOT NULL,
  `sop_tgl_efektif` varchar(20) NOT NULL,
  `sop_disahkan_jabatan` varchar(500) NOT NULL,
  `sop_disahkan_nama` varchar(100) NOT NULL,
  `sop_disahkan_nip` varchar(50) NOT NULL,
  `sop_nama` varchar(500) NOT NULL,
  `sop_dasar_hukum` text NOT NULL,
  `sop_kualifikasi` text NOT NULL,
  `sop_keterkaitan` text NOT NULL,
  `sop_peralatan` text NOT NULL,
  `sop_peringatan` text NOT NULL,
  `sop_pencatatan` text NOT NULL,
  `sop_kegiatan` varchar(200) NOT NULL,
  `sop_pelaksana1` varchar(100) NOT NULL,
  `sop_pelaksana2` varchar(100) NOT NULL,
  `sop_pelaksana3` varchar(100) NOT NULL,
  `sop_pelaksana4` varchar(100) NOT NULL,
  `sop_pelaksana5` varchar(100) NOT NULL,
  `sop_pelaksana6` varchar(100) NOT NULL,
  `sop_pelaksana7` varchar(100) NOT NULL,
  `sop_pelaksana8` varchar(100) NOT NULL,
  `sop_pelaksana9` varchar(100) NOT NULL,
  `sop_pelaksana10` varchar(100) NOT NULL,
  `sop_pelaksana11` varchar(100) NOT NULL,
  `sop_pelaksana12` varchar(100) NOT NULL,
  `sop_pelaksana13` varchar(100) NOT NULL,
  `sop_pelaksana14` varchar(100) NOT NULL,
  `sop_pelaksana15` varchar(100) NOT NULL,
  `sop_nm_pel1` varchar(100) NOT NULL,
  `sop_nm_pel2` varchar(100) NOT NULL,
  `sop_nm_pel3` varchar(100) NOT NULL,
  `sop_nm_pel4` varchar(100) NOT NULL,
  `sop_nm_pel5` varchar(100) NOT NULL,
  `sop_nm_pel6` varchar(100) NOT NULL,
  `sop_nm_pel7` varchar(100) NOT NULL,
  `sop_nm_pel8` varchar(100) NOT NULL,
  `sop_nm_pel9` varchar(100) NOT NULL,
  `sop_nm_pel10` varchar(100) NOT NULL,
  `sop_nm_pel11` varchar(100) NOT NULL,
  `sop_nm_pel12` varchar(100) NOT NULL,
  `sop_nm_pel13` varchar(100) NOT NULL,
  `sop_nm_pel14` varchar(100) NOT NULL,
  `sop_nm_pel15` varchar(100) NOT NULL,
  `sop_pelaksana_perbaris` varchar(50) NOT NULL,
  `sop_decision_perbaris` varchar(5) NOT NULL,
  `sop_jml_pelaksana` int(10) NOT NULL,
  `sop_kelengkapan` varchar(200) NOT NULL,
  `sop_waktu` varchar(50) NOT NULL,
  `sop_hasil` varchar(100) NOT NULL,
  `sop_keterangan` varchar(200) NOT NULL,
  `user_id` int(11) NOT NULL,
  `satker_kode` int(6) NOT NULL,
  `satuan_organisasi_id` int(11) NOT NULL,
  `satuan_organisasi_nama` varchar(100) NOT NULL,
  `unit_kerja_id` int(11) NOT NULL,
  `sop_status` enum('DRAFT','DRAFT REVISI','DISAHKAN') NOT NULL,
  `sop_step` enum('','admin','pengesah') NOT NULL,
  `sop_pengesah_nama` varchar(50) NOT NULL,
  `sop_pengesah_gambar` text NOT NULL,
  `sop_pengesah_user` int(11) NOT NULL,
  `sop_alias` varchar(500) NOT NULL,
  `sop_revisi_alias` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sop_update`
--

CREATE TABLE `sop_update` (
  `sop_update_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sop_alias` varchar(500) NOT NULL,
  `sop_update_file` varchar(100) NOT NULL,
  `sop_update_tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ttd_pengesah`
--

CREATE TABLE `ttd_pengesah` (
  `ttd_pengesah_id` int(11) NOT NULL,
  `ttd_pengesah_jabatan` varchar(100) NOT NULL,
  `ttd_pengesah_nama` varchar(50) NOT NULL,
  `ttd_pengesah_nip` varchar(20) NOT NULL,
  `ttd_pengesah_gambar` text NOT NULL,
  `ttd_pengesah_status` char(1) NOT NULL,
  `satuan_organisasi_id` int(11) NOT NULL,
  `unit_kerja_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ttd_pengesah`
--

INSERT INTO `ttd_pengesah` (`ttd_pengesah_id`, `ttd_pengesah_jabatan`, `ttd_pengesah_nama`, `ttd_pengesah_nip`, `ttd_pengesah_gambar`, `ttd_pengesah_status`, `satuan_organisasi_id`, `unit_kerja_id`, `user_id`) VALUES
(1, 'Kepala Biro Perencanaan', 'Pengesah Roren', '321', 'ttd_1509762022.jpg', 'Y', 1, 1, 527),
(3, 'Kepala Biro Umum', 'Pengesah Roum', '12344', 'ttd_1509765316.jpg', 'Y', 1, 6, 528);

-- --------------------------------------------------------

--
-- Table structure for table `unit_kerja`
--

CREATE TABLE `unit_kerja` (
  `unit_kerja_id` int(11) NOT NULL,
  `unit_kerja_nama` varchar(200) NOT NULL,
  `satuan_organisasi_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_kerja`
--

INSERT INTO `unit_kerja` (`unit_kerja_id`, `unit_kerja_nama`, `satuan_organisasi_id`) VALUES
(1, 'Biro Perencanaan', 1),
(2, 'Biro Keuangan', 1),
(3, 'Biro Tata Usaha', 1),
(4, 'Biro Informasi Dan Teknologi', 1),
(5, 'Biro Kerja Sama Teknik Luar Negeri', 1),
(6, 'Biro Umum', 1),
(7, 'Biro Administrasi', 2),
(8, 'Biro Umum', 2),
(9, 'Biro Pengelolaan Istana', 2),
(10, 'Biro Protokol', 2),
(11, 'Biro Pers, Media, Dan Informasi', 2),
(12, 'Istana Kepresidenan Bogor', 2),
(13, 'Istana Kepresidenan Yogyakarta', 2),
(14, 'Istana Kepresidenan Cipanas', 2),
(15, 'Istana Kepresidenan Tampaksiring Bali', 2),
(16, 'Asisten Deputi Keuangan, Investasi, Dan Badan Usaha', 3),
(17, 'Asisten Deputi Infrastruktur, Energi, Dan Tata Ruang', 3),
(18, 'Asisten Deputi Ketahanan Pangan Dan Sumber Daya Hayati', 3),
(19, 'Asisten Deputi Industri, Perdagangan, Pariwisata Dan Ekonomi Kreatif', 3),
(20, 'Asisten Deputi Pembangunan Sumber Daya Manusia', 3),
(21, 'Asisten Deputi Perlindungan Sosial Dan Penanggulangan Bencana', 3),
(22, 'Asisten Deputi Peningkatan Dan Pengembangan Kesejahteraan', 3),
(23, 'Asisten Deputi Politik, Hukum, Dan Keamanan', 3),
(24, 'Asisten Deputi Hubungan Luar Negeri', 3),
(25, 'Asisten Deputi Reformasi Birokrasi Dan Pelayanan Publik', 3),
(26, 'Asisten Deputi Pengawasan Penyelenggaraan Pemerintahan', 3),
(27, 'Asisten Deputi Komunikasi Dan Informasi Publik', 3),
(28, 'Biro Protokol', 3),
(29, 'Biro Perencanaan Dan Keuangan', 3),
(30, 'Biro Tata Usaha, Teknologi Informasi, Dan  Kepegawaian', 3),
(31, 'Biro Umum', 3),
(32, 'Biro Personel Tni Dan Polri', 4),
(33, 'Biro Pengamanan', 4),
(34, 'Biro Gelar, Tanda Jasa, Dan Tanda Kehormatan', 4),
(35, 'Biro Umum', 4),
(36, 'Asisten Deputi Bidang Politik, Hukum, Dan Keamanan', 5),
(37, 'Asisten Deputi Bidang Pembangunan Manusia Dan Kebudayaan', 5),
(38, 'Asisten Deputi Bidang Perekonomian', 5),
(39, 'Asisten Deputi Bidang Pemerintahan Dalam Negeri Dan Otonomi Daerah', 5),
(40, 'Asisten Deputi Bidang Hukum', 5),
(41, 'Asisten Deputi Hubungan Lembaga Negara Dan Daerah', 6),
(42, 'Asisten Deputi Hubungan Organisasi Kemasyarakatan Dan Organisasi Politik', 6),
(43, 'Asisten Deputi Pengaduan Masyarakat', 6),
(44, 'Asisten Deputi Hubungan Masyarakat', 6),
(45, 'Biro Administrasi Pejabat Negara', 7),
(46, 'Biro Administrasi Pejabat Pemerintahan', 7),
(47, 'Biro Sumber Daya Manusia', 7),
(48, 'Biro Organisasi, Tata Laksana, Dan Akuntabilitas Kinerja', 7),
(49, 'Inspektorat ', 8),
(50, 'Pusat Pendidikan Dan Pelatihan', 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `satuan_organisasi_id` int(11) NOT NULL,
  `unit_kerja_id` int(11) NOT NULL,
  `bagian_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_pass` varchar(100) NOT NULL,
  `user_fullname` varchar(100) NOT NULL,
  `user_foto` varchar(100) NOT NULL,
  `user_last_access` datetime NOT NULL,
  `user_status` enum('Y','N') NOT NULL,
  `created_by` varchar(100) NOT NULL,
  `created_on` datetime NOT NULL,
  `modified_by` varchar(100) NOT NULL,
  `modified_on` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_group_id`, `satuan_organisasi_id`, `unit_kerja_id`, `bagian_id`, `user_name`, `user_pass`, `user_fullname`, `user_foto`, `user_last_access`, `user_status`, `created_by`, `created_on`, `modified_by`, `modified_on`) VALUES
(1, 1, 0, 0, 0, 'admin', '686e5fcb1f2324fcee359289c6bbab2c', 'Super Admin', '', '0000-00-00 00:00:00', 'Y', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(2, 9, 1, 1, 2, 'roren', '5280bc541a55b8c0a65517da4159b126', 'Biro Perencanaan', '', '0000-00-00 00:00:00', 'Y', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(527, 10, 1, 1, 2, 'pengesah_roren', '5844418fe6983ac58cebb0937074395e', 'Pengesah Roren', '', '0000-00-00 00:00:00', 'Y', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(526, 9, 1, 6, 1, 'roum', 'd97fff4ef3aabd2397d918025e516f3e', 'Ahmad Mulyana', 'pp_1508771947.jpg', '0000-00-00 00:00:00', 'Y', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(525, 9, 1, 1, 0, 'ropeg', 'a28edd7abe427860c25008e56206ff4d', 'Biro Perencanaan', '', '0000-00-00 00:00:00', 'Y', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(524, 11, 1, 1, 2, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Admin SOP', '', '0000-00-00 00:00:00', 'Y', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00'),
(528, 10, 1, 6, 1, 'pengesah_roum', '5844418fe6983ac58cebb0937074395e', 'Pengesah Roum', '', '0000-00-00 00:00:00', 'Y', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `user_group_id` int(11) NOT NULL,
  `user_group_name` varchar(50) NOT NULL,
  `user_group_status` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`user_group_id`, `user_group_name`, `user_group_status`) VALUES
(1, 'Super Admin', 'Y'),
(9, 'Tim Penyusun', 'Y'),
(10, 'Pengesah', 'Y'),
(11, 'Administrator', 'Y');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwagenda`
--
CREATE TABLE `vwagenda` (
`content_id` int(11)
,`content_nama` varchar(100)
,`content_isi` text
,`content_menu` varchar(50)
,`content_alias` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwbagian`
--
CREATE TABLE `vwbagian` (
`satuan_organisasi_nama` varchar(100)
,`unit_kerja_nama` varchar(200)
,`bagian_id` int(11)
,`satuan_organisasi_id` int(11)
,`unit_kerja_id` int(11)
,`bagian_nama` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwevaluasi`
--
CREATE TABLE `vwevaluasi` (
`evaluasi_id` int(11)
,`evaluasi_tanggal` date
,`evaluasi_status` char(1)
,`evaluasi_detail_hasil` text
,`sop_update_file` varchar(100)
,`sop_alias` varchar(500)
,`sop_no` varchar(100)
,`sop_nama` varchar(500)
,`sop_tgl_pembuatan` varchar(20)
,`sop_tgl_efektif` varchar(20)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwrevisi`
--
CREATE TABLE `vwrevisi` (
`revisi_id` int(11)
,`revisi_status` enum('pending','ditolak','diterima')
,`sop_alias` varchar(100)
,`revisi_tanggal` date
,`revisi_selesai` varchar(7)
,`sop_nama` varchar(500)
,`sop_no` varchar(100)
,`user_id` int(11)
,`unit_kerja_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwsop`
--
CREATE TABLE `vwsop` (
`sop_update_file` varchar(100)
,`sop_id` int(11)
,`sop_nourut` int(11)
,`sop_no` varchar(100)
,`sop_alias` varchar(500)
,`sop_nama` varchar(500)
,`sop_tgl_pembuatan` varchar(20)
,`sop_tgl_efektif` varchar(20)
,`sop_status` enum('DRAFT','DRAFT REVISI','DISAHKAN')
,`sop_step` enum('','admin','pengesah')
,`kategori_nama` varchar(100)
,`satuan_organisasi_id` int(11)
,`unit_kerja_id` int(11)
,`user_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwtentang_kami`
--
CREATE TABLE `vwtentang_kami` (
`content_id` int(11)
,`content_nama` varchar(100)
,`content_isi` text
,`content_menu` varchar(50)
,`content_alias` varchar(200)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwunit_kerja`
--
CREATE TABLE `vwunit_kerja` (
`satuan_organisasi_nama` varchar(100)
,`unit_kerja_id` int(11)
,`unit_kerja_nama` varchar(200)
,`satuan_organisasi_id` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwuser`
--
CREATE TABLE `vwuser` (
`user_group_name` varchar(50)
,`satuan_organisasi_nama` varchar(100)
,`unit_kerja_nama` varchar(200)
,`bagian_nama` varchar(100)
,`pegawai_nama` varchar(100)
,`user_id` int(11)
,`user_group_id` int(11)
,`satuan_organisasi_id` int(11)
,`unit_kerja_id` int(11)
,`bagian_id` int(11)
,`user_name` varchar(100)
,`user_pass` varchar(100)
,`user_fullname` varchar(100)
,`user_foto` varchar(100)
,`user_last_access` datetime
,`user_status` enum('Y','N')
,`created_by` varchar(100)
,`created_on` datetime
,`modified_by` varchar(100)
,`modified_on` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vwuser_login`
--
CREATE TABLE `vwuser_login` (
`satuan_organisasi_nama` varchar(100)
,`unit_kerja_nama` varchar(200)
,`bagian_nama` varchar(100)
,`pegawai_id` int(11)
,`pegawai_nama` varchar(100)
,`pegawai_nip` varchar(100)
,`user_id` int(11)
,`user_group_id` int(11)
,`satuan_organisasi_id` int(11)
,`unit_kerja_id` int(11)
,`bagian_id` int(11)
,`user_name` varchar(100)
,`user_pass` varchar(100)
,`user_fullname` varchar(100)
,`user_foto` varchar(100)
,`user_last_access` datetime
,`user_status` enum('Y','N')
,`created_by` varchar(100)
,`created_on` datetime
,`modified_by` varchar(100)
,`modified_on` datetime
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_jml_kegiatan`
--
CREATE TABLE `vw_jml_kegiatan` (
`jml_keg` bigint(21)
,`kategori_id` int(11)
,`sop_no` varchar(100)
,`satker_kode` int(6)
,`sop_nama` varchar(500)
);

-- --------------------------------------------------------

--
-- Structure for view `vwagenda`
--
DROP TABLE IF EXISTS `vwagenda`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwagenda`  AS  select `post_content`.`content_id` AS `content_id`,`post_content`.`content_nama` AS `content_nama`,`post_content`.`content_isi` AS `content_isi`,`post_content`.`content_menu` AS `content_menu`,`post_content`.`content_alias` AS `content_alias` from `post_content` where (`post_content`.`content_menu` = 'agenda') ;

-- --------------------------------------------------------

--
-- Structure for view `vwbagian`
--
DROP TABLE IF EXISTS `vwbagian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwbagian`  AS  select `s`.`satuan_organisasi_nama` AS `satuan_organisasi_nama`,`u`.`unit_kerja_nama` AS `unit_kerja_nama`,`b`.`bagian_id` AS `bagian_id`,`b`.`satuan_organisasi_id` AS `satuan_organisasi_id`,`b`.`unit_kerja_id` AS `unit_kerja_id`,`b`.`bagian_nama` AS `bagian_nama` from ((`bagian` `b` left join `satuan_organisasi` `s` on((`b`.`satuan_organisasi_id` = `s`.`satuan_organisasi_id`))) left join `unit_kerja` `u` on((`b`.`unit_kerja_id` = `u`.`unit_kerja_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vwevaluasi`
--
DROP TABLE IF EXISTS `vwevaluasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwevaluasi`  AS  select `e`.`evaluasi_id` AS `evaluasi_id`,`e`.`evaluasi_tanggal` AS `evaluasi_tanggal`,`e`.`evaluasi_status` AS `evaluasi_status`,`ed`.`evaluasi_detail_hasil` AS `evaluasi_detail_hasil`,`s`.`sop_update_file` AS `sop_update_file`,`s`.`sop_alias` AS `sop_alias`,`s`.`sop_no` AS `sop_no`,`s`.`sop_nama` AS `sop_nama`,`s`.`sop_tgl_pembuatan` AS `sop_tgl_pembuatan`,`s`.`sop_tgl_efektif` AS `sop_tgl_efektif` from ((`evaluasi` `e` left join `evaluasi_detail` `ed` on((`e`.`evaluasi_id` = `ed`.`evaluasi_id`))) left join `vwsop` `s` on((`ed`.`sop_alias` = `s`.`sop_alias`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vwrevisi`
--
DROP TABLE IF EXISTS `vwrevisi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwrevisi`  AS  select `r`.`revisi_id` AS `revisi_id`,`r`.`revisi_status` AS `revisi_status`,`r`.`sop_alias` AS `sop_alias`,`r`.`revisi_tanggal` AS `revisi_tanggal`,`r`.`revisi_selesai` AS `revisi_selesai`,`s`.`sop_nama` AS `sop_nama`,`s`.`sop_no` AS `sop_no`,`s`.`user_id` AS `user_id`,`s`.`unit_kerja_id` AS `unit_kerja_id` from (`revisi` `r` left join `vwsop` `s` on((`r`.`sop_alias` = `s`.`sop_alias`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vwsop`
--
DROP TABLE IF EXISTS `vwsop`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwsop`  AS  select `su`.`sop_update_file` AS `sop_update_file`,`s`.`sop_id` AS `sop_id`,`s`.`sop_nourut` AS `sop_nourut`,`s`.`sop_no` AS `sop_no`,`s`.`sop_alias` AS `sop_alias`,`s`.`sop_nama` AS `sop_nama`,`s`.`sop_tgl_pembuatan` AS `sop_tgl_pembuatan`,`s`.`sop_tgl_efektif` AS `sop_tgl_efektif`,`s`.`sop_status` AS `sop_status`,`s`.`sop_step` AS `sop_step`,`k`.`kategori_nama` AS `kategori_nama`,`s`.`satuan_organisasi_id` AS `satuan_organisasi_id`,`s`.`unit_kerja_id` AS `unit_kerja_id`,`s`.`user_id` AS `user_id` from ((`sop` `s` left join `kategori_sop` `k` on((`s`.`kategori_id` = `k`.`kategori_id`))) left join `sop_update` `su` on((`su`.`sop_alias` = `s`.`sop_alias`))) group by `s`.`sop_alias` order by `s`.`sop_id` ;

-- --------------------------------------------------------

--
-- Structure for view `vwtentang_kami`
--
DROP TABLE IF EXISTS `vwtentang_kami`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwtentang_kami`  AS  select `post_content`.`content_id` AS `content_id`,`post_content`.`content_nama` AS `content_nama`,`post_content`.`content_isi` AS `content_isi`,`post_content`.`content_menu` AS `content_menu`,`post_content`.`content_alias` AS `content_alias` from `post_content` where (`post_content`.`content_menu` = 'tentang_kami') ;

-- --------------------------------------------------------

--
-- Structure for view `vwunit_kerja`
--
DROP TABLE IF EXISTS `vwunit_kerja`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwunit_kerja`  AS  select `s`.`satuan_organisasi_nama` AS `satuan_organisasi_nama`,`u`.`unit_kerja_id` AS `unit_kerja_id`,`u`.`unit_kerja_nama` AS `unit_kerja_nama`,`u`.`satuan_organisasi_id` AS `satuan_organisasi_id` from (`unit_kerja` `u` left join `satuan_organisasi` `s` on((`u`.`satuan_organisasi_id` = `s`.`satuan_organisasi_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vwuser`
--
DROP TABLE IF EXISTS `vwuser`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwuser`  AS  select `g`.`user_group_name` AS `user_group_name`,`s`.`satuan_organisasi_nama` AS `satuan_organisasi_nama`,`uk`.`unit_kerja_nama` AS `unit_kerja_nama`,`b`.`bagian_nama` AS `bagian_nama`,`p`.`pegawai_nama` AS `pegawai_nama`,`u`.`user_id` AS `user_id`,`u`.`user_group_id` AS `user_group_id`,`u`.`satuan_organisasi_id` AS `satuan_organisasi_id`,`u`.`unit_kerja_id` AS `unit_kerja_id`,`u`.`bagian_id` AS `bagian_id`,`u`.`user_name` AS `user_name`,`u`.`user_pass` AS `user_pass`,`u`.`user_fullname` AS `user_fullname`,`u`.`user_foto` AS `user_foto`,`u`.`user_last_access` AS `user_last_access`,`u`.`user_status` AS `user_status`,`u`.`created_by` AS `created_by`,`u`.`created_on` AS `created_on`,`u`.`modified_by` AS `modified_by`,`u`.`modified_on` AS `modified_on` from (((((`user` `u` left join `user_group` `g` on((`u`.`user_group_id` = `g`.`user_group_id`))) left join `satuan_organisasi` `s` on((`u`.`satuan_organisasi_id` = `s`.`satuan_organisasi_id`))) left join `unit_kerja` `uk` on((`u`.`unit_kerja_id` = `uk`.`unit_kerja_id`))) left join `bagian` `b` on((`u`.`bagian_id` = `b`.`bagian_id`))) left join `pegawai` `p` on((`u`.`user_id` = `p`.`user_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vwuser_login`
--
DROP TABLE IF EXISTS `vwuser_login`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vwuser_login`  AS  select `s`.`satuan_organisasi_nama` AS `satuan_organisasi_nama`,`uk`.`unit_kerja_nama` AS `unit_kerja_nama`,`b`.`bagian_nama` AS `bagian_nama`,`p`.`pegawai_id` AS `pegawai_id`,`p`.`pegawai_nama` AS `pegawai_nama`,`p`.`pegawai_nip` AS `pegawai_nip`,`u`.`user_id` AS `user_id`,`u`.`user_group_id` AS `user_group_id`,`u`.`satuan_organisasi_id` AS `satuan_organisasi_id`,`u`.`unit_kerja_id` AS `unit_kerja_id`,`u`.`bagian_id` AS `bagian_id`,`u`.`user_name` AS `user_name`,`u`.`user_pass` AS `user_pass`,`u`.`user_fullname` AS `user_fullname`,`u`.`user_foto` AS `user_foto`,`u`.`user_last_access` AS `user_last_access`,`u`.`user_status` AS `user_status`,`u`.`created_by` AS `created_by`,`u`.`created_on` AS `created_on`,`u`.`modified_by` AS `modified_by`,`u`.`modified_on` AS `modified_on` from ((((`user` `u` left join `satuan_organisasi` `s` on((`u`.`satuan_organisasi_id` = `s`.`satuan_organisasi_id`))) left join `unit_kerja` `uk` on((`u`.`unit_kerja_id` = `uk`.`unit_kerja_id`))) left join `bagian` `b` on((`u`.`bagian_id` = `b`.`bagian_id`))) left join `pegawai` `p` on((`u`.`user_id` = `p`.`user_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_jml_kegiatan`
--
DROP TABLE IF EXISTS `vw_jml_kegiatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_jml_kegiatan`  AS  select count(`sop`.`sop_no`) AS `jml_keg`,`sop`.`kategori_id` AS `kategori_id`,`sop`.`sop_no` AS `sop_no`,`sop`.`satker_kode` AS `satker_kode`,`sop`.`sop_nama` AS `sop_nama` from `sop` group by `sop`.`sop_no` order by `sop`.`sop_id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`about_id`);

--
-- Indexes for table `access_input`
--
ALTER TABLE `access_input`
  ADD PRIMARY KEY (`satker_id`);

--
-- Indexes for table `access_menu`
--
ALTER TABLE `access_menu`
  ADD PRIMARY KEY (`access_menu_id`);

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`bagian_id`);

--
-- Indexes for table `chating`
--
ALTER TABLE `chating`
  ADD PRIMARY KEY (`chating_id`);

--
-- Indexes for table `evaluasi`
--
ALTER TABLE `evaluasi`
  ADD PRIMARY KEY (`evaluasi_id`);

--
-- Indexes for table `evaluasi_detail`
--
ALTER TABLE `evaluasi_detail`
  ADD PRIMARY KEY (`evaluasi_detail_id`);

--
-- Indexes for table `jawaban`
--
ALTER TABLE `jawaban`
  ADD PRIMARY KEY (`jawaban_id`);

--
-- Indexes for table `kategori_diskusi`
--
ALTER TABLE `kategori_diskusi`
  ADD PRIMARY KEY (`kategori_diskusi_id`);

--
-- Indexes for table `kategori_sop`
--
ALTER TABLE `kategori_sop`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`kegiatan_id`);

--
-- Indexes for table `kontak_kami`
--
ALTER TABLE `kontak_kami`
  ADD PRIMARY KEY (`kontak_kami_id`);

--
-- Indexes for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  ADD PRIMARY KEY (`kritik_saran_id`);

--
-- Indexes for table `manual_book`
--
ALTER TABLE `manual_book`
  ADD PRIMARY KEY (`manual_book_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `notif`
--
ALTER TABLE `notif`
  ADD PRIMARY KEY (`notif_id`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`pegawai_id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`penilaian_id`);

--
-- Indexes for table `penyusun_sop`
--
ALTER TABLE `penyusun_sop`
  ADD PRIMARY KEY (`penyusun_sop`);

--
-- Indexes for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  ADD PRIMARY KEY (`pertanyaan_id`);

--
-- Indexes for table `post_content`
--
ALTER TABLE `post_content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `replay_diskusi`
--
ALTER TABLE `replay_diskusi`
  ADD PRIMARY KEY (`replay_diskusi_id`);

--
-- Indexes for table `revisi`
--
ALTER TABLE `revisi`
  ADD PRIMARY KEY (`revisi_id`);

--
-- Indexes for table `reviu`
--
ALTER TABLE `reviu`
  ADD PRIMARY KEY (`reviu_id`);

--
-- Indexes for table `satuan_organisasi`
--
ALTER TABLE `satuan_organisasi`
  ADD PRIMARY KEY (`satuan_organisasi_id`);

--
-- Indexes for table `simbol`
--
ALTER TABLE `simbol`
  ADD PRIMARY KEY (`simbol_id`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`slide_id`);

--
-- Indexes for table `sop`
--
ALTER TABLE `sop`
  ADD PRIMARY KEY (`sop_id`);

--
-- Indexes for table `sop_update`
--
ALTER TABLE `sop_update`
  ADD PRIMARY KEY (`sop_update_id`);

--
-- Indexes for table `ttd_pengesah`
--
ALTER TABLE `ttd_pengesah`
  ADD PRIMARY KEY (`ttd_pengesah_id`);

--
-- Indexes for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  ADD PRIMARY KEY (`unit_kerja_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `about_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `access_menu`
--
ALTER TABLE `access_menu`
  MODIFY `access_menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;
--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `bagian_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `chating`
--
ALTER TABLE `chating`
  MODIFY `chating_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `evaluasi`
--
ALTER TABLE `evaluasi`
  MODIFY `evaluasi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `evaluasi_detail`
--
ALTER TABLE `evaluasi_detail`
  MODIFY `evaluasi_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `jawaban`
--
ALTER TABLE `jawaban`
  MODIFY `jawaban_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `kategori_diskusi`
--
ALTER TABLE `kategori_diskusi`
  MODIFY `kategori_diskusi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kategori_sop`
--
ALTER TABLE `kategori_sop`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `kegiatan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `kontak_kami`
--
ALTER TABLE `kontak_kami`
  MODIFY `kontak_kami_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kritik_saran`
--
ALTER TABLE `kritik_saran`
  MODIFY `kritik_saran_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `manual_book`
--
ALTER TABLE `manual_book`
  MODIFY `manual_book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `notif`
--
ALTER TABLE `notif`
  MODIFY `notif_id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `pegawai_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `penilaian`
--
ALTER TABLE `penilaian`
  MODIFY `penilaian_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `penyusun_sop`
--
ALTER TABLE `penyusun_sop`
  MODIFY `penyusun_sop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pertanyaan`
--
ALTER TABLE `pertanyaan`
  MODIFY `pertanyaan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `post_content`
--
ALTER TABLE `post_content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `replay_diskusi`
--
ALTER TABLE `replay_diskusi`
  MODIFY `replay_diskusi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `revisi`
--
ALTER TABLE `revisi`
  MODIFY `revisi_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reviu`
--
ALTER TABLE `reviu`
  MODIFY `reviu_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `satuan_organisasi`
--
ALTER TABLE `satuan_organisasi`
  MODIFY `satuan_organisasi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `simbol`
--
ALTER TABLE `simbol`
  MODIFY `simbol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1206;
--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `slide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sop`
--
ALTER TABLE `sop`
  MODIFY `sop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sop_update`
--
ALTER TABLE `sop_update`
  MODIFY `sop_update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ttd_pengesah`
--
ALTER TABLE `ttd_pengesah`
  MODIFY `ttd_pengesah_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `unit_kerja`
--
ALTER TABLE `unit_kerja`
  MODIFY `unit_kerja_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=529;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
