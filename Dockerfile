FROM xqweb/docker-symfony-capistrano:master

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get install -y php7.0-imagick && \
    apt-get install -y optipng && \
    apt-get install -y jpegoptim && \
    apt-get install -y gifsicle && \
    apt-get install -y pngquant && \
    apt-get install -y npm && \
    apt-get install -y nodejs && \
    npm install -g svgo && \
    ln -s /usr/bin/nodejs /usr/bin/node