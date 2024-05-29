#!/bin/sh


if [ ! -d /var/lib/mysql/$DB_NAME ]; then
	mysqld_safe --user=root --bind-address=mariadb &
	sleep 4
	mariadb -u root -e "
	CREATE DATABASE ${DB_NAME};
	GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
	FLUSH PRIVILEGES;"
    service mariadb stop
	
fi
mysqld_safe --user=root --bind-address=mariadb