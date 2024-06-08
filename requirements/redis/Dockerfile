FROM debian:oldstable

EXPOSE 6379

RUN apt update && apt upgrade && apt install -y redis-server
COPY ./tools/redis.conf /etc/redis/redis.conf

CMD redis-server --protected-mode no