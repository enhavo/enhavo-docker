FROM enhavo/enhavo-app:base
CMD ["/sbin/my_init"]

RUN add-apt-repository -y ppa:ondrej/php && \
    apt-get update && \
    apt-get -y install php8.2-fpm && \
    apt-get -y install php8.2-apcu && \
    apt-get -y install php8.2-mysql && \
    apt-get -y install php8.2-gd && \
    apt-get -y install php8.2-curl && \
    apt-get -y install php8.2-mbstring && \
    apt-get -y install php8.2-opcache && \
    apt-get -y install php8.2-dom && \
    apt-get -y install php8.2-intl && \
    apt-get -y install php8.2-zip && \
    update-alternatives --set php /usr/bin/php8.2 && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    mkdir /var/log/php8.2-fpm && \
    touch /var/log/php8.2-fpm/slow.log

COPY /www.conf /etc/php/8.2/fpm/pool.d/www.conf
COPY /01_php-fpm.bash /etc/my_init.d/01_php-fpm.bash
#COPY /td-agent/config.d/fpm.conf /etc/td-agent/config.d/fpm.conf

RUN chmod 744 /etc/my_init.d/01_php-fpm.bash
