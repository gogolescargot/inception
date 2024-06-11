FROM alpine:3.19

COPY ./tools/index.html /tmp/html/index.html
COPY ./tools/styles.css /tmp/html/styles.css
COPY ./tools/setup.sh /tmp/setup.sh

RUN chmod +x /tmp/setup.sh

CMD /tmp/setup.sh
