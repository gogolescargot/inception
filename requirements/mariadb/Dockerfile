FROM debian:oldstable

# PORT
EXPOSE 3306

# DEPENDENCIES
RUN apt update && apt upgrade && apt install -y mariadb-server

# SETUP
COPY ./conf/setup.sh /etc/mysql/setup.sh

# CREATE DB
RUN service mariadb start \
	&& chmod +x /etc/mysql/setup.sh \
	&& /etc/mysql/setup.sh 

CMD [ "mysqld", "--bind-address=0.0.0.0" ]