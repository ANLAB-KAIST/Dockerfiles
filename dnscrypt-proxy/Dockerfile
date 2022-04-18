FROM alpine:3.15

ARG DNSCRYPT_PROXY_VERSION=2.1.1

RUN wget -q -O "dnscrypt-proxy.tar.gz" "https://github.com/DNSCrypt/dnscrypt-proxy/releases/download/$DNSCRYPT_PROXY_VERSION/dnscrypt-proxy-linux_x86_64-$DNSCRYPT_PROXY_VERSION.tar.gz" && \
    tar -xvzf dnscrypt-proxy.tar.gz && \
    cp linux-x86_64/dnscrypt-proxy /bin/dnscrypt-proxy && \
    rm -rf linux-x86_64 

CMD [ "dnscrypt-proxy" ]