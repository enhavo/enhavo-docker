FROM enhavo/enhavo-app:base
CMD ["/sbin/my_init"]

RUN add-apt-repository -y ppa:ondrej/php && \
    apt update && \
    apt -y install php7.3-fpm && \
    apt -y install php7.3-apcu && \
    apt -y install php7.3-mysql && \
    apt -y install php7.3-gd && \
    apt -y install php7.3-curl && \
    apt -y install php7.3-mbstring && \
    apt -y install php7.3-dom && \
    apt -y install php7.3-intl && \
    apt -y install php7.3-zip && \
    apt -y install composer

COPY /www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY /01_php-fpm.bash /etc/my_init.d/01_php-fpm.bash

RUN chmod 744 /etc/my_init.d/01_php-fpm.bash