-- Create and select database
CREATE DATABASE IF NOT EXISTS apg;

USE apg;

-- Dumping structure for table apg.jabatan
CREATE TABLE IF NOT EXISTS `jabatan` (
  `id_jabatan` int(5) NOT NULL AUTO_INCREMENT,
  `nama_jabatan` varchar(20) NOT NULL,
  PRIMARY KEY (`id_jabatan`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- Dumping data for table apg.jabatan: ~4 rows (approximately)
INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
	(1, 'Direktur'),
	(2, 'Manajer'),
	(3, 'Marketing'),
	(4, 'Sekretaris');

-- Dumping structure for table apg.pegawai
CREATE TABLE IF NOT EXISTS `pegawai` (
  `id_pegawai` int(5) NOT NULL AUTO_INCREMENT,
  `nama_pegawai` varchar(30) NOT NULL,
  `jenis_kelamin` varchar(1) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `keterangan` text,
  `id_jabatan` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table apg.pegawai: ~1 rows (approximately)
INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `jenis_kelamin`, `tgl_lahir`, `foto`, `keterangan`, `id_jabatan`) VALUES
	(1, 'Ipnu Masyaid', 'L', '1994-11-08', 'user.jpg', '', 1);

-- Dumping structure for table apg.user
CREATE TABLE IF NOT EXISTS `user` (
  `id_user` int(5) NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(50) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table apg.user: ~1 rows (approximately)
INSERT INTO `user` (`id_user`, `nama_lengkap`, `username`, `password`) VALUES
	(1, 'Ipnu Masyaid', 'admin', '21232f297a57a5a743894a0e4a801fc3');