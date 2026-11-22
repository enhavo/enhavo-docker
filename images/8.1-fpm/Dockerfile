FROM enhavo/enhavo-app:base
CMD ["/sbin/my_init"]

RUN add-apt-repository -y ppa:ondrej/php

RUN apt-get update

RUN apt-get -y install php8.1-fpm
RUN apt-get -y install php8.1-apcu
RUN apt-get -y install php8.1-mysql
RUN apt-get -y install php8.1-gd
RUN apt-get -y install php8.1-curl
RUN apt-get -y install php8.1-mbstring
RUN apt-get -y install php8.1-opcache
RUN apt-get -y install php8.1-dom
RUN apt-get -y install php8.1-intl
RUN apt-get -y install php8.1-zip

RUN update-alternatives --set php /usr/bin/php8.1

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

RUN mkdir /var/log/php8.1-fpm && \
    touch /var/log/php8.1-fpm/slow.log

COPY /www.conf /etc/php/8.1/fpm/pool.d/www.conf
COPY /01_php-fpm.bash /etc/my_init.d/01_php-fpm.bash

RUN chmod 744 /etc/my_init.d/01_php-fpm.bash
