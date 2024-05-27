FROM debian:oldstable

RUN apt update && apt upgrade && apt install -y mariadb-server

COPY ./conf/mariadb.conf /etc/mysql/mariadb.conf.d/50-server.cnf
RUN chmod 0444 /etc/mysql/mariadb.conf.d/50-server.cnf

EXPOSE 3306

CMD [ "mysqld_safe" ]