FROM alpine:edge
RUN apk add --no-cache python3 python3-dev vim curl && \
    python3 -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip3 install --upgrade pip setuptools && \
    pip3 install ptpython && \
    rm -r /root/.cache && \
    curl https://raw.githubusercontent.com/Jackevansevo/Dotfiles/master/ptpython/config.py --create-dirs -o ~/.ptpython/config.py
CMD "/bin/sh"
