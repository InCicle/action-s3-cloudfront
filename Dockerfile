FROM node:20.17

RUN apk --no-cache add \ 
        bash \
        curl \
        less \
        groff \
        jq \
        git \
        python3 \
        py3-pip \
        py-pip && \
        pip install --upgrade pip awscli s3cmd && \
        mkdir /root/.aws

COPY entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
