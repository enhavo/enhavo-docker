FROM enhavo/enhavo-app:base
CMD ["/sbin/my_init"]

RUN add-apt-repository -y ppa:ondrej/php && \
    apt-get update && \
    apt-get -y install php7.4-fpm && \
    apt-get -y install php7.4-apcu && \
    apt-get -y install php7.4-mysql && \
    apt-get -y install php7.4-gd && \
    apt-get -y install php7.4-curl && \
    apt-get -y install php7.4-mbstring && \
    apt-get -y install php7.4-opcache && \
    apt-get -y install php7.4-dom && \
    apt-get -y install php7.4-intl && \
    apt-get -y install php7.4-zip && \
    update-alternatives --set php /usr/bin/php7.4 && \
    php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer && \
    mkdir /var/log/php7.4-fpm && \
    touch /var/log/php7.4-fpm/slow.log

COPY /www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY /01_php-fpm.bash /etc/my_init.d/01_php-fpm.bash
#COPY /td-agent/config.d/fpm.conf /etc/td-agent/config.d/fpm.conf

RUN chmod 744 /etc/my_init.d/01_php-fpm.bash
