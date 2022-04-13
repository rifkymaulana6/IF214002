CREATE TABLE infaq (
  id_infaq int NOT NULL,
  id_dkm int NOT NULL,
  id_donatur int NOT NULL,
  tanggal date NOT NULL,
  jml_infaq int not NULL,
  keterangan varchar(255),
  PRIMARY KEY (id_infaq),
  FOREIGN KEY (id_dkm) REFERENCES dkm(id_dkm),
  FOREIGN KEY (id_donatur) REFERENCES donatur(id_donatur)
)