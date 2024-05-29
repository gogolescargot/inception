FROM debian:oldstable

# PORT
EXPOSE 3306

# DEPENDENCIES
RUN apt update && apt upgrade && apt install -y mariadb-server

# SETUP
COPY ./conf/setup.sh /etc/mysql/setup.sh

RUN mkdir -p /run/mysqld && chmod 777 /run/mysqld

CMD /etc/mysql/setup.sh