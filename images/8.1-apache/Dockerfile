FROM enhavo/enhavo-app:8.1-fpm-latest

CMD ["/sbin/my_init"]

RUN add-apt-repository -y ppa:ondrej/apache2 && \
    apt-get -y update  && \
    apt-get -y install apache2 && \
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
COPY /td-agent/config.d/apache.conf /etc/td-agent/config.d/apache.conf

RUN chmod 744 /etc/my_init.d/02_apache2.bash

EXPOSE 80