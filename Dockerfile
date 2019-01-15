FROM alpine:3.8

LABEL maintainer="Yi Ai <yi.ai@neaminational.org.au>"
LABEL Description="CircleCi AWS Cli image"

ENV AWS_CLI_VERSION 1.16.89

RUN apk add --update  \
    bash \
    python3 \
    python3-dev \
    &&  pip3 install --upgrade --no-cache-dir pip

RUN pip install awscli==${AWS_CLI_VERSION} && \
rm -rf /tmp/* /var/tmp/* /var/cache/apk/*
