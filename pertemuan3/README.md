# Ide Solusi: Catatan Keuangan Masjid

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
- Rekening masjid

### DKM
- ID
- Nama
- Alamat
- Kontak
- Jabatan

### Penarikan Isi Kotak Amal
- No penarikan
- ID DKM
- Periode/Waktu
- Isi

### Donatur
- Nama
- Alamat
- Kontak
- Tanggal donasi
- Jumlah donasi

### Penerimaan Infaq/Donasi
- Tanggal
- Jumlah
- Donatur
- ID DKM

### Pengeluaran
- ID DKM
- Keterangan
- Jumlah dana keluar
- Tanggal

### Saldo Akhir (Selisih)
- Periode/Waktu
- Penarikan isi kotak amal
- Penerimaan Donasi
- Jumlah pendapatan
- Pengeluaran
- Jumlah pengeluaran
- Saldo
