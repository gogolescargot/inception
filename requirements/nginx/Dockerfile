FROM alpine:3.19

EXPOSE 443

RUN apk update && apk add --no-cache nginx

COPY ./tools/nginx.conf /etc/nginx/nginx.conf
COPY ./tools/fastcgi-php.conf /etc/nginx/snippets/fastcgi-php.conf

CMD nginx -g 'daemon off;'