FROM alpine

VOLUME ["/project", "/root/.ssh"]

WORKDIR "/project"

RUN apk add --no-cache python3 openssh-client \
    && python3 -m ensurepip \
    && rm -r /usr/lib/python*/ensurepip \
    && pip3 install --upgrade pip setuptools \
    && ln -sf /usr/bin/python3 /usr/bin/python \
    && apk add --no-cache --virtual .build-deps \
        g++ \
        make \
        python3-dev \
        libffi-dev \
        openssl-dev \
    && pip install ansible==2.7.1 \
    && apk del .build-deps \
    && rm -r /root/.cache