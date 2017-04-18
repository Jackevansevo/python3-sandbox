FROM python:alpine
RUN apk add --no-cache vim curl && \
        pip install --upgrade pip && \
        pip install ipython && \
        curl https://raw.githubusercontent.com/Jackevansevo/Dotfiles/master/ipython_config.py --create-dirs -o ~/.ipython/profile_default/ipython_config.py
CMD "python"
