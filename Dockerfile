FROM node:18.20.4-alpine

RUN apk --no-cache add \
        bash \
        curl \
        less \
        groff \
        jq \
        git \
        python3 \
        py3-pip \
        && python3 -m venv /opt/venv \
        && . /opt/venv/bin/activate \
        && pip install --upgrade pip awscli s3cmd \
        && mkdir /root/.aws

ENV PATH="/opt/venv/bin:$PATH"
