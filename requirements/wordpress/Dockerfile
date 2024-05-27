FROM alpine:3.19

WORKDIR /var/www

# DEPENDENCIES
RUN apk update && apk add --no-cache wget tar php83-fpm php83-mysqli

# WORDPRESS 
RUN wget https://wordpress.org/wordpress-6.5.3.tar.gz \
	&& tar -xvzf wordpress-6.5.3.tar.gz \
	&& rm wordpress-6.5.3.tar.gz

COPY ./conf/wordpress.conf /etc/php83/php-fpm.d/www.conf

EXPOSE 9000

CMD ["php-fpm83", "-F"]