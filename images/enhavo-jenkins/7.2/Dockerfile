FROM enhavo/enhavo-jenkins:base
CMD ["/sbin/my_init"]

USER root

RUN add-apt-repository -y ppa:ondrej/php && \
    apt-get update && \
    apt-get -y install php7.2-fpm && \
    apt-get -y install php7.2-apcu && \
    apt-get -y install php7.2-mysql && \
    apt-get -y install php7.2-gd && \
    apt-get -y install php7.2-curl && \
    apt-get -y install php7.2-mbstring && \
    apt-get -y install php7.2-dom && \
    apt-get -y install php7.2-intl && \
    apt-get -y install php7.2-zip && \
    apt-get -y install composer

USER jenkins