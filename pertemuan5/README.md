# Ide Solusi: Catatan Keuangan Masjid

## Deskripsi
Aplikasi ini dibuat untuk membantu para pengurus DKM Masjid dalam mendata keuangan Masjid agar terhindar dari fitnah.
Aplikasi ini memiliki fitur-fitur utama sebagai berikut:
- DKM mencatat pemasukan dari kotak amal mingguan.
- DKM mencatat pemasukan dari Donatur/orang yang ingin berinfaq.
- DKM mencatat pengeluaran untuk belanja kebutuhan masjid.
- Menghitung saldo akhir.

![ERD drawio](https://user-images.githubusercontent.com/81552476/161939893-732a1c48-53c9-43b2-8f5a-e1f2463338e1.png)

## Entitas dan Atribut
### Masjid
- Nama
- Alamat
- \* Kode wilayah
- \* Rekening masjid

### DKM
- \* ID
- Nama
- Alamat
- \* Kontak

### Kotak Amal
- \* No penarikan
- ID DKM
- \* Periode/Waktu
- Isi
