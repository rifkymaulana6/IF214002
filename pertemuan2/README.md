# Ide Solusi: Catatan Keuangan Masjid

<img width="960" alt="Screenshot 2022-03-11 125004" src="https://user-images.githubusercontent.com/81552476/157810266-bab59459-1970-44f5-ae57-d3a3c298ce1a.png">

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
