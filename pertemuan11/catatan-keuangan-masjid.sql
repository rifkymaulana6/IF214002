/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dkm` (
  `id_dkm` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(80) NOT NULL,
  `kontak` varchar(25) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  PRIMARY KEY (`id_dkm`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infaq` (
  `id_infaq` int(11) NOT NULL AUTO_INCREMENT,
  `id_dkm` int(11) NOT NULL,
  `donatur` varchar(80) DEFAULT NULL,
  `kontak` varchar(25) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `jumlah_infaq` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_infaq`),
  KEY `fk_dkminfaq` (`id_dkm`),
  CONSTRAINT `fk_dkminfaq` FOREIGN KEY (`id_dkm`) REFERENCES `dkm` (`id_dkm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kotak_amal` (
  `id_dkm` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `isi_kotak` int(11) NOT NULL,
  PRIMARY KEY (`id_dkm`,`tanggal`),
  CONSTRAINT `fk_dkmkotak` FOREIGN KEY (`id_dkm`) REFERENCES `dkm` (`id_dkm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masjid` (
  `koordinat` varchar(80) NOT NULL,
  `nama` varchar(80) NOT NULL,
  `kode_kecamatan` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  PRIMARY KEY (`koordinat`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_dkm` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jml_pengeluaran` int(11) NOT NULL,
  `bukti` varchar(255) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_pengeluaran`),
  KEY `id_dkm` (`id_dkm`),
  CONSTRAINT `pengeluaran_ibfk_1` FOREIGN KEY (`id_dkm`) REFERENCES `dkm` (`id_dkm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
