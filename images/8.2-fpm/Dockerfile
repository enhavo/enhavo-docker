FROM enhavo/enhavo-app:base
CMD ["/sbin/my_init"]

RUN add-apt-repository -y ppa:ondrej/php

RUN apt-get update

RUN apt-get -y install php8.2-fpm
RUN apt-get -y install php8.2-apcu
RUN apt-get -y install php8.2-mysql
RUN apt-get -y install php8.2-gd
RUN apt-get -y install php8.2-curl
RUN apt-get -y install php8.2-mbstring
RUN apt-get -y install php8.2-opcache
RUN apt-get -y install php8.2-dom
RUN apt-get -y install php8.2-intl
RUN apt-get -y install php8.2-zip

RUN update-alternatives --set php /usr/bin/php8.2

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

RUN mkdir /var/log/php8.2-fpm && \
    touch /var/log/php8.2-fpm/slow.log

COPY /www.conf /etc/php/8.2/fpm/pool.d/www.conf
COPY /01_php-fpm.bash /etc/my_init.d/01_php-fpm.bash

RUN chmod 744 /etc/my_init.d/01_php-fpm.bash
