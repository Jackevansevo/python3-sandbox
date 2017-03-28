FROM alpine:edge
RUN apk add --no-cache python3 python3-dev vim && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install ipython && \
    rm -r /root/.cache
CMD "/bin/sh"
