#!/bin/bash
set -e

while read file
do
    psql --username ${DB_USER} --dbname ${DB_NAME} -f "/tmp/haikudatabase/${file}"
done < "/tmp/haikudatabase/apply_order.txt"
