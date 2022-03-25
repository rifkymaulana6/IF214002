# Ide Solusi: Catatan Keuangan Masjid

## Deskripsi
Aplikasi ini dibuat untuk membantu para pengurus DKM Masjid dalam mendata keuangan Masjid agar terhindar dari fitnah.
Aplikasi ini memiliki fitur-fitur utama sebagai berikut:
- DKM mencatat pemasukan dari kotak amal mingguan.
- DKM mencatat pemasukan dari Donatur/orang yang ingin berinfaq.
- DKM mencatat pengeluaran untuk belanja kebutuhan masjid.
- Menghitung saldo akhir.

![ERD drawio](https://user-images.githubusercontent.com/81552476/160031934-455f3096-15b9-4b6a-abb9-30edf94c7e1f.png)

## Entitas dan Atribut
### Masjid
- Nama
- Alamat
- \* Kode wilayah
- \* Titik koordinat
- \* Rekening masjid

### DKM
- \* ID
- Nama
- Alamat
- \* Kontak
- Jabatan

### Penarikan Isi Kotak Amal
- \* No penarikan
- ID DKM
- \* Periode/Waktu
- Isi

### Infaq
- \* Tanggal
- Jumlah
- ID DKM
- keterangan

### Donatur
- ID
- Nama
- Kontak
- Alamat

### Pengeluaran
- ID DKM
- Keterangan
- Jumlah dana keluar
- \* Tanggal
- \* Nota

### Saldo Akhir (Selisih)
- \* Periode/Waktu
- Penarikan isi kotak amal
- Penerimaan Donasi
- Jumlah pendapatan
- Pengeluaran
- Jumlah pengeluaran
- Saldo

## Relationship
- Masjid 1 1 - 1 N DKM
- DKM 1 1 - 0 N Penarikan kotak amal
- DKM 1 1 - 0 N Infaq
- Infaq 1 N - 1 1 Donatur
- DKM 1 1 - 0 N Pengeluaran
