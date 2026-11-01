-- 1. buat role perantara untuk data engineer agar bisa CREATE, MODIFY, DROP Objects, CRUD semua tabel
CREATE ROLE group_owners;

-- 2. buat user roles 
CREATE ROLE backend_dev WITH LOGIN PASSWORD 'backend123';
CREATE ROLE bi_dev WITH LOGIN PASSWORD 'bidev123';
CREATE ROLE data_engineer WITH LOGIN PASSWORD 'de123';

-- 3. berikan kepemilikan schema dan tabel ke group_owners 
ALTER SCHEMA SALAM OWNER TO group_owners;
ALTER TABLE SALAM.mahasiswas OWNER TO group_owners;

-- 4. masukkan data_engineer sebagai member group_owners
GRANT group_owners TO data_engineer;

-- 5. bi_dev (Hanya Read)
GRANT USAGE ON SCHEMA SALAM TO bi_dev;
GRANT SELECT ON ALL TABLES IN SCHEMA SALAM TO bi_dev;

-- 6. backend_dev (CRUD semua tabel)
GRANT USAGE ON SCHEMA SALAM TO backend_dev;
GRANT SELECT, INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA SALAM TO backend_dev;