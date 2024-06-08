#!/bin/sh

if [ ! -d "/var/lib/mysql/$DB_NAME" ]; then

	mysql_install_db 

	mysqld --bind-address=0.0.0.0 &

	while ! mysqladmin ping --silent; do
		sleep 1
	done

	mariadb -u root -e "
	CREATE DATABASE ${DB_NAME};
	GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO '${DB_USER}'@'%' IDENTIFIED BY '${DB_PASS}';
	FLUSH PRIVILEGES;"

	service mariadb stop

fi

mysqld --bind-address=0.0.0.0