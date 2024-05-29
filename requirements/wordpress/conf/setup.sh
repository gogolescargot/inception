#!/bin/sh

wp config create \
	--allow-root \
	--dbname=$DB_NAME \
	--dbuser=$DB_USER \
	--dbpass=$DB_PASS \
	--dbhost=$DB_HOST \
	--path='/var/www/wordpress'