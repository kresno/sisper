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
  `nama` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `jenisbelanja` */

/*Table structure for table `lokasi` */

DROP TABLE IF EXISTS `lokasi`;

CREATE TABLE `lokasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `created_at` int(11) NOT NULL DEFAULT current_timestamp(),
  `updated_at` int(11) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

/*Data for the table `lokasi` */

insert  into `lokasi`(`id`,`nama`,`created_at`,`updated_at`) values 
(1,'SEKRETARIAT',0,0),
(2,'BIDANG PENEMPATAN TENAGA KERJA',0,0),
(3,'BIDANG PELATIHAN KERJA DAN PRODUKTIVITAS TENAGA KERJA',0,0),
(4,'BIDANG PEMBINAAN HUBUNGAN INDUSTRIAL DAN SYARAT KERJA',0,0),
(5,'BIDANG TRANSMIGRASI',0,0);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `pegawai` */

insert  into `pegawai`(`id`,`nama`,`jabatan`,`pangkat`,`nip`,`created_at`,`updated_at`) values 
(1,'BUDI SETIADY, SH','196410051986031021','PEMBINA','SEKRETARIS','2022-05-08 16:16:53','2022-05-08 16:16:53'),
(2,'H. ABDUL QODIR,, SE','196810121993031012','PEMBINA','KASUBAG UMUM DAN KEPEGAWAIAN','2022-05-08 16:16:53','2022-05-08 16:16:53'),
(3,'MARLINA,, S.Pd.,MM','198210182010012010','PEMBINA','KASUBAG KEUANGAN','2022-05-08 16:16:53','2022-05-08 16:16:53'),
(4,'USMAN JAELANI, SH, MM','196412071995031001','PEMBINA','KEPALA DINAS','2022-05-08 16:16:53','2022-05-08 16:16:53');

/*Table structure for table `rincianbelanja` */

DROP TABLE IF EXISTS `rincianbelanja`;

CREATE TABLE `rincianbelanja` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(5) NOT NULL,
  `jenisbelanja_id` int(5) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `satuan_id` int(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `rincianbelanja` */

/*Table structure for table `satuan` */

DROP TABLE IF EXISTS `satuan`;

CREATE TABLE `satuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

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
(16,'Galon','2022-05-08 16:16:36','2022-05-08 16:16:36');

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
