## Ujian Tengah Semester Praktikum Basis Data

### 1. Jelaskan contoh-contoh perintah SQL beserta kegunannya !
**Jawaban:**
- ```SELECT``` adalah satu statement utama dari SQL yang digunakan untuk memilih data dari database.

  Syntax:
  ```sql
  SELECT nama_kolom1, nama_kolom2
  FROM nama_tabel;
  ```
- ```UPDATE``` digunakan dengan ```WHERE``` untuk mengupdate data di tabel.

  Syntax:
  ```sql
  UPDATE nama_tabel
  SET nama_kolom1 = 'nilai_pengganti', nama_kolom2= 'nilai_pengganti'
  WHERE kondisi;
  ```
- ```DELETE``` digunakan untuk menghapus baris tertentu dari tabel.

  Syntax:
  ```sql
  DELETE FROM nama_tabel
  WHERE kondisi='value_kondisi';
  DELETE * FROM nama_tabel;
  ```
- ```INSERT INTO``` digunakan untuk memasukan baris data baru ke tabel.

  Syntax:
  ```sql
  INSERT INTO nama_tabel (nama_kolom1, nama_kolom2, nama_kolom3)
  VALUES ('value1_kolom1', 'value2_kolom2', 'value3_kolom3');
  ```
- ```CREATE DATABASE``` digunakan untuk membuat database baru.

  Syntax:
  ```sql
  CREATE DATABASE nama_database
  ```
- ```DROP DATABASE``` digunakan untuk menghapus seluruh isi database, termasuk data dan parameternya.

  Syntax:
  ```sql
  DROP DATABASE db_name;
  ```
- ```CREATE TABLE``` dipakai untuk membuat tabel baru dalam database.

  Syntax:
  ```sql
  CREATE TABLE nama_tabel (
    nama_kolom1 tipe_data(panjang data),
    nama
  )
  ```
- ```ALTER TABLE``` digunakan untuk menambah atau menghapus kolom dari tabel.

  Syntax:
  ```sql
  ALTER TABLE nama_tabel ADD nama_kolom tipe_data;
  ALTER TABLE nama_tabel DROP COLUMN nama_kolom;
  ```
- ```DROP TABLE``` digunakan untuk menghapus seluruh tabel data, lengkap dengan tipe data dan parameter yang telah ditentukan sebelumnya.

  Syntax:
  ```sql
  DROP TABLE tbl_name;
  ```
- ```CREATE INDEX``` digunakan untuk membuat index baru pada tabel.

  Syntax:
  ```sql
  CREATE INDEX nama_indeks
  ON nama_tabel (nama_kolom)
  ```
- ```DROP INDEX``` dipakai untuk menghapus seluruh index data yang telah Anda pilih.

  Syntax:
  ```sql
  DROP INDEX nama_indeks ON nama_tabel
  ```
  
### 2. Rancang solusi digital dari satu permasalahan yang ada di sekitar Anda.
**Jawaban:**
```sql
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
```
  
