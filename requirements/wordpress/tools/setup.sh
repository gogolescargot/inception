#!/bin/sh

if [ -z "$(ls -A /var/www/wordpress)" ]; then

	wp-cli.phar core download \
	--allow-root \
	--path=/var/www/wordpress

	mkdir -p /var/www/wordpress/

	while ! wp-cli.phar config create \
	--allow-root \
	--force \
	--dbname=$DB_NAME \
	--dbuser=$DB_USER \
	--dbpass=$DB_PASS \
	--dbhost=$DB_HOST \
	--path=/var/www/wordpress; do
		sleep 1
	done

	wp-cli.phar core install \
	--allow-root \
	--url=ggalon.42.fr \
	--title=ggalon \
	--admin_user=$WP_ADMIN_USER \
	--admin_email=$WP_ADMIN_MAIL \
	--admin_password=$WP_ADMIN_PASS \
	--path=/var/www/wordpress

	wp-cli.phar user create $WP_USER $WP_MAIL \
	--allow-root \
	--role=author \
	--user_pass=$WP_PASS \
	--path=/var/www/wordpress

	chown www-data:www-data /var/www/wordpress -R
	chmod 755 /var/www/wordpress -R

fi

php-fpm7.4 -F