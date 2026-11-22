FROM enhavo/enhavo-app:base
CMD ["/sbin/my_init"]

RUN add-apt-repository -y ppa:ondrej/php

RUN apt-get update

RUN apt-get -y install php8.6-fpm
# php8.6-apcu is not yet packaged in ppa:ondrej/php and the latest APCu release
# (5.1.28) does not compile against PHP 8.6, so build it from an upstream commit
# that contains the PHP 8.6 fixes. Switch to the php8.6-apcu package once available.
ARG APCU_VERSION=fb2c942552a3f5dab7f4dea4afb5cf0831222c57
RUN apt-get -y install php8.6-dev && \
    curl -fsSL https://github.com/krakjoe/apcu/archive/${APCU_VERSION}.tar.gz | tar -xz -C /tmp && \
    cd /tmp/apcu-${APCU_VERSION} && \
    phpize8.6 && \
    ./configure --with-php-config=/usr/bin/php-config8.6 && \
    make -j"$(nproc)" && \
    make install && \
    cd / && rm -rf /tmp/apcu-${APCU_VERSION} && \
    echo "extension=apcu.so" > /etc/php/8.6/mods-available/apcu.ini && \
    phpenmod -v 8.6 apcu && \
    apt-get -y purge php8.6-dev && \
    apt-get -y autoremove
RUN apt-get -y install php8.6-mysql
RUN apt-get -y install php8.6-gd
RUN apt-get -y install php8.6-curl
RUN apt-get -y install php8.6-mbstring
RUN apt-get -y install php8.6-dom
RUN apt-get -y install php8.6-intl
RUN apt-get -y install php8.6-zip

RUN update-alternatives --set php /usr/bin/php8.6

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

RUN mkdir /var/log/php8.6-fpm && \
    touch /var/log/php8.6-fpm/slow.log

COPY /www.conf /etc/php/8.6/fpm/pool.d/www.conf
COPY /01_php-fpm.bash /etc/my_init.d/01_php-fpm.bash

RUN chmod 744 /etc/my_init.d/01_php-fpm.bash
