FROM python:alpine
RUN apk add --no-cache vim curl && \
        pip install --upgrade pip && \
        pip install ptpython && \
        curl https://raw.githubusercontent.com/Jackevansevo/Dotfiles/master/ptpython/config.py --create-dirs -o ~/.ptpython/config.py
CMD "/bin/sh"
