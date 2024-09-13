FROM node:18.20-alpine

RUN apk --no-cache add \ 
        bash \
        curl \
        less \
        groff \
        jq \
        git \
        python3 \
        py3-pip && \
    python3 -m pip install --upgrade pip awscli s3cmd && \
    mkdir /root/.aws

COPY entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
