#!/bin/bash
set -e

for f in /tmp/definition/*.sql;
do
    psql --username $DB_USER --dbname $DB_NAME -f "${f}"
done