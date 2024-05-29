FROM debian:oldstable

# PORT
EXPOSE 9000

# DEPENDENCIES
RUN apt update && apt upgrade && apt install -y wget tar php php-mysqli php-fpm
COPY ./conf/wordpress.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./conf/setup.sh /etc/wordpress/setup.sh
# COPY ./conf/wp-config.php /var/www/wordpress/wp-config.php

# WORDPRESS CLI
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp

# WORDPRESS
RUN mkdir -p /var/www/wordpress
RUN wp core download --allow-root --path=/var/www/wordpress \
	&& chown www-data:www-data /var/www/wordpress -R \
	&& chmod 755 /var/www/wordpress -R

# WORDPRESS DB
RUN chmod +x /etc/wordpress/setup.sh
RUN service php7.4-fpm start


CMD php-fpm7.4 -F