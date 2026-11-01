-- 1. data yang valid 
INSERT INTO SALAM.mahasiswas (nim, nama, email, tanggal_lahir, alamat, fakultas, jurusan, kelompok_keahlian)
VALUES ('1247050059', 'Deji Simatupang', 'deji@gmail.com', '2000-01-01', 'Medan', 'Sains dan Teknologi', 'Teknik Informatika', 'Artificial Intelligence');

-- 2. data invalid krn nim sudah dipakai
INSERT INTO SALAM.mahasiswas (nim, nama, email, tanggal_lahir, alamat, fakultas, jurusan, kelompok_keahlian)
VALUES ('1247050059', 'Armando Manurung', 'armando@gmail.com', '2005-02-02', 'Bandung', 'Sains dan Teknologi', 'Teknik Informatika', 'Distributed Computing');

-- 3. data invalid krn email sudah terdaftar
INSERT INTO SALAM.mahasiswas (nim, nama, email, tanggal_lahir, alamat, fakultas, jurusan, kelompok_keahlian)
VALUES ('12460400098', 'Patricia Ginting', 'deji@gmail.com', '2003-03-03', 'Jakarta', 'Sains dan Teknologi', 'Matematika', 'Industri dan Keuangan');

-- 4. data invalid krn tanggal_lahir di masa depan
INSERT INTO SALAM.mahasiswas (nim, nama, email, tanggal_lahir, alamat, fakultas, jurusan, kelompok_keahlian)
VALUES ('1243010097', 'Dominic Simanjuntak', 'dominic@gmail.com', '2025-12-12', 'Surabaya', 'Sains dan Teknologi', 'Teknik Elektro', 'Telekomunikasi');
