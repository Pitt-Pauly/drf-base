FROM alpine:3.6

ENV PYTHONUNBUFFERED 1

RUN apk add --no-cache python3 python3-dev gcc==6.3.0-r4 musl-dev==1.1.16-r14 postgresql-dev==9.6.6-r0 postgresql-client==9.6.6-r0 bash==4.3.48-r1 py-psycopg2==2.7.4-r0&& \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    if [ ! -e /usr/bin/pip ]; then ln -s pip3 /usr/bin/pip ; fi && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache