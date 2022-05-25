## Perbaikan ERD dari [ERD Awal](https://github.com/rifkymaulana6/IF214002/tree/main/pertemuan6)
![ERD-fix drawio](https://user-images.githubusercontent.com/81552476/170210415-f3783e15-7221-4c91-aec5-7f4098103f6b.png)

## DDL
Saya lupa men-copy code nya jadi saya export saja dalam bentuk [sql schema](https://github.com/rifkymaulana6/IF214002/blob/main/pertemuan11/catatan-keuangan-masjid.sql).

## DML
```sql
INSERT INTO masjid VALUES ('22Q8+552', 'As-Syuhada', 45375, 'Kec. Cibugel, Kabupaten Sumedang, Jawa Barat 45375');

INSERT INTO dkm (nama, kontak, alamat) VALUES ('Lili Sutarli', '081234567890', 'Dsn. Cidomas, No. 12, 03/03, Ds. Buanamekar, Kec.Cibugel');
INSERT INTO dkm (nama, kontak, alamat) VALUES ('Jajang Ruhita', '081234567812', 'Dsn. Cidomas, No. 20, 03/03, Ds. Buanamekar, Kec.Cibugel');
INSERT INTO dkm (nama, kontak, alamat) VALUES ('Suhendar', '081234567501', 'Dsn. Cidomas, No. 24, 03/03, Ds. Buanamekar, Kec.Cibugel');

INSERT INTO kotak_amal VALUES (1, '2022-05-06', 793500);
INSERT INTO kotak_amal VALUES (1, '2022-05-13', 1023000);
INSERT INTO kotak_amal VALUES (1, '2022-05-20', 954200);

INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Kevin', '082126201022', '2022-01-19', 2000000, 'Uang Tunai');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Bernardo', '085314937401', '2022-01-25', 700000, 'Bahan Bangunan');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Aguero', '082126201033', '2022-02-02', 222000, 'Makanan');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Hamba Allah', '', '2022-02-15', 10000000, 'Transfer');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Hamba Allah', '', '2022-02-16', 7000000, 'Transfer');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Hamba Allah', '', '2022-02-17', 13000000, 'Transfer');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Mbappe', '', '2022-02-25', 150000, 'Uang Tunai');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Hamba Allah', '082117201020', '2022-03-09', 75000, 'Makanan');
INSERT INTO infaq (id_dkm, donatur, kontak, tanggal, jumlah_infaq, keterangan) VALUES (2, 'Benzema', '', '2022-04-20', 12000000, 'Uang Tunai');

INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-01-21', 500000, 'nota1.jpg', 'cat tembok');
INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-02-05', 200000, 'nota2.jpg', 'makanan untuk pengajian bulanan');
INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-02-14', 50000, 'nota3.jpg', 'lampu wc');
INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-02-19', 70000, 'pln1.jpg', 'bayar listrik feb22');
INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-03-02', 20000, 'nota4.jpg', 'pengharum ruangan');
INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-03-19', 60000, 'pln2.jpg', 'bayar listrik mar22');
INSERT INTO pengeluaran (id_dkm, tanggal, jml_pengeluaran, bukti, keterangan) VALUES (3, '2022-03-27', 150000, 'nota5.jpg', 'keran dan alat kebersihan');
```

## DQL
