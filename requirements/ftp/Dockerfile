FROM debian:oldstable

EXPOSE 21

RUN apt update && apt upgrade && apt install -y vsftpd
RUN mkdir -p /var/run/vsftpd/empty \
	&& chmod 755 /var/run/vsftpd/empty

COPY ./tools/vsftpd.conf /etc/vsftpd.conf

CMD vsftpd