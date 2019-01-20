FROM xqweb/symfony-capistrano:7.2-apache

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get install -y optipng && \
    apt-get install -y jpegoptim && \
    apt-get install -y gifsicle && \
    apt-get install -y pngquant && \
    yarn global add svgo