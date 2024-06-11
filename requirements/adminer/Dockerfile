FROM debian:oldstable

EXPOSE 9001

RUN apt update && apt upgrade && apt install -y wget php php-fpm php-mysqli

RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1-mysql.php
COPY ./tools/adminer.conf /etc/php/7.4/fpm/pool.d/www.conf

COPY ./tools/setup.sh /tmp/setup.sh
RUN chmod +x /tmp/setup.sh

RUN service php7.4-fpm start

CMD /tmp/setup.sh
