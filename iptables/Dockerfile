FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    iptables \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
CMD ["/run.sh"]