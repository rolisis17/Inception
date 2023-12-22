#!/bin/bash

if [ ! -d "/var/lib/mysql/$DBNAME" ]; then
service mariadb start;

sleep 5;

mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DBNAME;"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '$DBUSER'@'%' IDENTIFIED BY '$DBPASS'; FLUSH PRIVILEGES;"
fi

exec mysqld_safe --bind-address=0.0.0.0
