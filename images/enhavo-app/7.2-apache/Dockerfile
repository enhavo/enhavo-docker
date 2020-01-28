FROM enhavo/enhavo-app:7.2-fpm

CMD ["/sbin/my_init"]

RUN apt-get install -y apache2 && \
    rm -r -f /var/www/html && \
    mkdir -p /var/www/current/public && \
    a2enmod rewrite && \
    a2enmod headers && \
    a2enmod proxy && \
    a2enmod proxy_fcgi && \
    a2enmod expires

COPY /02_apache2.bash /etc/my_init.d/02_apache2.bash
COPY /000-default.conf /etc/apache2/sites-available/000-default.conf
COPY /index.php /var/www/current/public/index.php

RUN chmod 744 /etc/my_init.d/02_apache2.bash

VOLUME ["/var/www", "/etc/apache2"]

EXPOSE 80

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get install -y optipng && \
    apt-get install -y jpegoptim && \
    apt-get install -y gifsicle && \
    apt-get install -y pngquant && \
    yarn global add svgo