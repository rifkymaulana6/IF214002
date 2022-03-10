# Ide Solusi: Catatan Keuangan Masjid

## Deskripsi
Aplikasi ini dibuat untuk membantu para pengurus DKM Masjid dalam mendata keuangan Masjid agar terhindar dari fitnah.
Aplikasi ini memiliki fitur-fitur utama sebagai berikut:
- Mencatat pemasukan dari kotak amal mingguan.
- Mencatat pemasukan dari Donatur/orang yang ingin berinfaq.
- Mencatat pemasukan dari program kerja DKM.
- Mencatat pengeluaran untuk belanja kebutuhan masjid.

## Entitas dan Atribut
### DKM
- ID
- NIK
- Nama
- Alamat
- Kontak
- Jabatan

### Kotak Amal
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

## Program Kerja
- ID
- ID DKM
- Jenis
- Tanggal
- Hasil

### Belanja
- ID
- ID DKM
- Nama Barang/Jasa
- Harga
- Tanggal
- Jumlah

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
