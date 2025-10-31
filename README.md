# 🚀 Odoo 17 on Nrapken.dev

### Cara Deploy di Nrapken
1. Upload semua file ini ke repository GitHub kamu.
2. Di Nrapken → pilih **Buat Aplikasi Baru**.
3. Hubungkan repo GitHub kamu.
4. Tambahkan environment variables berikut:
   ```
   DB_HOST=<host postgresql kamu>
   DB_PORT=5432
   DB_USER=<username>
   DB_PASSWORD=<password>
   DB_NAME=odoo_db
   ```
5. Deploy, tunggu build selesai.
6. Akses via domain bawaan Nrapken → port `8069`.

### Tambah Modul Custom
Letakkan modul kamu di folder:
```
/addons/
```
lalu redeploy.
