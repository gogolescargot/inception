wp config create \
	--allow-root \
	--dbname=${DB_NAME} \
	--dbuser=${DB_USER} \
	--dbpass=${DB_PASS} \
	--dbhost=${DB_HOST}:${DB_PORT} \
	--path='/var/www/wordpress'