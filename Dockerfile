FROM python:alpine
RUN apk add --no-cache vim && \
        pip install --upgrade pip && \
        pip install ipython
CMD "python"
