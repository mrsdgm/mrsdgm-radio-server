FROM alpine:3.19

RUN apk add --no-cache icecast liquidsoap bash

COPY icecast.xml /etc/icecast.xml
COPY radio.liq /etc/radio.liq
COPY music/ /music/

RUN mkdir -p /var/log/icecast && chown -R icecast:icecast /var/log/icecast /etc/icecast.xml /music

EXPOSE 8000

CMD ["sh", "-c", "icecast -c /etc/icecast.xml -b && sleep 2 && liquidsoap /etc/radio.liq"]
