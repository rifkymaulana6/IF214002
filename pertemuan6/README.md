# Normalisasi Basis Data

![ERD drawio](https://user-images.githubusercontent.com/81552476/162356574-52159dd3-8f50-4c7e-bb43-4c4a0c7ebc04.png)

Memperbaiki beberapa tipe data, primary key, dan atribut.

### Masjid
|🔑titk_koordinat|🔑nama|alamat|kode_wilayah|
|---|---|---|---|
|213.2387.127|Al - Ikhlas|Jalan A No. 2|25375|
|213.2387.011|Riyadul Aliyah|Jalan A No.15|25375|

### DKM
|🔑id_dkm|nama|kontak|alamat|
|---|---|---|---|
|1|Jajang|082123456780|Jalan A No. 17|
|2|Hendar|082123456789|Jalan C No. 3|

### Donatur
|🔑id_donatur|nama|kontak|alamat|
|---|---|---|---|
|1|Rifky|082123456781|Jalan X No.96|
|2|Maulana|082123456782|Jalan Y No.002|
|3|Hamba Allah|-|-|

### Infaq
|🔑id_infaq|id_dkm|id_donatur|tanggal|jml_infaq|keterangan|
|---|---|---|---|---|---|
|1|2|1|12-02-2022|Rp.700.000|-|
|2|2|3|25-03-2022|Rp.1.500.000|-|
|3|2|3|25-03-2022|Rp.3.500.000|-|

### Kotak Amal
|🔑id_dkm|🔑tanggal|isi_kotak|
|---|---|---|
|1|06-12-2021|Rp.327.000|
|1|23-12-2021|Rp.503.000|

### Pengeluaran
|🔑id_pengeluaran|id_dkm|tanggal|jml_pengeluaran|bukti|keterangan|
|---|---|---|---|---|---|
|1|1|06-03-2002|Rp.23.000|struk1.jpg|pulsa listrik|
|2|1|18-03-2002|Rp.150.000|nota1.jpg|speaker|
