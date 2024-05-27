FROM alpine:3.19

RUN apk update && apk add --no-cache mariadb

COPY ./conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306