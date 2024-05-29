FROM debian:oldstable

EXPOSE 9000

RUN apt update && apt upgrade && apt install -y wget tar php php-mysqli php-fpm
COPY ./tools/wordpress.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY ./tools/setup.sh /etc/wordpress/setup.sh

RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
	&& chmod +x wp-cli.phar \
	&& mv wp-cli.phar /usr/local/bin/wp-cli.phar

RUN mkdir -p /var/www/wordpress

RUN chmod +x /etc/wordpress/setup.sh
RUN service php7.4-fpm start

CMD /etc/wordpress/setup.sh