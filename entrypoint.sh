#!/bin/bash
set -e

echo "Menunggu database PostgreSQL di ${DB_HOST}:${DB_PORT} ..."
until pg_isready -h "${DB_HOST}" -p "${DB_PORT}" -U "${DB_USER}"; do
  sleep 2
done

echo "Database sudah siap, menjalankan Odoo..."
exec odoo -c /etc/odoo/odoo.conf
