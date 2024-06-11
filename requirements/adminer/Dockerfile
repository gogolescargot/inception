FROM debian:oldstable

RUN apt update && apt upgrade && apt install -y adminer

COPY ./tools/setup.sh /tmp/setup.sh
RUN chmod +x /tmp/setup.sh

CMD /tmp/setup.sh
