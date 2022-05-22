/*
SQLyog Ultimate v12.5.1 (32 bit)
MySQL - 10.4.24-MariaDB : Database - persediaan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`persediaan` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `persediaan`;

/*Table structure for table `jenisbelanja` */

DROP TABLE IF EXISTS `jenisbelanja`;

CREATE TABLE `jenisbelanja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tahun` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4;

/*Data for the table `jenisbelanja` */

insert  into `jenisbelanja`(`id`,`kode`,`nama`,`tahun`,`created_at`,`updated_at`) values 
(1,'5.1.2.3.4.5.001','Beban Persediaan Alat Tulis Kantor',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(2,'5.1.2.3.4.5.002','Beban Cetakan',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(3,'5.1.2.3.4.5.003','Beban Persediaan Peralatan KEBERSIHAN & bahan Pembersih',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(4,'5.1.2.3.4.5.004','Beban Persediaan Alat listrik & Elektronik ',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(5,'5.1.2.3.4.5.005','Beban Persediaan BBM/ Gas',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(6,'5.1.2.3.4.5.006','Beban Penggandaan/Photo Copy/Jilid',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(7,'5.1.2.3.4.5.007','Beban Dekorasi/Spanduk',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(8,'5.1.2.3.4.5.008','Beban KIT Pelatihan/Perlengkapan rapat,Sosialisasi,Bintek & Kursus',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(9,'5.1.2.3.4.5.009','Beban Pakaian Olahraga',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(10,'5.1.2.3.4.5.010','Beban Persediaan Bahan Material sarana pendukung Kesehatan',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(11,'5.1.2.3.4.5.011','Beban Barang yang akan diserahkan kemasyarakat',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(12,'5.1.2.3.4.5.012','Beban Persediaan Bahan Material Materai',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(13,'5.1.2.3.4.5.013','Beban Dokumentasi',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(14,'5.1.2.3.4.5.014','Beban Belanja Cetak Sertifikat',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(15,'5.1.2.3.4.5.015','Beban Persediaan Bahan Material Pelatihan',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(16,'5.1.2.3.4.5.016','Beban Persediaan Pandel, Piala, Piagam, Cenderamata',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(17,'5.1.2.3.4.5.017','Beban Pakaian Kerja Lapangan',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16'),
(18,'5.1.2.3.4.5.018','Beban Persediaan Pengisian Tabung Pemadam Kebakaran',2022,'2022-05-22 18:14:16','2022-05-22 18:14:16');

/*Table structure for table `lokasi` */

DROP TABLE IF EXISTS `lokasi`;

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `lokasi` */

insert  into `lokasi`(`id`,`nama`,`created_at`,`updated_at`) values 
(1,'SEKRETARIAT','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(2,'BIDANG PENEMPATAN TENAGA KERJA','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(3,'BIDANG PELATIHAN KERJA DAN PRODUKTIVITAS TENAGA KERJA','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(4,'BIDANG PEMBINAAN HUBUNGAN INDUSTRIAL DAN SYARAT KERJA','0000-00-00 00:00:00','0000-00-00 00:00:00'),
(5,'BIDANG TRANSMIGRASI','0000-00-00 00:00:00','0000-00-00 00:00:00');

/*Table structure for table `pegawai` */

DROP TABLE IF EXISTS `pegawai`;

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(150) NOT NULL,
  `pangkat` varchar(150) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pegawai` */

insert  into `pegawai`(`id`,`nama`,`jabatan`,`pangkat`,`nip`,`created_at`,`updated_at`) values 
(1,'BUDI SETIADY, SH','SEKRETARIS','PEMBINA','196410051986031021','2022-05-09 23:35:35','2022-05-09 23:35:35'),
(2,'H. ABDUL QODIR,, SE','KASUBAG UMUM DAN KEPEGAWAIAN','PEMBINA','196810121993031012','2022-05-09 23:35:35','2022-05-09 23:35:35'),
(3,'MARLINA,, S.Pd.,MM','KASUBAG KEUANGAN','PEMBINA','198210182010012010','2022-05-09 23:35:35','2022-05-09 23:35:35'),
(4,'USMAN JAELANI, SH, MM','KEPALA DINAS','PEMBINA','196412071995031001','2022-05-09 23:35:35','2022-05-09 23:35:35');

/*Table structure for table `rincianbelanja` */

DROP TABLE IF EXISTS `rincianbelanja`;

CREATE TABLE `rincianbelanja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(5) NOT NULL DEFAULT 2022,
  `harga` bigint(10) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `satuan_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188101 DEFAULT CHARSET=utf8mb4;

/*Data for the table `rincianbelanja` */

insert  into `rincianbelanja`(`id`,`tahun`,`harga`,`nama`,`satuan_id`,`created_at`,`updated_at`) values 
(1,2022,50000,'Kertas HVS E/F 4 70 gr',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(2,2022,58000,'Kertas HVS E/F4 80 gr',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(3,2022,49000,'Kertas HVS A 4 70 gr',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(4,2022,55000,'Kertas HVS A 4  80 gr',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(5,2022,17000,'Kertas Faximile',8,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(6,2022,2500,'Kertas samson',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(7,2022,27500,'Kertas Buram',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(8,2022,1650,'Kertas Jilid',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(9,2022,12500,'Binder Clip  NO. 200',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(10,2022,5000,'Binder clip kecil',7,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(11,2022,18500,'Binder Clip NO.260',7,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(12,2022,2500,'Isi Hekter K no.10',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(13,2022,35200,'Amplop Polos B uk. 12,5 X 15,5 cm ',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(14,2022,25300,'Amplop Polos B uk. 10,5 X 22,5 cm ',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(15,2022,60500,'Ordner Uk. Besar uk. 1010 PVC Folio',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(16,2022,86300,'Tinta Printer LQ 2180',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(17,2022,173800,'Catridge LQ  2180',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(18,2022,113300,'Tinta Repil Botol L210 Blak T6641',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(19,2022,7500,'Spidol White Board snowman',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(20,2022,8500,'Spidol Permanent Snowman',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(21,2022,3300,'Stop Map polio',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(22,2022,5500,'Stop Map Snelhekter',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(23,2022,300000,'Ballpen boliner',7,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(24,2022,25000,'Box file',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(25,2022,12900,'Isolasi kertas 3M',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(26,2022,2400,'MISTAR Mistar 30 cm',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(27,2022,12100,'Isolasi Kertas 1',8,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(28,2022,21000,'Alat Tulis Kantor paper clip No. 3',3,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(29,2022,30000,'ballpoint',7,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(30,2022,7500,'Binder clips no. 155 Joyko',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(31,2022,18700,'Cutter L-500A Joyko',4,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(32,2022,25000,'Isi Hekter No 10',3,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(33,2022,3300,'Stop Map Polio (Biasa) Uk. Standar, Bahan Karton',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(34,2022,1650,'Plastik Jilid Uk. Folio',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(35,2022,35200,'Amplop Putih Uk. 12,5 x 15,5 cm ',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(36,2022,50000,'BUKU DOUBLE POLIO',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(37,2022,18000,'lakban hitam 2\"',8,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(38,2022,13200,'Stop Map Snelhekter Uk. Folio, Bahan Plastik',8,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(39,2022,10000,'Bak stempel Joyco',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(40,2022,300000,'Ballpoint Balliner',7,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(41,2022,18700,'Penghapus Whiteboard GM Besar',4,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(42,2022,5500,'Paper Clip No. 5 (Jumbo) Joyko',17,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(43,2022,41000,'paper clip No. 5',3,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(44,2022,5800,' Tipex Joyko',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(45,2022,19800,'Lem Stik 25Gr Kenko',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(46,2022,70000,' Buku Folio Paperline isi 100 Lebar',3,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(47,2022,15000,'BUKU EKSPEDISI',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(48,2022,55000,' Kertas A4 80 Gram',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(49,2022,58000,' Kertas F4 80 gram',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(50,2022,50000,' Kertas F4 70 Gram',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(51,2022,49000,' Kertas A4 70gsm',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(52,2022,1650,' Kertas Jilid Uk. Folio',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(53,2022,113300,' Isi Tinta Epson',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(54,2022,18000,'lakban hitam 2\"',8,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(55,2022,3000,'Klip Standar',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(56,2022,3000,'Isi Hekter No. 10',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(57,2022,30000,'ballpoint',7,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(58,2022,10000,'Cutter',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(59,2022,5500,'Stop Map Snelhekter Uk. Standar, Bahan Kertas Karton',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(60,2022,49000,'Kertas A4 70gsm',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(61,2022,50000,'Kertas F4 70 Gram',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(62,2022,239800,'Kertas cover Uk. Folio isi 100 lembar bhn karton',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(63,2022,188100,' Isi Tinta Epson',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(64,2022,3300,'Stop Map Polio (Biasa) Uk. Standar, Bahan Karton',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(65,2022,12000,'Balpoint hitam',7,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(66,2022,30250,'BINDER Brief ordner',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(67,2022,8000,'hekter kecil',3,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(68,2022,5500,'Map biola Ukuran Folio',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(69,2022,12000,'Binder Clips No. 200',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(70,2022,3000,'PAPER CLIP KECIL',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(71,2022,3000,'Isi Hekter No. 10',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(72,2022,7500,'Binder clips no. 155 Joyko',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(73,2022,15000,'Balpoint Builiner Biru',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(74,2022,25000,'Isi Hekter No 10',3,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(75,2022,1650,' Kertas Jilid Uk. Folio',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(76,2022,49000,'Kertas A4 70gsm',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(77,2022,50000,' Kertas F4 70 Gram',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(78,2022,58000,' Kertas F4 80 gram',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(79,2022,30250,'BINDER Brief ordner',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(80,2022,18000,'Binder Clif Besar',7,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(81,2022,2100,'Map snelhecter Plastik Inter X Folder',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(82,2022,3000,'Map Plastik Folio',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(83,2022,3000,'Isi Hekter No. 10',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(84,2022,49000,' Kertas A4 70gsm',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(85,2022,50000,' Kertas F4 70 Gram',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(86,2022,188100,' Isi Tinta Epson',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(87,2022,49000,' Kertas A4 70gsm',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(88,2022,50000,' Kertas F4 70 Gram',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(89,2022,58000,' Kertas F4 80 gram',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(90,2022,188100,' Isi Tinta Epson ',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(91,2022,3850,'Amplop Dinas Kecil',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(92,2022,2750,'Amplop Dinas Besar',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(93,2022,19800,'Buku Disposisi Karbonis',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(94,2022,24000,'Buku Kendali Keluar Karbonis',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(95,2022,18700,'Buku Kendali Masuk Karbonis',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(96,2022,50600,'Buku Kwitansi Karbonis',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(97,2022,3250,'Blangko SPPD  50 Set NCR',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(98,2022,50000,'Blanco Rincian Perjalanan Dinas',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(99,2022,4400,'Pembugkus Arsip Bahan KertasUkuran 40 x 88,5 cm',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(100,2022,33250,'Buku Agenda',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(101,2022,19800,'Disposisi Kertas Karbonis Rangkap 3 Uk 160 Mm X 210',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(102,2022,24200,'Kartu Kendali Keluar Terdiri dari 3 ',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(103,2022,18700,'Kendali Surat Masuk Kertas Karbonis ',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(104,2022,9300,'MAP FILE',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(105,2022,2750,' Amplop Dinas uk. 1/4 folio',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(106,2022,3850,'Amplop Dinas uk. Folio',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(107,2022,34100,'Box Arsip Bahan Karton tebal 4 mm',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(108,2022,50600,' Kwitansi Karbonis',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(109,2022,4400,'Map Dinas bahan karton',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(110,2022,3300,'SPPD Karbonis Uk. Folio rangkap 4 warna',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(111,2022,3300,'SPPD Karbonis Uk. Folio rangkap 4 warna',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(112,2022,50600,'Kwitansi Karbonis',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(113,2022,50600,'Kwitansi Karbonis',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(114,2022,3300,'SPPD Karbonis Uk. Folio rangkap 4 warna',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(115,2022,50600,'Kwitansi Karbonis',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(116,2022,90000,'Blanko Ceklis PMI (TKI)',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(117,2022,3300,'SPPD Karbonis Uk. Folio rangkap 4 warna',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(118,2022,90000,'Kartu Ceklis',9,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(119,2022,150000,'Buku Register Pendaftaran Ak.I1',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(120,2022,50600,'Kwitansi Karbonis',11,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(121,2022,3300,'SPPD Karbonis Uk. Folio rangkap 4 warna',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(122,2022,30000,'Sapu Ijuk',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(123,2022,30000,'Ember',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(124,2022,17000,'Sapu Lidi',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(125,2022,20000,'Sikat Pembersih Lantai',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(126,2022,35000,'Pengki Plastik',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(127,2022,20000,'Spon Kanebo',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(128,2022,35000,'Tissue Tissue Kotak',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(129,2022,22000,'Cairan Pembersih Kaca 800 ml',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(130,2022,19000,'Cairan Pembersih Lantai 800 ml',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(131,2022,18000,'Sabun Cuci Piring Cair 800 ml',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(132,2022,15000,'Sabun Cuci Tangan',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(133,2022,40000,'Cairan Pewangi',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(134,2022,33000,'Cairan Baygon ',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(135,2022,8000,'Kamper Kamper Bulat Warna Warni Isi perkemasan 5 buah',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(136,2022,18000,'Cairan Pembersih Kaca Dettol ',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(137,2022,14000,' Sikat Cuci Linen Kasar Bahan Plastik',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(138,2022,30000,'Sapu Injuk Bahan Injuk',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(139,2022,24000,'Sedokan Sampah Bahan Plastik ',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(140,2022,37000,'Setok Pengepel Bahan Kain Gagang ',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(141,2022,16000,'Sapu Lidi Bahan Lidi ',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(142,2022,3750,'Sendok Makan Ukuran : L 4 x P 17.5 cm,',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(143,2022,15000,'cangkir Kebutuhan Rumah Tangga/ Kantor',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(144,2022,40000,'Pewangi Ruangan elektrik',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(145,2022,19000,' Cairan Pembersih Lantai 800 ml',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(146,2022,30000,' Asbak',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(147,2022,45000,'Sabun Cuci Tangan 800 ml',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(148,2022,20000,'Gelas Melamin',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(149,2022,30000,' Ember',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(150,2022,12000,'Tissue Box',17,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(151,2022,17500,' Piring Melamin bahan Melamin',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(152,2022,26000,'Gayung Bahan Plastik',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(153,2022,18975,' Bahan Pembersih Kaca / Cling 800',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(154,2022,45000,'Sabun Cuci Tangan 800 ml',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(155,2022,35000,'Bayclin',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(156,2022,125000,'Hand Sanitizer Aseptic Gel 500ml',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(157,2022,35000,'Sabun Antiseptik cuci Tangan pump 225 ml',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(158,2022,35000,'Sabun Antiseptik cuci Tangan pump 225 ml',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(159,2022,20000,' Tisu',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(160,2022,125000,'Hand Sanitizer Aseptic Gel 500ml',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(161,2022,45000,' Sabun Cuci Tangan 800 ml',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(162,2022,80740,' E-Care Hand Scrub 500 ml ',16,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(163,2022,34100,'Lampu Neon Philip TL 40 watt lengkap',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(164,2022,150000,'Lampu Emergenci',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(165,2022,56550,' Lampu LED 6 Watt Merk Phillips',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(166,2022,26000,'Batu Baterai Alkaline AAA (isi 7 pcs/pack)',3,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(167,2022,34100,'Batu Baterai Alkaline AAA (isi 7 pcs/pack)',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(168,2022,28600,'Lampu Neon Philip TL 20 watt lengkap',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(169,2022,26000,'Batu Baterai Alkaline AA (isi 8 pcs/pack)',3,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(170,2022,235000,'Kabel Roll Kaiser (4 Stop Kontak P 11 M)',8,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(171,2022,9000,'Kendaraan Dinas Roda 4 Kepala Dinas ( Pertamax)',12,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(172,2022,9000,'Kendaraan Dinas Roda 4 Sekretaris ( Pertamax)',12,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(173,2022,9000,'Kendaraan Dinas Roda 4 Kepala Bidang HI ( Pertamax)',12,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(174,2022,9000,'Kendaraan Dinas Roda 4 Kepala Bidang Penempatan ( Pertamax)',12,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(175,2022,9000,'Kendaraan Dinas Roda 4 Kepala Bidang Lattas ( Pertamax)',12,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(176,2022,9000,'Kendaraan Dinas Roda 4 Kepala Bidang Trans ( Pertamax)',12,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(177,2022,7650,'Kendaraan Dinas Roda 4 Operasional Dinas ( Pertalite)',12,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(178,2022,5150,'Kendaraan roda 4 (isuzu) 2 (dua) unit ( Dexlite)',12,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(179,2022,9000,'Kendaraan Dinas Roda 2  (26 org x 40 ltr ) ( Pertamax)',12,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(180,2022,250,'Penyedia Poto Copy',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(181,2022,10000,'Materai @Rp. 10.000',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(182,2022,250,' Fotokopi Hitam Putih',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(183,2022,250,'Belanja Penggandaan/Fotocopy ',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(184,2022,250,' Belanja Penggandaan/Fotocopy ',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(185,2022,110920200,'Belanja Bahan Baku Bangunan Rabat Beton,',13,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(186,2022,63880000,'Belanja Peralatan Kerja Rabat Beton ',13,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(187,2022,110735600,'Belanja Bahan Baku Bangunan Rabat Beton,',13,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(188,2022,63880000,'Belanja Peralatan Kerja Rabat Beton ',13,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(189,2022,33450,'Tepung Hanjeli',14,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(190,2022,89200,'Mentega/ Salted Butter',14,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(191,2022,66900,'Coklat Compound DCC',15,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(192,2022,16700,'Gula',14,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(193,2022,31200,'Telur',14,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(194,2022,2700,'Garam',15,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(195,2022,20000,'Vanili Ekstrak',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(196,2022,66900,'Bubuk Kakao',15,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(197,2022,22300,'Almond',15,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(198,2022,24500,'Keju',15,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(199,2022,8900,'Baking Powder',14,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(200,2022,16700,'SP/Ovalet',15,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(201,2022,20000,'Tepung Tapioka`',14,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(202,2022,15600,'Tepung Maizena',14,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(203,2022,22300,'Susu Bubuk',14,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(204,2022,40100,'Minyak Goreng',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(205,2022,8900,'Santan Cair ',15,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(206,2022,33450,'Loyang kotak',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(207,2022,22300,'Saringan Stainless',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(208,2022,33450,'Baking paper',8,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(209,2022,27850,'Spatula Poles',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(210,2022,111500,'Cetakan Egg roll',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(211,2022,22300,'Sumpit Besar',3,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(212,2022,55750,'Bumbu abon',15,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(213,2022,22300,'Jantung Pisang ',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(214,2022,222675,'Kemasan ,plastik,dus',2,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(215,2022,69000,'Masker',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(216,2022,5000,'Belanja Masker',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(217,2022,69920,'Han Rub+vbotol antiseptik',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(218,2022,69920,'Belanja Handsanitizer',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(219,2022,110000,'Belanja Sepanduk',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(220,2022,315700,'Penyusunan Pembuatan Materi/Makalah/bahan ajar',19,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(221,2022,315700,'Belanja Cetak Materi',19,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(222,2022,250,'Belanja Foto Copy',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(223,2022,400,'Belanja Foto Copy',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(224,2022,110000,'Belanja Sepanduk',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(225,2022,250,'Belanja Fotocopy',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(226,2022,110000,'Belanja Spanduk',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(227,2022,5000,'Masker kain (60 bh)',5,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(228,2022,500000,'Belanja Handsanitizer',10,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(229,2022,110000,'Belanja Spanduk',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(230,2022,250,'Belanja Fotocopy',6,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(231,2022,5000,'Masker  Kain',1,'2022-05-22 14:58:40','2022-05-22 14:58:40'),
(232,2022,500000,'Hand Sanitizer',10,'2022-05-22 14:58:40','2022-05-22 14:58:40');

/*Table structure for table `satuan` */

DROP TABLE IF EXISTS `satuan`;

CREATE TABLE `satuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

/*Data for the table `satuan` */

insert  into `satuan`(`id`,`nama`,`created_at`,`updated_at`) values 
(1,'Buah','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(2,'Set','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(3,'Pak','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(4,'Pcs','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(5,'Dus','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(6,'Lembar','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(7,'Lusin','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(8,'Roll','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(9,'Rim','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(10,'Botol','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(11,'Buku','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(12,'Liter','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(13,'Paket','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(14,'Kg','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(15,'Kantong','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(16,'Galon','2022-05-08 16:16:36','2022-05-08 16:16:36'),
(17,'Rupiah','2022-05-22 15:23:01','2022-05-22 15:23:01');

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `id` int(11) DEFAULT NULL,
  `jenisbelanja_id` int(3) NOT NULL,
  `lokasi_id` int(3) NOT NULL,
  `rincianbelanja_id` int(3) NOT NULL,
  `januari_masuk` int(3) NOT NULL,
  `januari_keluar` int(3) NOT NULL,
  `februari_masuk` int(3) NOT NULL,
  `februari_keluar` int(3) NOT NULL,
  `maret_masuk` int(3) NOT NULL,
  `maret_keluar` int(3) NOT NULL,
  `april_masuk` int(3) NOT NULL,
  `april_keluar` int(3) NOT NULL,
  `mei_masuk` int(3) NOT NULL,
  `mei_keluar` int(3) NOT NULL,
  `juni_masuk` int(3) NOT NULL,
  `juni_keluar` int(3) NOT NULL,
  `juli_masuk` int(3) NOT NULL,
  `juli_keluar` int(3) NOT NULL,
  `agustus_masuk` int(3) NOT NULL,
  `agustus_keluar` int(3) NOT NULL,
  `september_masuk` int(3) NOT NULL,
  `september_keluar` int(3) NOT NULL,
  `oktober_masuk` int(3) NOT NULL,
  `oktober_keluar` int(3) NOT NULL,
  `november_masuk` int(3) NOT NULL,
  `november_keluar` int(3) NOT NULL,
  `desember_masuk` int(3) NOT NULL,
  `desember_keluar` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `transaksi` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `level` int(1) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`,`nama`,`level`,`created_at`,`updated_at`) values 
(1,'admin@admin.com','f865b53623b121fd34ee5426c792e5c33af8c227','Test Admin',1,'2022-05-09 17:42:11','2022-05-09 17:42:11'),
(2,'staff@staff.com','5d43e3169f06cf2a04a0ee870b5ac2aff3c558ff','Test Staff',2,'2022-05-09 17:42:38','2022-05-09 17:42:38');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
