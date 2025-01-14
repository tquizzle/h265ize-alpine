FROM node:18.3-alpine3.14
MAINTAINER https://github.com/tquizzle

LABEL h265ize_version="bleeding edge" architecture="amd64" maintainer="Travis Quinnelly" maintainer_url="https://github.com/tquizzle/"

RUN apk add --no-cache --update-cache git ffmpeg openssh-client && \
    npm install FallingSnow/h265ize --global 

ENV INPUT=/input
ENV OUTPUT=/output

WORKDIR /h265ize

ENTRYPOINT ["/usr/local/bin/h265ize", "/input", "-d", "/output"]