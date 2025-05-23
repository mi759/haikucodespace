#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER $DB_USER PASSWORD '$DB_PASSWORD';
	CREATE DATABASE $DB_NAME OWNER $DB_USER LOCALE 'ja_JP.UTF-8' TEMPLATE template0;
	GRANT ALL PRIVILEGES ON DATABASE $DB_NAME TO $DB_USER;
EOSQL