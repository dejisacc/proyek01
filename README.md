# Tugas Manajemen Basis Data - Kontainerisasi & Role Management

**Nama:** Firda Azzahra  
**NIM:** 1247050059 
**Program Studi:** Teknik Informatika  
**Universitas:** UIN Sunan Gunung Djati Bandung  

---

## 📄 Laporan Penugasan Lengkap
Dokumentasi langkah demi langkah (*screenshot* Docker Desktop, pengujian koneksi di pgAdmin4 & DBeaver, serta bukti *query constraint* dan hak akses *role* berjalan dengan sukses) telah disusun dalam laporan berikut:  
👉 **[Klik di Sini untuk Membuka Laporan Tugas (PDF/Google Docs) 🔗](https://docs.google.com/document/d/1CJLrpVcNSFv_AQ7EVV_OamStFiDJmbYm05vtpVKrmOU/edit?usp=sharing)**


---

## 📌 Deskripsi Proyek
Repositori ini berisi implementasi ujian/tugas Manajemen Basis Data yang mencakup:
1. **Deployment Service:** Konfigurasi kontainer PostgreSQL dan pgAdmin4 menggunakan Docker Compose dengan manajemen port *custom* berbasis NIM. Kredensial diamankan menggunakan file `.env`.
2. **Perancangan Skema & Tabel:** Pembuatan skema `SALAM` dan tabel `mahasiswas` yang divalidasi menggunakan *Primary Key*, *Unique Constraint*, serta *Check Constraint*.
3. **Manajemen User & Hak Akses (Role):** Implementasi arsitektur keamanan *database* (termasuk *Group Role*) dengan spesifikasi:
   - `bi_dev`: Hak akses *Read/Select-Only*.
   - `backend_dev`: Hak akses penuh untuk modifikasi data (CRUD), tanpa wewenang modifikasi/drop struktur objek.
   - `data_engineer`: Wewenang administratif penuh untuk *CREATE*, *MODIFY*, *DROP* *objects* sekaligus CRUD seluruh tabel.

## ⚙️ Persyaratan Sistem (*Prerequisites*)
- VS Code/sejenisnya
- Docker Engine & Docker Compose (Docker Desktop)
- DBeaver (untuk pengujian koneksi eksternal & eksekusi DDL/DML/DCL)
- Web Browser (untuk akses internal pgAdmin4)

## 🚀 Langkah Menjalankan Service
1. *Clone* repositori ini ke komputer lokal:
   ```bash
   git clone https://github.com/dejisacc/proyek01.git
   ```
2. Ubah nama file `.env.example` menjadi `.env` lalu sesuaikan kredensial di dalamnya:
   ```bash
   cp .env.example .env
   ```
3. Jalankan Docker Compose
   Buka terminal pada direktori proyek ini, lalu jalankan perintah berikut untuk membangun dan menghidupkan container di latar belakang:
   ```bash
   docker compose up -d
   ```
4. Akses Database
   pgAdmin4 (Internal Docker): Buka browser dan akses http://localhost:44XXX (sesuai dengan 3 digit akhir nim) Login menggunakan kredensial email dan password di .env.  
   DBeaver (Eksternal Docker): Buat koneksi PostgreSQL baru dengan Host localhost, Port 22XXX, (sesuai dengan 3 digit akhir nim) serta username dan password yang telah disesuaikan di .env.

5. jalankan query sql
