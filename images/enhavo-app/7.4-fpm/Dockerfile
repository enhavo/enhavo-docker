FROM enhavo/enhavo-app:base
CMD ["/sbin/my_init"]

RUN add-apt-repository -y ppa:ondrej/php && \
    apt update && \
    apt -y install php7.4-fpm && \
    apt -y install php7.4-apcu && \
    apt -y install php7.4-mysql && \
    apt -y install php7.4-gd && \
    apt -y install php7.4-curl && \
    apt -y install php7.4-mbstring && \
    apt -y install php7.4-dom && \
    apt -y install php7.4-intl && \
    apt -y install php7.4-zip && \
    apt -y install composer

COPY /www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY /01_php-fpm.bash /etc/my_init.d/01_php-fpm.bash

RUN chmod 744 /etc/my_init.d/01_php-fpm.bash