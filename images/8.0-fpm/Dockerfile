FROM enhavo/enhavo-app:base
CMD ["/sbin/my_init"]

RUN add-apt-repository -y ppa:ondrej/php && \
    apt-get update && \
    apt-get -y install php8.0-fpm && \
    apt-get -y install php8.0-apcu && \
    apt-get -y install php8.0-mysql && \
    apt-get -y install php8.0-gd && \
    apt-get -y install php8.0-curl && \
    apt-get -y install php8.0-mbstring && \
    apt-get -y install php8.0-opcache && \
    apt-get -y install php8.0-dom && \
    apt-get -y install php8.0-intl && \
    apt-get -y install php8.0-zip && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    mkdir /var/log/php8.0-fpm && \
    touch /var/log/php8.0-fpm/slow.log

COPY /www.conf /etc/php/8.0/fpm/pool.d/www.conf
COPY /01_php-fpm.bash /etc/my_init.d/01_php-fpm.bash

RUN chmod 744 /etc/my_init.d/01_php-fpm.bash
