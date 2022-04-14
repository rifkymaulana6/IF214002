# Quiz Pertemuan 7
### 1. Contoh Pemanfaatan Data Historis
- Pencatatan dana masuk dan dana keluar kas masjid dalam kurun waktu tertentu.
- Pencatatan jumlah barang yang terjual dalam kurun waktu tertentu.

### 2. ERD untuk penyimpanan data karyawan dari sebuah perusahaan
![ERDQuiz drawio](https://user-images.githubusercontent.com/81552476/163295938-e5107f9b-8cac-4d2f-a588-63072d5a968e.png)

- Implementasi MySQL
```sql
CREATE TABLE karyawan (
  id_karyawan int NOT null,
  nama varchar(255) not null,
  kontak varchar(15) not null,
  jenis_kelamin enum('pria', 'wanita'),
  agama varchar(15),
  PRIMARY KEY(id_karyawan)
)

CREATE TABLE histori_gaji (
  tanggal_gaji date not null,
  id_karyawan int not null,
  gaji_bulanan int not null,
  potongan int not null,
  total_gaji int not null,
  PRIMARY KEY(tanggal_gaji, id_karyawan),
  FOREIGN KEY(id_karyawan) REFERENCES karyawan(id_karyawan)
)

CREATE TABLE histori_alamat(
  tanggal_tinggal date not null,
  id_karyawan int NOT null,
  alamat varchar(255) not null,
  PRIMARY KEY(tanggal_tinggal, id_karyawan),
  FOREIGN KEY(id_karyawan) REFERENCES karyawan(id_karyawan)
)

CREATE TABLE histori_jabatan(
  tanggal_jabat date not null,
  id_karyawan int not null,
  jabatan varchar(255) not null,
  PRIMARY KEY (tanggal_jabat, id_karyawan),
  FOREIGN KEY (id_karyawan) REFERENCES karyawan(id_karyawan)
)
```
