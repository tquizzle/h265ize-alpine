FROM node:18.3-alpine3.14@sha256:a648bbe9a0af3991ef1bf02208b2e9b04b4bad49790efc5740a43d13cd1482b5
MAINTAINER https://github.com/tquizzle

LABEL h265ize_version="bleeding edge" architecture="amd64" maintainer="Travis Quinnelly" maintainer_url="https://github.com/tquizzle/"

RUN apk add --no-cache --update-cache git ffmpeg openssh-client && \
    npm install FallingSnow/h265ize --global 

ENV INPUT=/input
ENV OUTPUT=/output

WORKDIR /h265ize

ENTRYPOINT ["/usr/local/bin/h265ize", "/input", "-d", "/output"]