FROM alpine:3.8

LABEL maintainer="Infinity Works"

RUN apk add --update --no-cache \
    python \
    py-pip \
    groff \
    ca-certificates && \
    pip install --upgrade awscli && \
    apk -v --purge del py-pip
