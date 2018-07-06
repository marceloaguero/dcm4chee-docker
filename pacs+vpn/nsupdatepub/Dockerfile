FROM alpine:latest

RUN apk add --no-cache bind-tools curl

RUN mkdir /config

COPY Kcvzingenieria.com.* /config/

COPY nsupdate /etc/periodic/15min/

CMD crond -l 2 -f