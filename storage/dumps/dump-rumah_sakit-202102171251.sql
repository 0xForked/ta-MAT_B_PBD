-- MySQL dump 10.13  Distrib 5.5.62, for Win64 (AMD64)
--
-- Host: 127.0.0.1    Database: rumah_sakit
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.8-MariaDB-1:10.5.8+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dokter`
--

DROP TABLE IF EXISTS `dokter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dokter` (
  `kd_dokter` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `gaji` int(11) DEFAULT NULL,
  PRIMARY KEY (`kd_dokter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dokter`
--

LOCK TABLES `dokter` WRITE;
/*!40000 ALTER TABLE `dokter` DISABLE KEYS */;
INSERT INTO `dokter` VALUES ('D0001','Ema Utami','Yogyakarta','P',2500000),('D0002','Suwanto Raharjo','Jakarta','L',2000000),('D0003','Emi Susanti','Semarang','P',1500000),('D0004','Andi Sunyoto','Bandung','L',2000000),('D0005','Emha Taufik Luthfi','Yogyakarta','L',3000000);
/*!40000 ALTER TABLE `dokter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jadwal_dokter`
--

DROP TABLE IF EXISTS `jadwal_dokter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jadwal_dokter` (
  `kd_jadwal` char(5) NOT NULL,
  `hari` varchar(10) NOT NULL,
  `shift` varchar(10) NOT NULL,
  `kd_dokter` char(5) NOT NULL,
  PRIMARY KEY (`kd_jadwal`),
  KEY `jadwal_dokter_kd_dokter_foreign` (`kd_dokter`),
  CONSTRAINT `jadwal_dokter_kd_dokter_foreign` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jadwal_dokter`
--

LOCK TABLES `jadwal_dokter` WRITE;
/*!40000 ALTER TABLE `jadwal_dokter` DISABLE KEYS */;
INSERT INTO `jadwal_dokter` VALUES ('A0001','Senin','Pagi','D0001'),('A0002','Senin','Sore','D0002'),('B0001','Selasa','Pagi','D0004'),('B0002','Selasa','Sore','D0003'),('C0001','Rabu','Pagi','D0001'),('C0002','Rabu','Sore','D0005'),('D0001','Kamis','Pagi','D0003'),('D0002','Kamis','Sore','D0002'),('E0001','Jum’at','Pagi','D0004'),('E0002','Jum’at','Sore','D0001'),('F0001','Sabtu','Pagi','D0003');
/*!40000 ALTER TABLE `jadwal_dokter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2021_02_17_114702_create_table_dokter',1),(2,'2021_02_17_114730_create_table_pasien',1),(3,'2021_02_17_114800_create_table_penyakit',1),(4,'2021_02_17_114834_create_table_obat',1),(5,'2021_02_17_114905_create_table_jadwal_dokter',1),(6,'2021_02_17_114941_create_table_resep',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obat`
--

DROP TABLE IF EXISTS `obat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `obat` (
  `kd_obat` char(5) NOT NULL,
  `obat` varchar(30) NOT NULL,
  PRIMARY KEY (`kd_obat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obat`
--

LOCK TABLES `obat` WRITE;
/*!40000 ALTER TABLE `obat` DISABLE KEYS */;
INSERT INTO `obat` VALUES ('M0001','Antalgin'),('M0002','Parasetamol'),('M0003','CTM'),('M0004','Antibiotik'),('M0005','Salep'),('M0006','Dulcolax'),('M0007','Pacepil'),('M0008','Imunolax'),('M0009','Hiposetamol'),('M0010','Metromex');
/*!40000 ALTER TABLE `obat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pasien`
--

DROP TABLE IF EXISTS `pasien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pasien` (
  `kd_pasien` char(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(30) DEFAULT NULL,
  `gender` char(1) NOT NULL,
  `periksa` int(11) DEFAULT NULL,
  PRIMARY KEY (`kd_pasien`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pasien`
--

LOCK TABLES `pasien` WRITE;
/*!40000 ALTER TABLE `pasien` DISABLE KEYS */;
INSERT INTO `pasien` VALUES ('P0001','Risa','Jakarta','P',1),('P0002','Janu','Surabaya','L',2),('P0003','Reva','Yogyakarta','P',4),('P0004','Didi','Surakarta','L',3),('P0005','Lativa','Purwokerto','P',1),('P0006','Fanie','Cilacap','L',2),('P0007','Putri','Yogyakarta','P',5),('P0008','Randi','Jakarta','L',3),('P0009','Daffa','Semarang','L',2),('P0010','Vika','Bandung','P',4);
/*!40000 ALTER TABLE `pasien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `penyakit`
--

DROP TABLE IF EXISTS `penyakit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `penyakit` (
  `kd_penyakit` char(5) NOT NULL,
  `penyakit` varchar(30) NOT NULL,
  PRIMARY KEY (`kd_penyakit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `penyakit`
--

LOCK TABLES `penyakit` WRITE;
/*!40000 ALTER TABLE `penyakit` DISABLE KEYS */;
INSERT INTO `penyakit` VALUES ('K0001','Batuk'),('K0002','Panu'),('K0003','Kadas'),('K0004','Kurap'),('K0005','Konstipasi'),('K0006','Migrain'),('K0007','Tipus'),('K0008','Hepatitis'),('K0009','Diabetes'),('K0010','Hipertensi');
/*!40000 ALTER TABLE `penyakit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resep`
--

DROP TABLE IF EXISTS `resep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resep` (
  `kd_resep` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `hari` varchar(10) NOT NULL,
  `tanggal` datetime NOT NULL,
  `kd_pasien` char(5) NOT NULL,
  `kd_penyakit` char(5) NOT NULL,
  `kd_obat` char(5) NOT NULL,
  `kd_dokter` char(5) NOT NULL,
  PRIMARY KEY (`kd_resep`),
  KEY `resep_kd_pasien_foreign` (`kd_pasien`),
  KEY `resep_kd_penyakit_foreign` (`kd_penyakit`),
  KEY `resep_kd_obat_foreign` (`kd_obat`),
  KEY `resep_kd_dokter_foreign` (`kd_dokter`),
  CONSTRAINT `resep_kd_dokter_foreign` FOREIGN KEY (`kd_dokter`) REFERENCES `dokter` (`kd_dokter`),
  CONSTRAINT `resep_kd_obat_foreign` FOREIGN KEY (`kd_obat`) REFERENCES `obat` (`kd_obat`),
  CONSTRAINT `resep_kd_pasien_foreign` FOREIGN KEY (`kd_pasien`) REFERENCES `pasien` (`kd_pasien`),
  CONSTRAINT `resep_kd_penyakit_foreign` FOREIGN KEY (`kd_penyakit`) REFERENCES `penyakit` (`kd_penyakit`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resep`
--

LOCK TABLES `resep` WRITE;
/*!40000 ALTER TABLE `resep` DISABLE KEYS */;
INSERT INTO `resep` VALUES (1,'Senin','2015-11-02 00:00:00','P0001','K0001','M0001','D0001'),(2,'Senin','2015-11-02 00:00:00','P0002','K0001','M0001','D0002'),(3,'Senin','2015-11-02 00:00:00','P0010','K0001','M0001','D0002'),(4,'Selasa','2021-02-15 00:00:00','P0008','K0009','M0001','D0003'),(5,'Selasa','2015-02-15 00:00:00','P0008','K0007','M0003','D0003'),(6,'Rabu','2021-02-16 00:00:00','P0004','K0003','M0001','D0001'),(7,'Rabu','2015-02-16 00:00:00','P0003','K0005','M0003','D0005'),(8,'Kamis','2015-02-17 00:00:00','P0005','K0006','M0002','D0003'),(9,'Jum’at','2015-02-18 00:00:00','P0001','K0006','M0002','D0004'),(10,'Sabtu','2015-02-19 00:00:00','P0005','K0002','M0006','D0003');
/*!40000 ALTER TABLE `resep` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'rumah_sakit'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-17 12:51:02
