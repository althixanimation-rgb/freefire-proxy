FROM alpine:latest

RUN apk add --no-cache shadowsocks-libev netcat-openbsd

ENV SERVER_ADDR=0.0.0.0
ENV SERVER_PORT=10000
ENV PASSWORD=mypassword123
ENV METHOD=chacha20-ietf-poly1305

EXPOSE 10000 8080

CMD ss-server -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD -m $METHOD -u & while true; do { echo -e 'HTTP/1.1 200 OK\r\nContent-Length: 2\r\n\r\nOK'; } | nc -l -p 8080; done
