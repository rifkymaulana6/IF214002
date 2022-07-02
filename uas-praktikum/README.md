## Solusi Digital
Aplikasi ini dibuat untuk membantu para pengurus DKM Masjid dalam mendata keuangan Masjid agar terhindar dari fitnah.

## Fitur-fitur
Aplikasi ini memiliki fitur-fitur utama sebagai berikut:
- DKM mencatat pemasukan dari kotak amal mingguan.
- DKM mencatat pemasukan dari Donatur/orang yang ingin berinfaq.
- DKM mencatat pengeluaran untuk belanja kebutuhan masjid.

## ERD
![ERD](https://user-images.githubusercontent.com/81552476/176566077-8e7d7233-bf1f-4d5b-bd80-3ab4a03819f5.png)

## Basis Data
- DDL
```sql
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
```
- DML
```sql
INSERT INTO masjid VALUES ('22Q8+552', 'As-Syuhada', 45375, 'Kec. Cibugel, Kabupaten Sumedang, Jawa Barat 45375');

INSERT INTO dkm (nama, kontak, alamat) VALUES ('Lili Sutarli', '081234567890', 'Dsn. Cidomas, No. 12, 03/03, Ds. Buanamekar, Kec.Cibugel');
INSERT INTO dkm (nama, kontak, alamat) VALUES ('Jajang Ruhita', '081234567812', 'Dsn. Cidomas, No. 20, 03/03, Ds. Buanamekar, Kec.Cibugel');
INSERT INTO dkm (nama, kontak, alamat) VALUES ('Suhendar', '081234567501', 'Dsn. Cidomas, No. 24, 03/03, Ds. Buanamekar, Kec.Cibugel');

INSERT INTO kotak_amal VALUES (1, '2022-05-06', 793500);
INSERT INTO kotak_amal VALUES (1, '2022-05-13', 1023000);
INSERT INTO kotak_amal VALUES (1, '2022-05-20', 954200);

INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Kevin', '082126201022', '2022-01-19', 2000000, 'Uang Tunai');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Bernardo', '085314937401', '2022-01-25', 700000, 'Bahan Bangunan');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Aguero', '082126201033', '2022-02-02', 222000, 'Makanan');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Hamba Allah', '', '2022-02-15', 10000000, 'Transfer');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Hamba Allah', '', '2022-02-16', 7000000, 'Transfer');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Hamba Allah', '', '2022-02-17', 13000000, 'Transfer');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Mbappe', '', '2022-02-25', 150000, 'Uang Tunai');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Hamba Allah', '082117201020', '2022-03-09', 75000, 'Makanan');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Benzema', '', '2022-04-20', 12000000, 'Uang Tunai');

INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-01-21', 500000, 'nota1.jpg', 'cat tembok');
INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-02-05', 200000, 'nota2.jpg', 'makanan untuk pengajian bulanan');
INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-02-14', 50000, 'nota3.jpg', 'lampu wc');
INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-02-19', 70000, 'pln1.jpg', 'bayar listrik feb22');
INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-03-02', 20000, 'nota4.jpg', 'pengharum ruangan');
INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-03-19', 60000, 'pln2.jpg', 'bayar listrik mar22');
INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-03-27', 150000, 'nota5.jpg', 'keran dan alat kebersihan');
```
- DQL
  - Menghitung pengeluaran per bulan.
  - Menghitung infaq per bulan.
  - Menghitung isi kotak amal per bulan, untuk menganalisa bulan apa saja yang isi kotak amalnya meningkat, sehingga DKM dapat mengantisipasi penuhnya kotak amal dengan menambah unit dari kotak amal tersebut.
```sql
SELECT
    MONTHNAME(tanggal) AS bulan,
    CONCAT("Rp. ", FORMAT(SUM(jml_pengeluaran), 0, "id_ID")) as total_pengeluaran
FROM pengeluaran
GROUP BY DATE_FORMAT(tanggal, '%m');

SELECT
    MONTHNAME(tanggal) AS bulan,
    CONCAT("Rp. ", FORMAT(SUM(jumlah_infaq), 0, "id_ID")) as total_infaq
FROM infaq
GROUP BY DATE_FORMAT(tanggal, '%m');

SELECT
    MONTHNAME(tanggal) AS bulan,
    CONCAT("Rp. ", FORMAT(SUM(isi_kotak), 0, "id_ID")) as total_kotak
FROM kotak_amal
GROUP BY DATE_FORMAT(tanggal, '%m');
```
