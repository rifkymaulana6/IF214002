## Cheat Sheet MySQL
![cheat-sheet-mysql](https://user-images.githubusercontent.com/81552476/168580446-d7982b4e-27d0-49d0-9c28-843c1dbd5fa0.png)

## Tugas
- Membuat query untuk mencari penduduk berusia diatas 25 tahun yang berada di kabupaten 3204 dari [data ini](https://github.com/insanalamin/IF214002/blob/main/pertemuan10/penduduk.sql)

```sql
SELECT id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan, TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) AS umur FROM penduduk
WHERE TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) > 25 AND kode_kabupaten='3204';
```
