FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
    git \
    jekyll \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN git config --global pull.rebase false
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
VOLUME [ "/root/.ssh", "/data", "/out"]