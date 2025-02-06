-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versi server:                 8.0.30 - MySQL Community Server - GPL
-- OS Server:                    Win64
-- HeidiSQL Versi:               12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Membuang struktur basisdata untuk apg
DROP DATABASE IF EXISTS `apg`;
CREATE DATABASE IF NOT EXISTS `apg` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `apg`;

-- membuang struktur untuk table apg.barang
DROP TABLE IF EXISTS `barang`;
CREATE TABLE IF NOT EXISTS `barang` (
  `id_barang` int NOT NULL AUTO_INCREMENT,
  `kode` varchar(2) DEFAULT NULL,
  `id_kategori` int DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_barang`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel apg.barang: ~0 rows (lebih kurang)
DELETE FROM `barang`;
INSERT INTO `barang` (`id_barang`, `kode`, `id_kategori`, `nama`) VALUES
	(1, 'A1', 1, 'Piring'),
	(3, 'A2', 3, 'komputer');

-- membuang struktur untuk table apg.jabatan
DROP TABLE IF EXISTS `jabatan`;
CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jabatan` int NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel apg.jabatan: ~4 rows (lebih kurang)
DELETE FROM `jabatan`;
INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
	(1, 'Direktur'),
	(2, 'Manajer'),
	(3, 'Marketing'),
	(6, 'Customer Service');

-- membuang struktur untuk table apg.kategori
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_kategori`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Membuang data untuk tabel apg.kategori: ~0 rows (lebih kurang)
DELETE FROM `kategori`;
INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
	(1, 'Gerabah'),
	(2, 'Elektronik'),
	(3, 'Meubelair');

-- membuang struktur untuk table apg.pegawai
DROP TABLE IF EXISTS `pegawai`;
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int NOT NULL AUTO_INCREMENT,
  `nama_pegawai` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `keterangan` text,
  `id_jabatan` int DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel apg.pegawai: ~3 rows (lebih kurang)
DELETE FROM `pegawai`;
INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `jenis_kelamin`, `tgl_lahir`, `foto`, `keterangan`, `id_jabatan`) VALUES
	(1, 'Ipnu Masyaid', 'L', '1994-11-08', 'user.jpg', '', 1),
	(2, 'Soekarno', 'L', '2025-01-27', '28908511.jpg', 'Magang', 1);

-- membuang struktur untuk table apg.user
DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `role` enum('55','66','77','88') CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '77',
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Membuang data untuk tabel apg.user: ~4 rows (lebih kurang)
DELETE FROM `user`;
INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`, `role`) VALUES
	(1, 'Ipnu Masyaid', 'admin', '21232f297a57a5a743894a0e4a801fc3', '55'),
	(2, 'Joko Santoso', 'Joko', 'aee91da50c827f16983cbbef2fc3c9d0', '55'),
	(3, 'Rakabumi', 'raka', 'e5b2a975d9b73165bcc8b5e63ce488ff', '66'),
	(4, 'Jihan', 'jihan', '1e936f291742d21affc292460409e215', '77');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
