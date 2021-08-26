FROM node:lts-alpine3.14
MAINTAINER https://github.com/tquizzle

LABEL h265ize_version="bleeding edge" architecture="amd64"

RUN apk add --no-cache --update-cache git ffmpeg openssh-client && \
    npm install FallingSnow/h265ize --global # rm /var/cache/apk/*

ENV INPUT=/input
ENV OUTPUT=/output

WORKDIR /h265ize

ENTRYPOINT ["/usr/local/bin/h265ize", "/input", "-d", "/output"]
