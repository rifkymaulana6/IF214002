/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dkm` (
  `id_dkm` int(11) NOT NULL,
  `kontak` varchar(25) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  PRIMARY KEY (`id_dkm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `donatur` (
  `id_donatur` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kontak` varchar(25) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_donatur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infaq` (
  `id_infaq` int(11) NOT NULL,
  `id_dkm` int(11) NOT NULL,
  `id_donatur` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jml_infaq` int(11) NOT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_infaq`),
  KEY `id_dkm` (`id_dkm`),
  KEY `id_donatur` (`id_donatur`),
  CONSTRAINT `infaq_ibfk_1` FOREIGN KEY (`id_dkm`) REFERENCES `dkm` (`id_dkm`),
  CONSTRAINT `infaq_ibfk_2` FOREIGN KEY (`id_donatur`) REFERENCES `donatur` (`id_donatur`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kotak_amal` (
  `id_dkm` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `isi_kotak` int(11) NOT NULL,
  PRIMARY KEY (`id_dkm`,`tanggal`),
  CONSTRAINT `kotak_amal_ibfk_1` FOREIGN KEY (`id_dkm`) REFERENCES `dkm` (`id_dkm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masjid` (
  `koordinat` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kode_wilayah` varchar(10) DEFAULT NULL,
  `alamat` varchar(255) NOT NULL,
  PRIMARY KEY (`koordinat`,`nama`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(11) NOT NULL,
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
