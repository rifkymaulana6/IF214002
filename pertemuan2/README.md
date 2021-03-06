# Ide Solusi: Catatan Keuangan Masjid

![ERD drawio (4)](https://user-images.githubusercontent.com/81552476/164370925-76f9ea66-cf4c-42c3-ae69-0fe68204bb83.png)


## Deskripsi
Aplikasi ini dibuat untuk membantu para pengurus DKM Masjid dalam mendata keuangan Masjid agar terhindar dari fitnah.
Aplikasi ini memiliki fitur-fitur utama sebagai berikut:
- Mencatat pemasukan dari kotak amal mingguan.
- Mencatat pemasukan dari Donatur/orang yang ingin berinfaq.
- Mencatat pemasukan dari program kerja DKM.
- Mencatat pengeluaran untuk belanja kebutuhan masjid.
- Menghitung saldo akhir.

## Entitas dan Atribut
### Masjid
- Nama
- Alamat
- Kode wilayah
- Titik koordinat

### DKM
- ID
- NIK
- Nama
- Alamat
- Kontak
- Jabatan

### Penarikan Isi Kotak Amal
- ID
- ID DKM
- Periode/Waktu
- Isi

### Donatur
- ID
- Nama
- Alamat
- Kontak
- Tanggal donasi
- Jumlah donasi
- ID DKM

### Penghasilan lainnya
- ID
- ID DKM
- Keterangan
- Tanggal
- Hasil

### Pengeluaran
- ID
- ID DKM
- Keterangan
- Jumlah dana keluar
- Tanggal

### Pendapatan
- ID
- Periode/waktu
- Jenis
- ID kotak amal
- ID Donatur
- ID Program kerja
- Isi kotak amal
- Jumlah donasi
- Hasil Program kerja
- Jumlah Pendapatan

### Saldo Akhir (Selisih)
- ID
- Periode/Waktu
- ID Pendapatan
- Jumlah pendapatan
- ID Belanja
- Jumlah Belanja
- Saldo
