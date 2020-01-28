FROM enhavo/enhavo-app:base
CMD ["/sbin/my_init"]

RUN add-apt-repository -y ppa:ondrej/php && \
    apt update && \
    apt -y install php7.2-fpm && \
    apt -y install php7.2-apcu && \
    apt -y install php7.2-mysql && \
    apt -y install php7.2-gd && \
    apt -y install php7.2-curl && \
    apt -y install php7.2-mbstring && \
    apt -y install php7.2-dom && \
    apt -y install php7.2-intl && \
    apt -y install php7.2-zip && \
    apt -y install composer

COPY /www.conf /etc/php/7.2/fpm/pool.d/www.conf
COPY /01_php-fpm.bash /etc/my_init.d/01_php-fpm.bash

RUN chmod 744 /etc/my_init.d/01_php-fpm.bash