FROM enhavo/enhavo-app:base
CMD ["/sbin/my_init"]

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    add-apt-repository -y ppa:ondrej/php && \
    apt-get update && \
    apt-get install -y yarn && \
    apt-get install -y php7.4-fpm && \
    apt-get install -y php7.4-apcu && \
    apt-get install -y php7.4-mysql && \
    apt-get install -y php7.4-gd && \
    apt-get install -y php7.4-curl && \
    apt-get install -y php7.4-mbstring && \
    apt-get install -y php7.4-dom && \
    apt-get install -y php7.4-intl && \
    apt-get install -y php7.4-zip && \
    apt-get install -y yarn && \
    apt-get install -y git && \
    apt-get install -y sudo && \
    apt-get install -y composer

COPY /www.conf /etc/php/7.4/fpm/pool.d/www.conf
COPY /01_php-fpm.bash /etc/my_init.d/01_php-fpm.bash

RUN chmod 744 /etc/my_init.d/01_php-fpm.bash