FROM enhavo/enhavo-app:base
CMD ["/sbin/my_init"]

RUN add-apt-repository -y ppa:ondrej/php && \
    apt-get update && \
    apt-get -y install php7.2-fpm && \
    apt-get -y install php7.2-apcu && \
    apt-get -y install php7.2-mysql && \
    apt-get -y install php7.2-gd && \
    apt-get -y install php7.2-curl && \
    apt-get -y install php7.2-mbstring && \
    apt-get -y install php7.2-opcache && \
    apt-get -y install php7.2-dom && \
    apt-get -y install php7.2-intl && \
    apt-get -y install php7.2-zip && \
    apt-get -y install composer && \
    mkdir /var/log/php7.2-fpm && \
    touch /var/log/php7.2-fpm/slow.log

COPY /www.conf /etc/php/7.2/fpm/pool.d/www.conf
COPY /01_php-fpm.bash /etc/my_init.d/01_php-fpm.bash

RUN chmod 744 /etc/my_init.d/01_php-fpm.bash