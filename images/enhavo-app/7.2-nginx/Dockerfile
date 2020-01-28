FROM enhavo/enhavo-app:7.2-fpm

CMD ["/sbin/my_init"]

RUN apt-get install -y nginx && \
    rm -r -f /var/www/html && \
    mkdir -p /var/www/current/public

COPY /nginx.conf /etc/nginx/nginx.conf
COPY /default.conf /etc/nginx/sites-available/default
COPY /02_nginx.bash /etc/my_init.d/02_nginx.bash
COPY /index.php /var/www/current/public/index.php

RUN chmod 744 /etc/my_init.d/02_nginx.bash && \
    apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get install -y optipng && \
    apt-get install -y jpegoptim && \
    apt-get install -y gifsicle && \
    apt-get install -y pngquant && \
    yarn global add svgo

VOLUME ["/var/www", "/etc/nginx"]

EXPOSE 80