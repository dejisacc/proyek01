-- Pembuktian bi_dev (Hanya Select)
SET ROLE bi_dev;
SELECT * FROM SALAM.mahasiswas; 
INSERT INTO SALAM.mahasiswas (nim, nama, email, tanggal_lahir, alamat, fakultas, jurusan, kelompok_keahlian) 
VALUES ('1246050087', 'Luca Sitompul', 'luca@gmail.com', '2000-01-01', 'Medan', 'Sains dan Teknologi', 'Teknik Informatika', 'Artificial Intelligence'); --hrsny gagal
UPDATE SALAM.mahasiswas SET alamat = 'Test' WHERE nim = '1247050059'; 
DELETE FROM SALAM.mahasiswas WHERE nim = '1247050059';
RESET ROLE;

-- Pembuktian backend_dev (CRUD, Tidak Bisa Drop Tabel)
SET ROLE backend_dev;
INSERT INTO SALAM.mahasiswas (nim, nama, email, tanggal_lahir, alamat, fakultas, jurusan, kelompok_keahlian) 
VALUES ('1246050087', 'Luca Sitompul', 'luca@gmail.com', '2000-01-01', 'Medan', 'Sains dan Teknologi', 'Teknik Informatika', 'Artificial Intelligence'); 
UPDATE SALAM.mahasiswas SET alamat = 'Jakarta Barat' WHERE nim = '1246050087'; 
DELETE FROM SALAM.mahasiswas WHERE nim = '1246050087'; 

CREATE TABLE SALAM.tabel_tes_backend (id INT); -- hrsny gagal
ALTER TABLE SALAM.mahasiswas ADD COLUMN tes_kolom VARCHAR(10); -- hrsny gagal
DROP TABLE SALAM.mahasiswas; -- hrsny gagal, must be owner
RESET ROLE;

-- Pembuktian data_engineer (CREATE, MODIFY, DROP semua objects, CRUD semua table)
SET ROLE data_engineer;
INSERT INTO SALAM.mahasiswas (nim, nama, email, tanggal_lahir, alamat, fakultas, jurusan, kelompok_keahlian) 
VALUES ('1246050087', 'Luca Sitompul', 'luca@gmail.com', '2000-01-01', 'Medan', 'Sains dan Teknologi', 'Teknik Informatika', 'Artificial Intelligence'); 
UPDATE SALAM.mahasiswas SET alamat = 'Jakarta Barat' WHERE nim = '1246050087'; 
DELETE FROM SALAM.mahasiswas WHERE nim = '1246050087';

ALTER TABLE SALAM.mahasiswas ADD COLUMN status_mahasiswa VARCHAR(10) DEFAULT 'Aktif';

CREATE TABLE SALAM.tabel_dummy_de (id_dummy INT PRIMARY KEY, nama_dummy VARCHAR(50));
DROP TABLE SALAM.tabel_dummy_de;
RESET ROLE;