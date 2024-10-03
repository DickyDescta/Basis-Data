CREATE DATABASE akademik;

CREATE TABLE dosen (
  Nip varchar(12) NOT NULL,
  Nama_Dosen varchar(25) NOT NULL,
  PRIMARY KEY (Nip)
);

CREATE TABLE mahasiswa (
  Nim varchar(9) NOT NULL,
  Nama_Mhs varchar(25) NOT NULL,
  Tgl_Lahir date NOT NULL,
  Alamat varchar(50) NOT NULL,
  Jenis_Kelamin enum('Laki-laki','Perempuan') NOT NULL,
  IPK decimal (10,2),
  PRIMARY KEY (Nim)
);

CREATE TABLE matakuliah (
  Kode_MK varchar(6) NOT NULL,
  Nama_MK varchar(20) NOT NULL,
  Sks int(2) NOT NULL,
  PRIMARY KEY (Kode_MK)
); 
CREATE TABLE perkuliahan (
  Nim varchar(9) DEFAULT NULL,
  Kode_MK varchar(7) DEFAULT NULL,
  Nip varchar(12) DEFAULT NULL,
  Kehadiran decimal(6,2), 
  Nilai_Bobot char(1) NOT NULL,
  Nilai_Angka decimal(6,2), 
  Poin varchar(1),
  KEY Nip (Nip),
  KEY Nim (Nim),
  KEY Kode_MK (Kode_MK),
  CONSTRAINT perkuliahan_ibfk_1 FOREIGN KEY (Nip) REFERENCES dosen (Nip) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT perkuliahan_ibfk_2 FOREIGN KEY (Nim) REFERENCES mahasiswa (Nim) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT perkuliahan_ibfk_3 FOREIGN KEY (Kode_MK) REFERENCES matakuliah (Kode_MK) ON DELETE CASCADE ON UPDATE CASCADE
); 

SELECT * FROM Dosen
WHERE Nip = '0429038801';

INSERT INTO Dosen(NIP, Nama_Dosen) VALUES ('0429038801', 'Mariana, S.Kom., MMSI.');
UPDATE Dosen set Nama_Dosen = 'Nurita, S.Kom., MMSI.'
WHERE Nip = '0429038801';
DELETE FROM Dosen
WHERE Nip = '0429038801';



