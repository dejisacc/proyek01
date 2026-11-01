-- 1. buat schema
CREATE SCHEMA SALAM;

-- 2. buat table dengan 3 Constraint (PK, Unique, Check)
CREATE TABLE SALAM.mahasiswas (
    nim VARCHAR(10) SERIAL PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    tanggal_lahir DATE NOT NULL CHECK (tanggal_lahir <= CURRENT_DATE),
    alamat VARCHAR(100) NOT NULL,
    fakultas VARCHAR(50) NOT NULL,
    jurusan VARCHAR(50) NOT NULL,
    kelompok_keahlian VARCHAR(50)
);