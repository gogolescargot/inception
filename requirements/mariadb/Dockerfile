FROM debian:oldstable

EXPOSE 3306

RUN apt update && apt upgrade && apt install -y mariadb-server

COPY ./tools/setup.sh /etc/mysql/setup.sh

RUN mkdir -p /run/mysqld && chmod 777 /run/mysqld

CMD /etc/mysql/setup.sh