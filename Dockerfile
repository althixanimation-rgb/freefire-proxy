FROM shadowsocks/shadowsocks-libev
ENV SERVER_ADDR=0.0.0.0
ENV SERVER_PORT=10000
ENV PASSWORD=mypassword123
ENV METHOD=chacha20-ietf-poly1305
EXPOSE 10000
CMD exec ss-server -s $SERVER_ADDR -p $SERVER_PORT -k $PASSWORD -m $METHOD -u
