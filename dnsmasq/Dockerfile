FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    dnsmasq \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD ["/usr/sbin/dnsmasq", "-d"]
