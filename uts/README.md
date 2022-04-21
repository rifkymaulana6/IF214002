### 1. Basis data relasional dapat langsung dibangun menggunakan perintah SQL di sistem basis data seperti MySQL, dsb tanpa ada perancangan terlebih dahulu. Jelaskan apa keuntungan melakukan perancangan basis data terlebih dahulu (menggunakan ERD ataupun Class Diagram) !
**Jawaban:**
Dengan melakukan perancangan basis data terlebih dahulu sebelum membuat basis data nya, basis data yang dibuat akan lebih terstruktur dan terencana. Selain itu juga struktur basis data yang akan dibuat menjadi mudah dimengrti oleh anggota tim yang lain.


### 2. Jelaskan bagaimana cara mentransformasikan proses bisnis sebuah organisasi menjadi struktur data di basis data !
**Jawaban:**
Pertama-tama pahami dulu proses bisnis beserta fitur-fiturnya yang akan dibuatkan struktur datanya kemudian analisis terlebih dahulu setiap entitas dari proses bisnis tersebut. Kemudian tentukan atribut-atribut yang tepat untuk setiap entitas tersebut. Buatkan ERD dengan memperhatikan sertifikasi normalisasi basis datai minimal sampai bentuk ke-3. Kemudian analisis apakah proses bisnis tersebut akan membutuhkan data historis atau tidak, jika iya maka modifikasi kembali ERD-nya. Setelah ERD dirasa sudah sempurna, maka buatlah struktur data di database menggunakan SQL.


### 3. Rancang solusi digital dari satu permasalahan yang ada di sekitar Anda.
A. Saya membuat aplikasi "Pencatatan Kas Masjid" dilatar belakangi oleh saya yang ingin sedikit meringankan tugas DKM masjid dalam menjalankan tugasnya. Juga agar terhindar dari berbagai fitnah yang tidak diinginkan. Jadi aplikasi ini menampung semua pencatatan pemasukan dan pengeluaran kas masjid dengan berbagai detailnya.

B. Fitur-fitur dari aplikasi ini:
- Mencatat pemasukan dari kotak amal mingguan.
- Mencatat pemasukan dari Donatur/orang yang ingin berinfaq.
- Mencatat pengeluaran untuk belanja kebutuhan masjid.
- Menghitung saldo akhir.

C. ERD notasi chen
![ERD notasi chen](https://user-images.githubusercontent.com/81552476/164370800-f0f5fd5e-bb70-49fd-8863-96d932998bef.png)


D. ERD notasi Crow Foot
![ERD crow foot](https://user-images.githubusercontent.com/81552476/164354709-d96a0324-0ec2-4403-adc5-4b79c1d06d43.png)

Flowchart Menu
![flowchart menu](https://user-images.githubusercontent.com/81552476/164372461-5db408dd-a59b-4a3d-a096-499ce096a121.png)
