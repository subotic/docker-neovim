FROM debian:stretch-slim

LABEL maintainer="ibs@subotic.ch"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y neovim git curl wget ca-certificates less tree && \
    apt-get clean && \ 
    rm -rf /var/lib/apt/lists/* 

CMD bash
