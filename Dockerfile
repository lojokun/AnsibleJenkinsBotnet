FROM alpine:latest

RUN apk add --update \
    coreutils \
    wget \
    python3 \
    ansible