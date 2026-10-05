FROM shadowsocks/shadowsocks-libev
ENV SERVER_ADDR=0.0.0.0
ENV SERVER_PORT=10000
ENV PASSWORD=mypassword123
ENV METHOD=chacha20-ietf-poly1305
EXPOSE 10000
CMD ["ss-server", "-s", "0.0.0.0", "-p", "10000", "-k", "mypassword123", "-m", "chacha20-ietf-poly1305", "-u"]
