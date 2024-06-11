sleep 3

mkdir -p /var/www/wordpress/adminer

mv adminer-4.8.1-mysql.php /var/www/adminer/index.php

php-fpm7.4 -F