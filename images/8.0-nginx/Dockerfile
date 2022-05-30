FROM enhavo/enhavo-app:8.0-fpm-latest

CMD ["/sbin/my_init"]

RUN apt-get -y install nginx && \
    rm -r -f /var/www/html && \
    mkdir -p /var/www/current/public

COPY /nginx.conf /etc/nginx/nginx.conf
COPY /default.conf /etc/nginx/sites-available/default
COPY /02_nginx.bash /etc/my_init.d/02_nginx.bash
COPY /index.php /var/www/current/public/index.php
COPY /td-agent/config.d/nginx.conf /etc/td-agent/config.d/nginx.conf

RUN chmod 744 /etc/my_init.d/02_nginx.bash

EXPOSE 80