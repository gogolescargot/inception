FROM debian:oldstable

# PORT
EXPOSE 3306

# DEPENDENCIES
RUN apt update && apt upgrade && apt install -y mariadb-server

# SETUP
COPY ./conf/setup.sh /etc/mysql/setup.sh
RUN chmod +x /etc/mysql/setup.sh

CMD service mariadb start \
    && sh /etc/mysql/setup.sh \
    && mysqld_safe