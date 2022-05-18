SELECT id, nama_lengkap, kode_kabupaten, nomor_hp, gender, tanggal_lahir, ijazah_terakhir, pekerjaan, penghasilan_bulanan, TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) AS umur FROM penduduk
WHERE TIMESTAMPDIFF(YEAR, tanggal_lahir, CURDATE()) > 25 AND kode_kabupaten='3204';